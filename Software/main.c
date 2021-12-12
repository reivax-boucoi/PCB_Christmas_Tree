#include <avr/io.h>
#include <util/delay.h>
#include<avr/interrupt.h>
#include <avr/power.h>

#define ALL 0
#define PIXIE 1
#define SCROLL 2
#define DEBUG 3
#define NB_MODES 4

#define TOUCH_FLAG 0
//#define ADC_FLAG 1
#define DEBUG_FLAG 2
#define DIR_FLAG 2

volatile uint8_t cnt=1;
uint8_t level[12];
//uint8_t level[12] = {1, 1, 3, 7, 15, 31, 63, 31, 15, 7, 3, 1 }; //Brightness levels of each led.
//uint8_t order[12] = {0,11,9,4,2,10,7,6,3,1,8,5};//Reverse
const uint8_t order[12] = {3,8,2,7,9,4,5,1,0,6,11,10};//Right
volatile uint8_t blinkMode = ALL;
volatile uint8_t pstate=0;

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

volatile uint8_t brightness=5;
volatile uint8_t speed=63;
volatile uint8_t index=1;


int main(void){
      
    //Timer1 for LED charlieplexing
    TCCR1=(1<<CTC1)|(1<<CS12);//|(1<<CS10)|(1<<CS11);        //Divide clock by 1, was 2<<CS10
    GTCCR=0;                          //No PWM
    OCR1A=0;                          //No PWM
    OCR1C=250-1;                      //16kHz for good POV (16k/64/12=20Hz)
    TIMSK|=(1<<OCIE1A);                 //Compare Match A interrupt
    /*
    TCCR0A=(1<<WGM01);
    OCR0A=255;
    TCCR0B=(1<<CS02)|(1<<CS00);
    TIMSK|=(1<<OCIE0A);
    */
    /*
    ADMUX=(1<<MUX3)|(1<<MUX2);
    ADCSRA |= (1<<ADEN) | (1<<ADIE);
    */
    
    sei();                              //Enable interrupts
    while(1){
        
        if((PINB&(1<<PINB4)) && (pstate&(1<<TOUCH_FLAG))){
            pstate&=~(1<<TOUCH_FLAG);   
            blinkMode++;
            if(blinkMode>=NB_MODES)blinkMode=0;
            brightness=0;
            pstate|=(1<<DIR_FLAG);
            index=0;
            for(uint8_t i=0;i<12;i++){
                level[i]=0;
            }
                       
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

ISR(TIM0_COMPA_vect) {
    
}


ISR(TIM1_COMPA_vect) {
  static uint8_t first, ramp, column, bits, colbit;
  ramp = (ramp+1) & 0x07;
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
    
    cnt++;
    if(cnt==speed){
        cnt=0;
    switch(blinkMode){
        case SCROLL:
            if(pstate&(1<<DIR_FLAG)){
                level[order[index]]=brightness++;
                if(brightness>7){
                    brightness=0;
                    index++;
                    if(index>11){
                        index=11;
                        brightness=7;
                        pstate&=~(1<<DIR_FLAG);
                    }
                }
            }else{
                level[order[index]]=brightness--;
                if(brightness==0){
                    brightness=7;
                    index--;
                    if(index==0){
                        index=0;
                        brightness=0;
                        pstate|=(1<<DIR_FLAG);
                    }
                }
            }
            
            break;
        case ALL:
            level[order[index]]=brightness;
            brightness=(brightness+1)&0x07;
            if(brightness==0){
                //level[order[index]]=0;
                index++;
                if(index>11)index=0;
            }
            break;
        case PIXIE:
        case DEBUG:
        default:
            break;
        }
    }
}
