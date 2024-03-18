#line 1 "D:/Programación/C/Microprocesadores-2do-bimestre/Proyectos mikroC/Kit/Kit.c"
void derecha(void);
void izquierda(void);
void main() {


 TRISB = 0X00;


 do{
 derecha();
 izquierda();
 }while(1);


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
