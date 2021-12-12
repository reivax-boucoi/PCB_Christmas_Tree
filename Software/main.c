#include <avr/io.h>
#include <util/delay.h>
#include<avr/interrupt.h>
#include <avr/power.h>

#define FADE 0
#define PIXIE 1
#define DEBUG 2

#define TOUCH_FLAG 0
//#define ADC_FLAG 1
#define DEBUG_FLAG 2
#define DIR_FLAG 2

volatile unsigned int cnt=1;
uint8_t level[12];
//uint8_t level[12] = {1, 1, 3, 7, 15, 31, 63, 31, 15, 7, 3, 1 }; //Brightness levels of each led.
//uint8_t order[12] = {0,11,9,4,2,10,7,6,3,1,8,5};//Reverse
uint8_t order[12] = {4,7,1,0,6,8,11,2,5,9,10,3};//Right
uint8_t blinkMode = FADE;
uint8_t pstate=0;

static	long	randx;
static	char	randf;

void srand(unsigned x){
	randx = x;
	randf = 1;
}

int rand(void){
	if(!randf)srand(1);
	return((int)((randx = randx*1103515245L + 12345)>>16) & 077777);
}



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
    
    /*
    ADMUX=(1<<MUX3)|(1<<MUX2);
    ADCSRA |= (1<<ADEN) | (1<<ADIE);
    */
    
    sei();                              //Enable interrupts
    while(1){
        
        if((PINB&(1<<PINB4)) && (pstate&(1<<TOUCH_FLAG))){
            pstate&=~(1<<TOUCH_FLAG);      
            blinkMode++;
            pstate|=(1<<DIR_FLAG);            
            if(blinkMode>2)blinkMode=0;
        }else if(!(PINB&(1<<PINB4)) && !(pstate&(1<<TOUCH_FLAG))){
            pstate|=(1<<TOUCH_FLAG);            
        }
        if(pstate&(1<<DEBUG_FLAG)){
            //pstate&=~(1<<DEBUG_FLAG);  
        }  
/*
        if(pstate&(1<<ADC_FLAG)){
            pstate&=~(1<<ADC_FLAG);   
            ADCSRA |= (1<<ADSC);
        }*/
    }
    return 0;
}     
/*
ISR(ADC_vect){
    uint16_t res=ADCL;
    res|=(ADCH<<8);
    blinkMode=2753/res-3;   //Vcc=1024*1.1/ADC
}*/
volatile uint8_t speed=4;
volatile uint8_t duty=3;
volatile uint8_t index=0;

ISR(TIM0_COMPA_vect) {
    if(pstate&(1<<DIR_FLAG)){
        cnt++;
    }else{
        cnt--;
    }
    switch(blinkMode){
        case(PIXIE):
            if(cnt==duty){
                level[index]=63;
            }else if(cnt>=speed){
                cnt=0;
                level[index]=0; 
                index=rand()/2730;
            }
        break;
        case(DEBUG):
            if(cnt>63){
                pstate&=~(1<<DIR_FLAG);
                level[order[index]]=0; 
                index--;
                if(index==255)index=11;
            }else if(cnt==0){
                pstate|=(1<<DIR_FLAG);
            }
            level[order[index]]=cnt; 
            
            break;
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
