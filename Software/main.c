#include <avr/io.h>
#include <util/delay.h>
#include<avr/interrupt.h>
#include <avr/power.h>


volatile unsigned int cnt=0;
uint8_t level[12];
uint8_t level[12] = {1, 1, 3, 7, 15, 31, 63, 31, 15, 7, 3, 1 };
int main(void){
   power_all_disable();
   power_timer1_enable();
    
    /*for (uint8_t i=0;i<12;i++){
        level[i]=63;
    }*/
    
      // Set up Timer/Counter1 to multiplex the LEDs
    TCCR1 = 1<<CTC1 | 2<<CS10;          // Divide by 2
    GTCCR = 0;                          // No PWM
    OCR1A = 0;
    OCR1C = 250-1;                      // 16kHz
    TIMSK = TIMSK | 1<<OCIE1A;          // Compare Match A interrupt
   sei();
    while(1){
       /*for (uint8_t i=0;i<12;i++){
        level[i]=63;
        }
        _delay_ms(1500);
        
       for (uint8_t i=0;i<12;i++){
        level[i]=0;
        }
        _delay_ms(1500);*/
        
         uint8_t temp = level[11];
        for (int i=11; i>0; i--) level[i] = level[i-1];
        level[0] = temp;
         _delay_ms(50);
    }
    return 0;
}     

ISR(TIM1_COMPA_vect) {
  static uint8_t first, ramp, column, bits, colbit;
  ramp = (ramp+1) & 0x3F;             // Count from 0 to 63
  if (ramp == 0) {
    bits = 0x07;                      // All on
    column = (column + 1) & 0x03;
    first = column * 3;               // First LED in this column
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
