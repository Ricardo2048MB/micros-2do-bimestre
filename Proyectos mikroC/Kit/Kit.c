void derecha(void);//ilumina leds ltr
void izquierda(void);//ilumina leds rtl
void main() {


   TRISB = 0X00;//PORTB COMO SALIDA

   //BUCLE
   do{
      derecha();
      izquierda();
   }while(1);
   //infinito

}  

void derecha(void){
      PORTB = 0x80;
      delay_ms(900);
      PORTB = 0x40;
      delay_ms(900);
      PORTB = 0x20;
      delay_ms(900);
      PORTB = 0x10;
      delay_ms(900);
      PORTB = 0x08;
      delay_ms(900);
      PORTB = 0x04;
      delay_ms(900);
      PORTB = 0x02;
      delay_ms(900);
      PORTB = 0x01;
      delay_ms(900);
   }

   void izquierda(void){
      PORTB = 0x02;
      delay_ms(900);
      PORTB = 0x04;
      delay_ms(900);
      PORTB = 0x08;
      delay_ms(900);
      PORTB = 0x10;
      delay_ms(900);
      PORTB = 0x20;
      delay_ms(900);
      PORTB = 0x40;
      delay_ms(900);
   }

/*
   La tabla de secuencias ayuda a ver cómo se van moviendo los bits en la secuencia.
*/