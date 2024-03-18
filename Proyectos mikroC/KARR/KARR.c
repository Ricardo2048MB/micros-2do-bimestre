void main() {
     //Aquí va la lógica global del programa
     TRISB = 0x00;//PORTB como salida
     do{
          PORTB = 0x81;
          delay_ms(900);
          PORTB = 0x42;
          delay_ms(900);
          PORTB = 0x24;
          delay_ms(900);
          PORTB = 0x18;
          delay_ms(900);
          PORTB = 0x24;
          delay_ms(900);
          PORTB = 0x42;
     }while(1);
}