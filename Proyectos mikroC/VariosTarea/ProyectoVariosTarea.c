void Gusanito(void);
void KITT(void);
void KARR(void);

void main() {
     //Código principal del programa. Punto de entrada.
     TRISA=0xFF;//Significa entradas porque está todo a 1's
     TRISB=0x00;//Cuando es ceros significa salida

     do{
          switch(PORTA){
               //
               case 0x00:
                    KITT();
                    break;
               case 0x01:
                    Gusanito();
                    break;
               case 0x02://mitad del puerto encendido, mitad apagado, alternando como baliza policial
                    PORTB=0xF0;
                    delay_ms(350);
                    PORTB=0x0F;
                    delay_ms(350);
                    break;
               case 0x03: //puerto apagado
                    PORTB = 0X00;
                    break;
               case 0x04://PORTB = 0x0A
                    PORTB=0x0A;
                    break;
               case 0x05://PORTB = 0xF0
                    PORTB=0xF0;
                    break;
               default://cualquier otra combinación de entrada encenderá y apagará alternadamente todo el puerto
                    PORTB=0xFF;
                    delay_ms(350);
                    PORTB=0x00;
                    delay_ms(350);
          }
     }while(1);
}

void gusanito(void){
    //Gusanito
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
    //derecha
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
    //izquierda
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