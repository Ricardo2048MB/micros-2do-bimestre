#line 1 "D:/Programación/C/Microprocesadores-2do-bimestre/Proyectos mikroC/Secuencias/LasSecuencias.c"
void Kitt(void);
void Karr(void);
void derecha(void);
void izquierda(void);

void main(){
 TRISA = 0xff;
 TRISB = 0x00;
 do{
 if(PORTA == 0x00){
 Kitt();
 }
 if(PORTA == 0x01){
 Karr();
 }
 }while(1);
}

void Karr(void){
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
}

void Kitt(void){
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
