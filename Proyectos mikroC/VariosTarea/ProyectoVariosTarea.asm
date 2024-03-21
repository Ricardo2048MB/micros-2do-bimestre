
_main:

;ProyectoVariosTarea.c,5 :: 		void main() {
;ProyectoVariosTarea.c,7 :: 		TRISA=0xFF;//Significa entradas porque está todo a 1's
	MOVLW      255
	MOVWF      TRISA+0
;ProyectoVariosTarea.c,8 :: 		TRISB=0x00;//Cuando es ceros significa salida
	CLRF       TRISB+0
;ProyectoVariosTarea.c,10 :: 		do{
L_main0:
;ProyectoVariosTarea.c,11 :: 		switch(PORTA){
	GOTO       L_main3
;ProyectoVariosTarea.c,13 :: 		case 0x00:
L_main5:
;ProyectoVariosTarea.c,14 :: 		KITT();
	CALL       _KITT+0
;ProyectoVariosTarea.c,15 :: 		break;
	GOTO       L_main4
;ProyectoVariosTarea.c,16 :: 		case 0x01:
L_main6:
;ProyectoVariosTarea.c,17 :: 		Gusanito();
	CALL       _Gusanito+0
;ProyectoVariosTarea.c,18 :: 		break;
	GOTO       L_main4
;ProyectoVariosTarea.c,19 :: 		case 0x02://mitad del puerto encendido, mitad apagado, alternando como baliza policial
L_main7:
;ProyectoVariosTarea.c,20 :: 		PORTB=0xF0;
	MOVLW      240
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,21 :: 		delay_ms(350);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      199
	MOVWF      R12+0
	MOVLW      136
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
;ProyectoVariosTarea.c,22 :: 		PORTB=0x0F;
	MOVLW      15
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,23 :: 		delay_ms(350);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      199
	MOVWF      R12+0
	MOVLW      136
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
;ProyectoVariosTarea.c,24 :: 		break;
	GOTO       L_main4
;ProyectoVariosTarea.c,25 :: 		case 0x03: //puerto apagado
L_main10:
;ProyectoVariosTarea.c,26 :: 		PORTB = 0X00;
	CLRF       PORTB+0
;ProyectoVariosTarea.c,27 :: 		break;
	GOTO       L_main4
;ProyectoVariosTarea.c,28 :: 		case 0x04://PORTB = 0x0A
L_main11:
;ProyectoVariosTarea.c,29 :: 		PORTB=0x0A;
	MOVLW      10
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,30 :: 		break;
	GOTO       L_main4
;ProyectoVariosTarea.c,31 :: 		case 0x05://PORTB = 0xF0
L_main12:
;ProyectoVariosTarea.c,32 :: 		PORTB=0xF0;
	MOVLW      240
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,33 :: 		break;
	GOTO       L_main4
;ProyectoVariosTarea.c,34 :: 		default://cualquier otra combinación de entrada encenderá y apagará alternadamente todo el puerto
L_main13:
;ProyectoVariosTarea.c,35 :: 		PORTB=0xFF;
	MOVLW      255
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,36 :: 		delay_ms(350);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      199
	MOVWF      R12+0
	MOVLW      136
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
;ProyectoVariosTarea.c,37 :: 		PORTB=0x00;
	CLRF       PORTB+0
;ProyectoVariosTarea.c,38 :: 		delay_ms(350);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      199
	MOVWF      R12+0
	MOVLW      136
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	DECFSZ     R11+0, 1
	GOTO       L_main15
	NOP
;ProyectoVariosTarea.c,39 :: 		}
	GOTO       L_main4
L_main3:
	MOVF       PORTA+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main5
	MOVF       PORTA+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_main6
	MOVF       PORTA+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_main7
	MOVF       PORTA+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_main10
	MOVF       PORTA+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_main11
	MOVF       PORTA+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_main12
	GOTO       L_main13
L_main4:
;ProyectoVariosTarea.c,40 :: 		}while(1);
	GOTO       L_main0
;ProyectoVariosTarea.c,41 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_gusanito:

;ProyectoVariosTarea.c,43 :: 		void gusanito(void){
;ProyectoVariosTarea.c,45 :: 		PORTB = 0x80;
	MOVLW      128
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,46 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_gusanito16:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito16
	DECFSZ     R12+0, 1
	GOTO       L_gusanito16
	DECFSZ     R11+0, 1
	GOTO       L_gusanito16
;ProyectoVariosTarea.c,47 :: 		PORTB = 0xC0;
	MOVLW      192
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,48 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_gusanito17:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito17
	DECFSZ     R12+0, 1
	GOTO       L_gusanito17
	DECFSZ     R11+0, 1
	GOTO       L_gusanito17
;ProyectoVariosTarea.c,49 :: 		PORTB = 0x40;
	MOVLW      64
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,50 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_gusanito18:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito18
	DECFSZ     R12+0, 1
	GOTO       L_gusanito18
	DECFSZ     R11+0, 1
	GOTO       L_gusanito18
;ProyectoVariosTarea.c,51 :: 		PORTB = 0x60;
	MOVLW      96
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,52 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_gusanito19:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito19
	DECFSZ     R12+0, 1
	GOTO       L_gusanito19
	DECFSZ     R11+0, 1
	GOTO       L_gusanito19
;ProyectoVariosTarea.c,53 :: 		PORTB = 0x20;
	MOVLW      32
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,54 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_gusanito20:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito20
	DECFSZ     R12+0, 1
	GOTO       L_gusanito20
	DECFSZ     R11+0, 1
	GOTO       L_gusanito20
;ProyectoVariosTarea.c,55 :: 		PORTB = 0x30;
	MOVLW      48
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,56 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_gusanito21:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito21
	DECFSZ     R12+0, 1
	GOTO       L_gusanito21
	DECFSZ     R11+0, 1
	GOTO       L_gusanito21
;ProyectoVariosTarea.c,57 :: 		PORTB = 0x10;
	MOVLW      16
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,58 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_gusanito22:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito22
	DECFSZ     R12+0, 1
	GOTO       L_gusanito22
	DECFSZ     R11+0, 1
	GOTO       L_gusanito22
;ProyectoVariosTarea.c,59 :: 		PORTB = 0x18;
	MOVLW      24
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,60 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_gusanito23:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito23
	DECFSZ     R12+0, 1
	GOTO       L_gusanito23
	DECFSZ     R11+0, 1
	GOTO       L_gusanito23
;ProyectoVariosTarea.c,61 :: 		PORTB = 0x08;
	MOVLW      8
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,62 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_gusanito24:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito24
	DECFSZ     R12+0, 1
	GOTO       L_gusanito24
	DECFSZ     R11+0, 1
	GOTO       L_gusanito24
;ProyectoVariosTarea.c,63 :: 		PORTB = 0x0c;
	MOVLW      12
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,64 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_gusanito25:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito25
	DECFSZ     R12+0, 1
	GOTO       L_gusanito25
	DECFSZ     R11+0, 1
	GOTO       L_gusanito25
;ProyectoVariosTarea.c,65 :: 		PORTB = 0x04;
	MOVLW      4
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,66 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_gusanito26:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito26
	DECFSZ     R12+0, 1
	GOTO       L_gusanito26
	DECFSZ     R11+0, 1
	GOTO       L_gusanito26
;ProyectoVariosTarea.c,67 :: 		PORTB = 0x06;
	MOVLW      6
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,68 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_gusanito27:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito27
	DECFSZ     R12+0, 1
	GOTO       L_gusanito27
	DECFSZ     R11+0, 1
	GOTO       L_gusanito27
;ProyectoVariosTarea.c,69 :: 		PORTB = 0x02;
	MOVLW      2
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,70 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_gusanito28:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito28
	DECFSZ     R12+0, 1
	GOTO       L_gusanito28
	DECFSZ     R11+0, 1
	GOTO       L_gusanito28
;ProyectoVariosTarea.c,71 :: 		PORTB = 0x03;
	MOVLW      3
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,72 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_gusanito29:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito29
	DECFSZ     R12+0, 1
	GOTO       L_gusanito29
	DECFSZ     R11+0, 1
	GOTO       L_gusanito29
;ProyectoVariosTarea.c,73 :: 		PORTB = 0x01;
	MOVLW      1
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,74 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_gusanito30:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito30
	DECFSZ     R12+0, 1
	GOTO       L_gusanito30
	DECFSZ     R11+0, 1
	GOTO       L_gusanito30
;ProyectoVariosTarea.c,75 :: 		}
L_end_gusanito:
	RETURN
; end of _gusanito

_KITT:

;ProyectoVariosTarea.c,77 :: 		void KITT(void){
;ProyectoVariosTarea.c,79 :: 		PORTB = 0x80;
	MOVLW      128
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,80 :: 		delay_ms(60);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_KITT31:
	DECFSZ     R13+0, 1
	GOTO       L_KITT31
	DECFSZ     R12+0, 1
	GOTO       L_KITT31
;ProyectoVariosTarea.c,81 :: 		PORTB = 0x40;
	MOVLW      64
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,82 :: 		delay_ms(60);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_KITT32:
	DECFSZ     R13+0, 1
	GOTO       L_KITT32
	DECFSZ     R12+0, 1
	GOTO       L_KITT32
;ProyectoVariosTarea.c,83 :: 		PORTB = 0x20;
	MOVLW      32
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,84 :: 		delay_ms(60);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_KITT33:
	DECFSZ     R13+0, 1
	GOTO       L_KITT33
	DECFSZ     R12+0, 1
	GOTO       L_KITT33
;ProyectoVariosTarea.c,85 :: 		PORTB = 0x10;
	MOVLW      16
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,86 :: 		delay_ms(60);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_KITT34:
	DECFSZ     R13+0, 1
	GOTO       L_KITT34
	DECFSZ     R12+0, 1
	GOTO       L_KITT34
;ProyectoVariosTarea.c,87 :: 		PORTB = 0x08;
	MOVLW      8
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,88 :: 		delay_ms(60);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_KITT35:
	DECFSZ     R13+0, 1
	GOTO       L_KITT35
	DECFSZ     R12+0, 1
	GOTO       L_KITT35
;ProyectoVariosTarea.c,89 :: 		PORTB = 0x04;
	MOVLW      4
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,90 :: 		delay_ms(60);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_KITT36:
	DECFSZ     R13+0, 1
	GOTO       L_KITT36
	DECFSZ     R12+0, 1
	GOTO       L_KITT36
;ProyectoVariosTarea.c,91 :: 		PORTB = 0x02;
	MOVLW      2
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,92 :: 		delay_ms(60);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_KITT37:
	DECFSZ     R13+0, 1
	GOTO       L_KITT37
	DECFSZ     R12+0, 1
	GOTO       L_KITT37
;ProyectoVariosTarea.c,93 :: 		PORTB = 0x01;
	MOVLW      1
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,94 :: 		delay_ms(60);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_KITT38:
	DECFSZ     R13+0, 1
	GOTO       L_KITT38
	DECFSZ     R12+0, 1
	GOTO       L_KITT38
;ProyectoVariosTarea.c,96 :: 		PORTB = 0x02;
	MOVLW      2
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,97 :: 		delay_ms(60);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_KITT39:
	DECFSZ     R13+0, 1
	GOTO       L_KITT39
	DECFSZ     R12+0, 1
	GOTO       L_KITT39
;ProyectoVariosTarea.c,98 :: 		PORTB = 0x04;
	MOVLW      4
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,99 :: 		delay_ms(60);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_KITT40:
	DECFSZ     R13+0, 1
	GOTO       L_KITT40
	DECFSZ     R12+0, 1
	GOTO       L_KITT40
;ProyectoVariosTarea.c,100 :: 		PORTB = 0x08;
	MOVLW      8
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,101 :: 		delay_ms(60);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_KITT41:
	DECFSZ     R13+0, 1
	GOTO       L_KITT41
	DECFSZ     R12+0, 1
	GOTO       L_KITT41
;ProyectoVariosTarea.c,102 :: 		PORTB = 0x10;
	MOVLW      16
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,103 :: 		delay_ms(60);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_KITT42:
	DECFSZ     R13+0, 1
	GOTO       L_KITT42
	DECFSZ     R12+0, 1
	GOTO       L_KITT42
;ProyectoVariosTarea.c,104 :: 		PORTB = 0x20;
	MOVLW      32
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,105 :: 		delay_ms(60);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_KITT43:
	DECFSZ     R13+0, 1
	GOTO       L_KITT43
	DECFSZ     R12+0, 1
	GOTO       L_KITT43
;ProyectoVariosTarea.c,106 :: 		PORTB = 0x40;
	MOVLW      64
	MOVWF      PORTB+0
;ProyectoVariosTarea.c,107 :: 		delay_ms(60);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_KITT44:
	DECFSZ     R13+0, 1
	GOTO       L_KITT44
	DECFSZ     R12+0, 1
	GOTO       L_KITT44
;ProyectoVariosTarea.c,108 :: 		}
L_end_KITT:
	RETURN
; end of _KITT
