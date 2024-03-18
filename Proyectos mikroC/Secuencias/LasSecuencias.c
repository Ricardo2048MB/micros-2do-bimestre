void Kitt(void);
void Karr(void);
void derecha(void);//ilumina leds ltr
void izquierda(void);//ilumina leds rtl

void main(){
    TRISA = 0xff;//PORTA como entrada
    TRISB = 0x00;//portb como salida
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
