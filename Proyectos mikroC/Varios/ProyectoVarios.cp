#line 1 "D:/Programación/C/Microprocesadores-2do-bimestre/Proyectos mikroC/Varios/ProyectoVarios.c"
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
 KARR();
 break;
 case 0x02:
 Gusanito();
 break;
 case 0x03:
 PORTA=0xF0;
 delay_ms(1000);
 PORTA=0x0F;
 delay_ms(1000);
 break;
 case 0x04:
 PORTA=0xFF;
 break;
 case 0x05:
 PORTA=0xcc;
 delay_ms(1000);
 PORTA=0x33;
 delay_ms(1000);
 break;
 default:
 PORTA=0x00;
 }
 }while(1);
}

void gusanito(void){

 PORTB = 0x20;
 delay_ms(600);
 PORTB = 0x30;
 delay_ms(600);
 PORTB = 0x10;
 delay_ms(600);
 PORTB = 0x18;
 delay_ms(600);
 PORTB = 0x08;
 delay_ms(600);
 PORTB = 0x0c;
 delay_ms(600);
}

void KITT(void){

 PORTB = 0x80;
 delay_ms(600);
 PORTB = 0x40;
 delay_ms(600);
 PORTB = 0x20;
 delay_ms(600);
 PORTB = 0x10;
 delay_ms(600);
 PORTB = 0x08;
 delay_ms(600);
 PORTB = 0x04;
 delay_ms(600);
 PORTB = 0x02;
 delay_ms(600);
 PORTB = 0x01;
 delay_ms(600);

 PORTB = 0x02;
 delay_ms(600);
 PORTB = 0x04;
 delay_ms(600);
 PORTB = 0x08;
 delay_ms(600);
 PORTB = 0x10;
 delay_ms(600);
 PORTB = 0x20;
 delay_ms(600);
 PORTB = 0x40;
 delay_ms(600);
}

void KARR(void){

 PORTB = 0x81;
 delay_ms(600);
 PORTB = 0x42;
 delay_ms(600);
 PORTB = 0x24;
 delay_ms(600);
 PORTB = 0x18;
 delay_ms(600);
 PORTB = 0x24;
 delay_ms(600);
 PORTB = 0x42;
}
