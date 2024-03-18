
_main:

;Kit.c,3 :: 		void main() {
;Kit.c,6 :: 		TRISB = 0X00;//PORTB COMO SALIDA
	CLRF       TRISB+0
;Kit.c,9 :: 		do{
L_main0:
;Kit.c,10 :: 		derecha();
	CALL       _derecha+0
;Kit.c,11 :: 		izquierda();
	CALL       _izquierda+0
;Kit.c,12 :: 		}while(1);
	GOTO       L_main0
;Kit.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_derecha:

;Kit.c,17 :: 		void derecha(void){
;Kit.c,18 :: 		PORTB = 0x80;
	MOVLW      128
	MOVWF      PORTB+0
;Kit.c,19 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_derecha3:
	DECFSZ     R13+0, 1
	GOTO       L_derecha3
	DECFSZ     R12+0, 1
	GOTO       L_derecha3
	DECFSZ     R11+0, 1
	GOTO       L_derecha3
	NOP
	NOP
;Kit.c,20 :: 		PORTB = 0x40;
	MOVLW      64
	MOVWF      PORTB+0
;Kit.c,21 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_derecha4:
	DECFSZ     R13+0, 1
	GOTO       L_derecha4
	DECFSZ     R12+0, 1
	GOTO       L_derecha4
	DECFSZ     R11+0, 1
	GOTO       L_derecha4
	NOP
	NOP
;Kit.c,22 :: 		PORTB = 0x20;
	MOVLW      32
	MOVWF      PORTB+0
;Kit.c,23 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_derecha5:
	DECFSZ     R13+0, 1
	GOTO       L_derecha5
	DECFSZ     R12+0, 1
	GOTO       L_derecha5
	DECFSZ     R11+0, 1
	GOTO       L_derecha5
	NOP
	NOP
;Kit.c,24 :: 		PORTB = 0x10;
	MOVLW      16
	MOVWF      PORTB+0
;Kit.c,25 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_derecha6:
	DECFSZ     R13+0, 1
	GOTO       L_derecha6
	DECFSZ     R12+0, 1
	GOTO       L_derecha6
	DECFSZ     R11+0, 1
	GOTO       L_derecha6
	NOP
	NOP
;Kit.c,26 :: 		PORTB = 0x08;
	MOVLW      8
	MOVWF      PORTB+0
;Kit.c,27 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_derecha7:
	DECFSZ     R13+0, 1
	GOTO       L_derecha7
	DECFSZ     R12+0, 1
	GOTO       L_derecha7
	DECFSZ     R11+0, 1
	GOTO       L_derecha7
	NOP
	NOP
;Kit.c,28 :: 		PORTB = 0x04;
	MOVLW      4
	MOVWF      PORTB+0
;Kit.c,29 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_derecha8:
	DECFSZ     R13+0, 1
	GOTO       L_derecha8
	DECFSZ     R12+0, 1
	GOTO       L_derecha8
	DECFSZ     R11+0, 1
	GOTO       L_derecha8
	NOP
	NOP
;Kit.c,30 :: 		PORTB = 0x02;
	MOVLW      2
	MOVWF      PORTB+0
;Kit.c,31 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_derecha9:
	DECFSZ     R13+0, 1
	GOTO       L_derecha9
	DECFSZ     R12+0, 1
	GOTO       L_derecha9
	DECFSZ     R11+0, 1
	GOTO       L_derecha9
	NOP
	NOP
;Kit.c,32 :: 		PORTB = 0x01;
	MOVLW      1
	MOVWF      PORTB+0
;Kit.c,33 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_derecha10:
	DECFSZ     R13+0, 1
	GOTO       L_derecha10
	DECFSZ     R12+0, 1
	GOTO       L_derecha10
	DECFSZ     R11+0, 1
	GOTO       L_derecha10
	NOP
	NOP
;Kit.c,34 :: 		}
L_end_derecha:
	RETURN
; end of _derecha

_izquierda:

;Kit.c,36 :: 		void izquierda(void){
;Kit.c,37 :: 		PORTB = 0x02;
	MOVLW      2
	MOVWF      PORTB+0
;Kit.c,38 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_izquierda11:
	DECFSZ     R13+0, 1
	GOTO       L_izquierda11
	DECFSZ     R12+0, 1
	GOTO       L_izquierda11
	DECFSZ     R11+0, 1
	GOTO       L_izquierda11
	NOP
	NOP
;Kit.c,39 :: 		PORTB = 0x04;
	MOVLW      4
	MOVWF      PORTB+0
;Kit.c,40 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_izquierda12:
	DECFSZ     R13+0, 1
	GOTO       L_izquierda12
	DECFSZ     R12+0, 1
	GOTO       L_izquierda12
	DECFSZ     R11+0, 1
	GOTO       L_izquierda12
	NOP
	NOP
;Kit.c,41 :: 		PORTB = 0x08;
	MOVLW      8
	MOVWF      PORTB+0
;Kit.c,42 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_izquierda13:
	DECFSZ     R13+0, 1
	GOTO       L_izquierda13
	DECFSZ     R12+0, 1
	GOTO       L_izquierda13
	DECFSZ     R11+0, 1
	GOTO       L_izquierda13
	NOP
	NOP
;Kit.c,43 :: 		PORTB = 0x10;
	MOVLW      16
	MOVWF      PORTB+0
;Kit.c,44 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_izquierda14:
	DECFSZ     R13+0, 1
	GOTO       L_izquierda14
	DECFSZ     R12+0, 1
	GOTO       L_izquierda14
	DECFSZ     R11+0, 1
	GOTO       L_izquierda14
	NOP
	NOP
;Kit.c,45 :: 		PORTB = 0x20;
	MOVLW      32
	MOVWF      PORTB+0
;Kit.c,46 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_izquierda15:
	DECFSZ     R13+0, 1
	GOTO       L_izquierda15
	DECFSZ     R12+0, 1
	GOTO       L_izquierda15
	DECFSZ     R11+0, 1
	GOTO       L_izquierda15
	NOP
	NOP
;Kit.c,47 :: 		PORTB = 0x40;
	MOVLW      64
	MOVWF      PORTB+0
;Kit.c,48 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_izquierda16:
	DECFSZ     R13+0, 1
	GOTO       L_izquierda16
	DECFSZ     R12+0, 1
	GOTO       L_izquierda16
	DECFSZ     R11+0, 1
	GOTO       L_izquierda16
	NOP
	NOP
;Kit.c,49 :: 		}
L_end_izquierda:
	RETURN
; end of _izquierda
