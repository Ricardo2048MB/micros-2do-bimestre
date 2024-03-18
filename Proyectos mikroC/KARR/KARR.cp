#line 1 "D:/Programación/C/Microprocesadores-2do-bimestre/Proyectos mikroC/KARR/KARR.c"
void main() {

 TRISB = 0x00;
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
