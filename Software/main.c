#include <avr/io.h>
#include <util/delay.h>
#include<avr/interrupt.h>
#include <avr/power.h>

#define FADE 0
#define PIXIE 1
#define DEBUG 2

volatile unsigned int cnt=0;
uint8_t level[12];
uint8_t level[12] = {1, 1, 3, 7, 15, 31, 63, 31, 15, 7, 3, 1 }; //Brightness levels of each led.
uint8_t order[12] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};     //Map from left to right from top (0) to bottom (11)
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
    
    sei();                              //Enable interrupts
    while(1){
        
        
       /*for (uint8_t i=0;i<12;i++){
        level[i]=63;
        }
        _delay_ms(1500);
        */
       
        for (uint8_t i=0;i<12;i++){
            level[i]=0;
        }
        level[blinkMode]=(cnt>20)?63:0;
        _delay_ms(10);
        
        uint8_t state=PINB&(1<<PINB4);
        if(state!= pstate){
            pstate=state;
            if(state){
                blinkMode++;
                if(blinkMode>2)blinkMode=0;
            }
        }
        
        /*
         uint8_t temp = level[11];
        for (int i=11; i>0; i--) level[i] = level[i-1];
        level[0] = temp;
         _delay_ms(100);*/
    }
    return 0;
}     


ISR(TIM0_COMPA_vect) {
    cnt++;
    if(cnt>21){
        cnt=0;
        blinkMode++;
        if(blinkMode>11)blinkMode=0;
    }
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
