#line 1 "D:/Programación/C o Cpp/C/microprocesadores-2024-unitec/Proyectos mikroC/VariosTarea/ProyectoVariosTarea.c"
void Gusanito(void);
void KITT(void);
void KARR(void);

void main() {

 TRISA=0xFF;
 TRISB=0x00;

 do{
 switch(PORTA){

 case 0x00:
 KITT();
 break;
 case 0x01:
 Gusanito();
 break;
 case 0x02:
 PORTB=0xF0;
 delay_ms(350);
 PORTB=0x0F;
 delay_ms(350);
 break;
 case 0x03:
 PORTB = 0X00;
 break;
 case 0x04:
 PORTB=0x0A;
 break;
 case 0x05:
 PORTB=0xF0;
 break;
 default:
 PORTB=0xFF;
 delay_ms(350);
 PORTB=0x00;
 delay_ms(350);
 }
 }while(1);
}

void gusanito(void){

 PORTB = 0x80;
 delay_ms(800);
 PORTB = 0xC0;
 delay_ms(800);
 PORTB = 0x40;
 delay_ms(800);
 PORTB = 0x60;
 delay_ms(800);
 PORTB = 0x20;
 delay_ms(800);
 PORTB = 0x30;
 delay_ms(800);
 PORTB = 0x10;
 delay_ms(800);
 PORTB = 0x18;
 delay_ms(800);
 PORTB = 0x08;
 delay_ms(800);
 PORTB = 0x0c;
 delay_ms(800);
 PORTB = 0x04;
 delay_ms(800);
 PORTB = 0x06;
 delay_ms(800);
 PORTB = 0x02;
 delay_ms(800);
 PORTB = 0x03;
 delay_ms(800);
 PORTB = 0x01;
 delay_ms(800);
}

void KITT(void){

 PORTB = 0x80;
 delay_ms(60);
 PORTB = 0x40;
 delay_ms(60);
 PORTB = 0x20;
 delay_ms(60);
 PORTB = 0x10;
 delay_ms(60);
 PORTB = 0x08;
 delay_ms(60);
 PORTB = 0x04;
 delay_ms(60);
 PORTB = 0x02;
 delay_ms(60);
 PORTB = 0x01;
 delay_ms(60);

 PORTB = 0x02;
 delay_ms(60);
 PORTB = 0x04;
 delay_ms(60);
 PORTB = 0x08;
 delay_ms(60);
 PORTB = 0x10;
 delay_ms(60);
 PORTB = 0x20;
 delay_ms(60);
 PORTB = 0x40;
 delay_ms(60);
}
