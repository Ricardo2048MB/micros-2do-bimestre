
_main:

;LasSecuencias.c,6 :: 		void main(){
;LasSecuencias.c,7 :: 		TRISA = 0xff;//PORTA como entrada
	MOVLW      255
	MOVWF      TRISA+0
;LasSecuencias.c,8 :: 		TRISB = 0x00;//portb como salida
	CLRF       TRISB+0
;LasSecuencias.c,9 :: 		do{
L_main0:
;LasSecuencias.c,10 :: 		if(PORTA == 0x00){
	MOVF       PORTA+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;LasSecuencias.c,11 :: 		Kitt();
	CALL       _Kitt+0
;LasSecuencias.c,12 :: 		}
L_main3:
;LasSecuencias.c,13 :: 		if(PORTA == 0x01){
	MOVF       PORTA+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;LasSecuencias.c,14 :: 		Karr();
	CALL       _Karr+0
;LasSecuencias.c,15 :: 		}
L_main4:
;LasSecuencias.c,16 :: 		}while(1);
	GOTO       L_main0
;LasSecuencias.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_Karr:

;LasSecuencias.c,19 :: 		void Karr(void){
;LasSecuencias.c,20 :: 		PORTB = 0x81;
	MOVLW      129
	MOVWF      PORTB+0
;LasSecuencias.c,21 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_Karr5:
	DECFSZ     R13+0, 1
	GOTO       L_Karr5
	DECFSZ     R12+0, 1
	GOTO       L_Karr5
	DECFSZ     R11+0, 1
	GOTO       L_Karr5
	NOP
	NOP
;LasSecuencias.c,22 :: 		PORTB = 0x42;
	MOVLW      66
	MOVWF      PORTB+0
;LasSecuencias.c,23 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_Karr6:
	DECFSZ     R13+0, 1
	GOTO       L_Karr6
	DECFSZ     R12+0, 1
	GOTO       L_Karr6
	DECFSZ     R11+0, 1
	GOTO       L_Karr6
	NOP
	NOP
;LasSecuencias.c,24 :: 		PORTB = 0x24;
	MOVLW      36
	MOVWF      PORTB+0
;LasSecuencias.c,25 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_Karr7:
	DECFSZ     R13+0, 1
	GOTO       L_Karr7
	DECFSZ     R12+0, 1
	GOTO       L_Karr7
	DECFSZ     R11+0, 1
	GOTO       L_Karr7
	NOP
	NOP
;LasSecuencias.c,26 :: 		PORTB = 0x18;
	MOVLW      24
	MOVWF      PORTB+0
;LasSecuencias.c,27 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_Karr8:
	DECFSZ     R13+0, 1
	GOTO       L_Karr8
	DECFSZ     R12+0, 1
	GOTO       L_Karr8
	DECFSZ     R11+0, 1
	GOTO       L_Karr8
	NOP
	NOP
;LasSecuencias.c,28 :: 		PORTB = 0x24;
	MOVLW      36
	MOVWF      PORTB+0
;LasSecuencias.c,29 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_Karr9:
	DECFSZ     R13+0, 1
	GOTO       L_Karr9
	DECFSZ     R12+0, 1
	GOTO       L_Karr9
	DECFSZ     R11+0, 1
	GOTO       L_Karr9
	NOP
	NOP
;LasSecuencias.c,30 :: 		PORTB = 0x42;
	MOVLW      66
	MOVWF      PORTB+0
;LasSecuencias.c,31 :: 		}
L_end_Karr:
	RETURN
; end of _Karr

_Kitt:

;LasSecuencias.c,33 :: 		void Kitt(void){
;LasSecuencias.c,34 :: 		TRISB = 0X00;//PORTB COMO SALIDA
	CLRF       TRISB+0
;LasSecuencias.c,37 :: 		do{
L_Kitt10:
;LasSecuencias.c,38 :: 		derecha();
	CALL       _derecha+0
;LasSecuencias.c,39 :: 		izquierda();
	CALL       _izquierda+0
;LasSecuencias.c,40 :: 		}while(1);
	GOTO       L_Kitt10
;LasSecuencias.c,42 :: 		}
L_end_Kitt:
	RETURN
; end of _Kitt

_derecha:

;LasSecuencias.c,44 :: 		void derecha(void){
;LasSecuencias.c,45 :: 		PORTB = 0x80;
	MOVLW      128
	MOVWF      PORTB+0
;LasSecuencias.c,46 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_derecha13:
	DECFSZ     R13+0, 1
	GOTO       L_derecha13
	DECFSZ     R12+0, 1
	GOTO       L_derecha13
	DECFSZ     R11+0, 1
	GOTO       L_derecha13
	NOP
	NOP
;LasSecuencias.c,47 :: 		PORTB = 0x40;
	MOVLW      64
	MOVWF      PORTB+0
;LasSecuencias.c,48 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_derecha14:
	DECFSZ     R13+0, 1
	GOTO       L_derecha14
	DECFSZ     R12+0, 1
	GOTO       L_derecha14
	DECFSZ     R11+0, 1
	GOTO       L_derecha14
	NOP
	NOP
;LasSecuencias.c,49 :: 		PORTB = 0x20;
	MOVLW      32
	MOVWF      PORTB+0
;LasSecuencias.c,50 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_derecha15:
	DECFSZ     R13+0, 1
	GOTO       L_derecha15
	DECFSZ     R12+0, 1
	GOTO       L_derecha15
	DECFSZ     R11+0, 1
	GOTO       L_derecha15
	NOP
	NOP
;LasSecuencias.c,51 :: 		PORTB = 0x10;
	MOVLW      16
	MOVWF      PORTB+0
;LasSecuencias.c,52 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_derecha16:
	DECFSZ     R13+0, 1
	GOTO       L_derecha16
	DECFSZ     R12+0, 1
	GOTO       L_derecha16
	DECFSZ     R11+0, 1
	GOTO       L_derecha16
	NOP
	NOP
;LasSecuencias.c,53 :: 		PORTB = 0x08;
	MOVLW      8
	MOVWF      PORTB+0
;LasSecuencias.c,54 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_derecha17:
	DECFSZ     R13+0, 1
	GOTO       L_derecha17
	DECFSZ     R12+0, 1
	GOTO       L_derecha17
	DECFSZ     R11+0, 1
	GOTO       L_derecha17
	NOP
	NOP
;LasSecuencias.c,55 :: 		PORTB = 0x04;
	MOVLW      4
	MOVWF      PORTB+0
;LasSecuencias.c,56 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_derecha18:
	DECFSZ     R13+0, 1
	GOTO       L_derecha18
	DECFSZ     R12+0, 1
	GOTO       L_derecha18
	DECFSZ     R11+0, 1
	GOTO       L_derecha18
	NOP
	NOP
;LasSecuencias.c,57 :: 		PORTB = 0x02;
	MOVLW      2
	MOVWF      PORTB+0
;LasSecuencias.c,58 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_derecha19:
	DECFSZ     R13+0, 1
	GOTO       L_derecha19
	DECFSZ     R12+0, 1
	GOTO       L_derecha19
	DECFSZ     R11+0, 1
	GOTO       L_derecha19
	NOP
	NOP
;LasSecuencias.c,59 :: 		PORTB = 0x01;
	MOVLW      1
	MOVWF      PORTB+0
;LasSecuencias.c,60 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_derecha20:
	DECFSZ     R13+0, 1
	GOTO       L_derecha20
	DECFSZ     R12+0, 1
	GOTO       L_derecha20
	DECFSZ     R11+0, 1
	GOTO       L_derecha20
	NOP
	NOP
;LasSecuencias.c,61 :: 		}
L_end_derecha:
	RETURN
; end of _derecha

_izquierda:

;LasSecuencias.c,63 :: 		void izquierda(void){
;LasSecuencias.c,64 :: 		PORTB = 0x02;
	MOVLW      2
	MOVWF      PORTB+0
;LasSecuencias.c,65 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_izquierda21:
	DECFSZ     R13+0, 1
	GOTO       L_izquierda21
	DECFSZ     R12+0, 1
	GOTO       L_izquierda21
	DECFSZ     R11+0, 1
	GOTO       L_izquierda21
	NOP
	NOP
;LasSecuencias.c,66 :: 		PORTB = 0x04;
	MOVLW      4
	MOVWF      PORTB+0
;LasSecuencias.c,67 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_izquierda22:
	DECFSZ     R13+0, 1
	GOTO       L_izquierda22
	DECFSZ     R12+0, 1
	GOTO       L_izquierda22
	DECFSZ     R11+0, 1
	GOTO       L_izquierda22
	NOP
	NOP
;LasSecuencias.c,68 :: 		PORTB = 0x08;
	MOVLW      8
	MOVWF      PORTB+0
;LasSecuencias.c,69 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_izquierda23:
	DECFSZ     R13+0, 1
	GOTO       L_izquierda23
	DECFSZ     R12+0, 1
	GOTO       L_izquierda23
	DECFSZ     R11+0, 1
	GOTO       L_izquierda23
	NOP
	NOP
;LasSecuencias.c,70 :: 		PORTB = 0x10;
	MOVLW      16
	MOVWF      PORTB+0
;LasSecuencias.c,71 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_izquierda24:
	DECFSZ     R13+0, 1
	GOTO       L_izquierda24
	DECFSZ     R12+0, 1
	GOTO       L_izquierda24
	DECFSZ     R11+0, 1
	GOTO       L_izquierda24
	NOP
	NOP
;LasSecuencias.c,72 :: 		PORTB = 0x20;
	MOVLW      32
	MOVWF      PORTB+0
;LasSecuencias.c,73 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_izquierda25:
	DECFSZ     R13+0, 1
	GOTO       L_izquierda25
	DECFSZ     R12+0, 1
	GOTO       L_izquierda25
	DECFSZ     R11+0, 1
	GOTO       L_izquierda25
	NOP
	NOP
;LasSecuencias.c,74 :: 		PORTB = 0x40;
	MOVLW      64
	MOVWF      PORTB+0
;LasSecuencias.c,75 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_izquierda26:
	DECFSZ     R13+0, 1
	GOTO       L_izquierda26
	DECFSZ     R12+0, 1
	GOTO       L_izquierda26
	DECFSZ     R11+0, 1
	GOTO       L_izquierda26
	NOP
	NOP
;LasSecuencias.c,76 :: 		}
L_end_izquierda:
	RETURN
; end of _izquierda
