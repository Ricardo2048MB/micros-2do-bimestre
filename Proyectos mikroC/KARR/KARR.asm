
_main:

;KARR.c,1 :: 		void main() {
;KARR.c,3 :: 		TRISB = 0x00;//PORTB como salida
	CLRF       TRISB+0
;KARR.c,4 :: 		do{
L_main0:
;KARR.c,5 :: 		PORTB = 0x81;
	MOVLW      129
	MOVWF      PORTB+0
;KARR.c,6 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;KARR.c,7 :: 		PORTB = 0x42;
	MOVLW      66
	MOVWF      PORTB+0
;KARR.c,8 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;KARR.c,9 :: 		PORTB = 0x24;
	MOVLW      36
	MOVWF      PORTB+0
;KARR.c,10 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;KARR.c,11 :: 		PORTB = 0x18;
	MOVLW      24
	MOVWF      PORTB+0
;KARR.c,12 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;KARR.c,13 :: 		PORTB = 0x24;
	MOVLW      36
	MOVWF      PORTB+0
;KARR.c,14 :: 		delay_ms(900);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      145
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;KARR.c,15 :: 		PORTB = 0x42;
	MOVLW      66
	MOVWF      PORTB+0
;KARR.c,16 :: 		}while(1);
	GOTO       L_main0
;KARR.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
