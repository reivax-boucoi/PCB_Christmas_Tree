#include <avr/io.h>
#include <util/delay.h>
#include<avr/interrupt.h>
#include <avr/power.h>

#define FADE 0
#define PIXIE 1
#define DEBUG 2

#define TOUCH_FLAG 0
#define ADC_FLAG 1
#define DEBUG_FLAG 2

volatile unsigned int cnt=0;
uint8_t level[12];
uint8_t level[12] = {1, 1, 3, 7, 15, 31, 63, 31, 15, 7, 3, 1 }; //Brightness levels of each led.
uint8_t order[12] = {6,1,9,2,3,0,4,7,8,11,10,5};//5, 1, 3, 4, 6, 11, 0, 7, 8, 2, 10, 9};     //Map from left to right from top (0) to bottom (11)
uint8_t blinkMode = FADE;
uint8_t pstate=0;
int main(void){
      
    //Timer1 for LED charlieplexing
    TCCR1=(1<<CTC1)|(1<<CS10);        //Divide clock by 1, was 2<<CS10
    GTCCR=0;                          //No PWM
    OCR1A=0;                          //No PWM
    OCR1C=250-1;                      //16kHz for good POV (16k/64/12=20Hz)
    TIMSK|=(1<<OCIE1A);                 //Compare Match A interrupt
    
    TCCR0A=(1<<WGM01);
    OCR0A=255;
    TCCR0B=(1<<CS02)|(1<<CS00);
    TIMSK|=(1<<OCIE0A);
    
    
    ADMUX=(1<<MUX3)|(1<<MUX2);
    ADCSRA |= (1<<ADEN) | (1<<ADIE);
    
    sei();                              //Enable interrupts
    while(1){
        
        if((PINB&(1<<PINB4)) && (pstate&(1<<TOUCH_FLAG))){
            pstate&=~(1<<TOUCH_FLAG);
            blinkMode++;
            if(blinkMode>11)blinkMode=0;
        }else if(!(PINB&(1<<PINB4)) && !(pstate&(1<<TOUCH_FLAG))){
            pstate|=(1<<TOUCH_FLAG);            
        }

        if(pstate&(1<<ADC_FLAG)){
            pstate&=~(1<<ADC_FLAG);   
            ADCSRA |= (1<<ADSC);
        }
    }
    return 0;
}     

ISR(ADC_vect){
    uint16_t res=ADCL;
    res|=(ADCH<<8);
    blinkMode=2753/res-3;   //Vcc=1024*1.1/ADC
}

ISR(TIM0_COMPA_vect) {
    cnt++;
    if(cnt>11){
        cnt=0;
        pstate^=(1<<DEBUG_FLAG);
        if(pstate&(1<<DEBUG_FLAG))pstate|=(1<<ADC_FLAG);   
    }
    level[order[cnt]]=(cnt<=blinkMode)?63:0;
    
}


ISR(TIM1_COMPA_vect) {
  static uint8_t first, ramp, column, bits, colbit;
  ramp = (ramp+1) & 0x3F;
  if (ramp == 0) {
    bits = 0x07;
    column = (column + 1) & 0x03;
    first = column * 3;
    colbit = 1<<column;
  }
  if (level[first] == ramp) bits = bits & 0x06;
  if (level[first+1] == ramp) bits = bits & 0x05;
  if (level[first+2] == ramp) bits = bits & 0x03;
  uint8_t mask = colbit - 1;
  uint8_t outputs = (bits & mask) | (bits & ~mask)<<1;
  DDRB = (DDRB & 0xF0) | outputs | colbit;
  PORTB = (PORTB & 0xF0) | outputs;
}
