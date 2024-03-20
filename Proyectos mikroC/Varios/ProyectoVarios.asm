
_main:

;ProyectoVarios.c,5 :: 		void main() {
;ProyectoVarios.c,7 :: 		TRISA=0xFF;//Significa entradas porque está todo a 1's
	MOVLW      255
	MOVWF      TRISA+0
;ProyectoVarios.c,8 :: 		TRISB=0x00;//Cuando es ceros significa salida
	CLRF       TRISB+0
;ProyectoVarios.c,10 :: 		do{
L_main0:
;ProyectoVarios.c,11 :: 		switch(PORTA){
	GOTO       L_main3
;ProyectoVarios.c,13 :: 		case 0x00:
L_main5:
;ProyectoVarios.c,14 :: 		KITT();
	CALL       _KITT+0
;ProyectoVarios.c,15 :: 		break;
	GOTO       L_main4
;ProyectoVarios.c,16 :: 		case 0x01:
L_main6:
;ProyectoVarios.c,17 :: 		KARR();
	CALL       _KARR+0
;ProyectoVarios.c,18 :: 		break;
	GOTO       L_main4
;ProyectoVarios.c,19 :: 		case 0x02:
L_main7:
;ProyectoVarios.c,20 :: 		Gusanito();
	CALL       _Gusanito+0
;ProyectoVarios.c,21 :: 		break;
	GOTO       L_main4
;ProyectoVarios.c,22 :: 		case 0x03:
L_main8:
;ProyectoVarios.c,23 :: 		PORTA=0xF0;
	MOVLW      240
	MOVWF      PORTA+0
;ProyectoVarios.c,24 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;ProyectoVarios.c,25 :: 		PORTA=0x0F;
	MOVLW      15
	MOVWF      PORTA+0
;ProyectoVarios.c,26 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;ProyectoVarios.c,27 :: 		break;
	GOTO       L_main4
;ProyectoVarios.c,28 :: 		case 0x04:
L_main11:
;ProyectoVarios.c,29 :: 		PORTA=0xFF;
	MOVLW      255
	MOVWF      PORTA+0
;ProyectoVarios.c,30 :: 		break;
	GOTO       L_main4
;ProyectoVarios.c,31 :: 		case 0x05:
L_main12:
;ProyectoVarios.c,32 :: 		PORTA=0xcc;
	MOVLW      204
	MOVWF      PORTA+0
;ProyectoVarios.c,33 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
	NOP
	NOP
;ProyectoVarios.c,34 :: 		PORTA=0x33;
	MOVLW      51
	MOVWF      PORTA+0
;ProyectoVarios.c,35 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
	NOP
;ProyectoVarios.c,36 :: 		break;
	GOTO       L_main4
;ProyectoVarios.c,37 :: 		default:
L_main15:
;ProyectoVarios.c,38 :: 		PORTA=0x00;
	CLRF       PORTA+0
;ProyectoVarios.c,39 :: 		}
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
	GOTO       L_main8
	MOVF       PORTA+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_main11
	MOVF       PORTA+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_main12
	GOTO       L_main15
L_main4:
;ProyectoVarios.c,40 :: 		}while(1);
	GOTO       L_main0
;ProyectoVarios.c,41 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_gusanito:

;ProyectoVarios.c,43 :: 		void gusanito(void){
;ProyectoVarios.c,45 :: 		PORTB = 0x20;
	MOVLW      32
	MOVWF      PORTB+0
;ProyectoVarios.c,46 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_gusanito16:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito16
	DECFSZ     R12+0, 1
	GOTO       L_gusanito16
	DECFSZ     R11+0, 1
	GOTO       L_gusanito16
	NOP
	NOP
;ProyectoVarios.c,47 :: 		PORTB = 0x30;
	MOVLW      48
	MOVWF      PORTB+0
;ProyectoVarios.c,48 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_gusanito17:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito17
	DECFSZ     R12+0, 1
	GOTO       L_gusanito17
	DECFSZ     R11+0, 1
	GOTO       L_gusanito17
	NOP
	NOP
;ProyectoVarios.c,49 :: 		PORTB = 0x10;
	MOVLW      16
	MOVWF      PORTB+0
;ProyectoVarios.c,50 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_gusanito18:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito18
	DECFSZ     R12+0, 1
	GOTO       L_gusanito18
	DECFSZ     R11+0, 1
	GOTO       L_gusanito18
	NOP
	NOP
;ProyectoVarios.c,51 :: 		PORTB = 0x18;
	MOVLW      24
	MOVWF      PORTB+0
;ProyectoVarios.c,52 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_gusanito19:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito19
	DECFSZ     R12+0, 1
	GOTO       L_gusanito19
	DECFSZ     R11+0, 1
	GOTO       L_gusanito19
	NOP
	NOP
;ProyectoVarios.c,53 :: 		PORTB = 0x08;
	MOVLW      8
	MOVWF      PORTB+0
;ProyectoVarios.c,54 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_gusanito20:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito20
	DECFSZ     R12+0, 1
	GOTO       L_gusanito20
	DECFSZ     R11+0, 1
	GOTO       L_gusanito20
	NOP
	NOP
;ProyectoVarios.c,55 :: 		PORTB = 0x0c;
	MOVLW      12
	MOVWF      PORTB+0
;ProyectoVarios.c,56 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_gusanito21:
	DECFSZ     R13+0, 1
	GOTO       L_gusanito21
	DECFSZ     R12+0, 1
	GOTO       L_gusanito21
	DECFSZ     R11+0, 1
	GOTO       L_gusanito21
	NOP
	NOP
;ProyectoVarios.c,57 :: 		}
L_end_gusanito:
	RETURN
; end of _gusanito

_KITT:

;ProyectoVarios.c,59 :: 		void KITT(void){
;ProyectoVarios.c,61 :: 		PORTB = 0x80;
	MOVLW      128
	MOVWF      PORTB+0
;ProyectoVarios.c,62 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KITT22:
	DECFSZ     R13+0, 1
	GOTO       L_KITT22
	DECFSZ     R12+0, 1
	GOTO       L_KITT22
	DECFSZ     R11+0, 1
	GOTO       L_KITT22
	NOP
	NOP
;ProyectoVarios.c,63 :: 		PORTB = 0x40;
	MOVLW      64
	MOVWF      PORTB+0
;ProyectoVarios.c,64 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KITT23:
	DECFSZ     R13+0, 1
	GOTO       L_KITT23
	DECFSZ     R12+0, 1
	GOTO       L_KITT23
	DECFSZ     R11+0, 1
	GOTO       L_KITT23
	NOP
	NOP
;ProyectoVarios.c,65 :: 		PORTB = 0x20;
	MOVLW      32
	MOVWF      PORTB+0
;ProyectoVarios.c,66 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KITT24:
	DECFSZ     R13+0, 1
	GOTO       L_KITT24
	DECFSZ     R12+0, 1
	GOTO       L_KITT24
	DECFSZ     R11+0, 1
	GOTO       L_KITT24
	NOP
	NOP
;ProyectoVarios.c,67 :: 		PORTB = 0x10;
	MOVLW      16
	MOVWF      PORTB+0
;ProyectoVarios.c,68 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KITT25:
	DECFSZ     R13+0, 1
	GOTO       L_KITT25
	DECFSZ     R12+0, 1
	GOTO       L_KITT25
	DECFSZ     R11+0, 1
	GOTO       L_KITT25
	NOP
	NOP
;ProyectoVarios.c,69 :: 		PORTB = 0x08;
	MOVLW      8
	MOVWF      PORTB+0
;ProyectoVarios.c,70 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KITT26:
	DECFSZ     R13+0, 1
	GOTO       L_KITT26
	DECFSZ     R12+0, 1
	GOTO       L_KITT26
	DECFSZ     R11+0, 1
	GOTO       L_KITT26
	NOP
	NOP
;ProyectoVarios.c,71 :: 		PORTB = 0x04;
	MOVLW      4
	MOVWF      PORTB+0
;ProyectoVarios.c,72 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KITT27:
	DECFSZ     R13+0, 1
	GOTO       L_KITT27
	DECFSZ     R12+0, 1
	GOTO       L_KITT27
	DECFSZ     R11+0, 1
	GOTO       L_KITT27
	NOP
	NOP
;ProyectoVarios.c,73 :: 		PORTB = 0x02;
	MOVLW      2
	MOVWF      PORTB+0
;ProyectoVarios.c,74 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KITT28:
	DECFSZ     R13+0, 1
	GOTO       L_KITT28
	DECFSZ     R12+0, 1
	GOTO       L_KITT28
	DECFSZ     R11+0, 1
	GOTO       L_KITT28
	NOP
	NOP
;ProyectoVarios.c,75 :: 		PORTB = 0x01;
	MOVLW      1
	MOVWF      PORTB+0
;ProyectoVarios.c,76 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KITT29:
	DECFSZ     R13+0, 1
	GOTO       L_KITT29
	DECFSZ     R12+0, 1
	GOTO       L_KITT29
	DECFSZ     R11+0, 1
	GOTO       L_KITT29
	NOP
	NOP
;ProyectoVarios.c,78 :: 		PORTB = 0x02;
	MOVLW      2
	MOVWF      PORTB+0
;ProyectoVarios.c,79 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KITT30:
	DECFSZ     R13+0, 1
	GOTO       L_KITT30
	DECFSZ     R12+0, 1
	GOTO       L_KITT30
	DECFSZ     R11+0, 1
	GOTO       L_KITT30
	NOP
	NOP
;ProyectoVarios.c,80 :: 		PORTB = 0x04;
	MOVLW      4
	MOVWF      PORTB+0
;ProyectoVarios.c,81 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KITT31:
	DECFSZ     R13+0, 1
	GOTO       L_KITT31
	DECFSZ     R12+0, 1
	GOTO       L_KITT31
	DECFSZ     R11+0, 1
	GOTO       L_KITT31
	NOP
	NOP
;ProyectoVarios.c,82 :: 		PORTB = 0x08;
	MOVLW      8
	MOVWF      PORTB+0
;ProyectoVarios.c,83 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KITT32:
	DECFSZ     R13+0, 1
	GOTO       L_KITT32
	DECFSZ     R12+0, 1
	GOTO       L_KITT32
	DECFSZ     R11+0, 1
	GOTO       L_KITT32
	NOP
	NOP
;ProyectoVarios.c,84 :: 		PORTB = 0x10;
	MOVLW      16
	MOVWF      PORTB+0
;ProyectoVarios.c,85 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KITT33:
	DECFSZ     R13+0, 1
	GOTO       L_KITT33
	DECFSZ     R12+0, 1
	GOTO       L_KITT33
	DECFSZ     R11+0, 1
	GOTO       L_KITT33
	NOP
	NOP
;ProyectoVarios.c,86 :: 		PORTB = 0x20;
	MOVLW      32
	MOVWF      PORTB+0
;ProyectoVarios.c,87 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KITT34:
	DECFSZ     R13+0, 1
	GOTO       L_KITT34
	DECFSZ     R12+0, 1
	GOTO       L_KITT34
	DECFSZ     R11+0, 1
	GOTO       L_KITT34
	NOP
	NOP
;ProyectoVarios.c,88 :: 		PORTB = 0x40;
	MOVLW      64
	MOVWF      PORTB+0
;ProyectoVarios.c,89 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KITT35:
	DECFSZ     R13+0, 1
	GOTO       L_KITT35
	DECFSZ     R12+0, 1
	GOTO       L_KITT35
	DECFSZ     R11+0, 1
	GOTO       L_KITT35
	NOP
	NOP
;ProyectoVarios.c,90 :: 		}
L_end_KITT:
	RETURN
; end of _KITT

_KARR:

;ProyectoVarios.c,92 :: 		void KARR(void){
;ProyectoVarios.c,94 :: 		PORTB = 0x81;
	MOVLW      129
	MOVWF      PORTB+0
;ProyectoVarios.c,95 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KARR36:
	DECFSZ     R13+0, 1
	GOTO       L_KARR36
	DECFSZ     R12+0, 1
	GOTO       L_KARR36
	DECFSZ     R11+0, 1
	GOTO       L_KARR36
	NOP
	NOP
;ProyectoVarios.c,96 :: 		PORTB = 0x42;
	MOVLW      66
	MOVWF      PORTB+0
;ProyectoVarios.c,97 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KARR37:
	DECFSZ     R13+0, 1
	GOTO       L_KARR37
	DECFSZ     R12+0, 1
	GOTO       L_KARR37
	DECFSZ     R11+0, 1
	GOTO       L_KARR37
	NOP
	NOP
;ProyectoVarios.c,98 :: 		PORTB = 0x24;
	MOVLW      36
	MOVWF      PORTB+0
;ProyectoVarios.c,99 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KARR38:
	DECFSZ     R13+0, 1
	GOTO       L_KARR38
	DECFSZ     R12+0, 1
	GOTO       L_KARR38
	DECFSZ     R11+0, 1
	GOTO       L_KARR38
	NOP
	NOP
;ProyectoVarios.c,100 :: 		PORTB = 0x18;
	MOVLW      24
	MOVWF      PORTB+0
;ProyectoVarios.c,101 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KARR39:
	DECFSZ     R13+0, 1
	GOTO       L_KARR39
	DECFSZ     R12+0, 1
	GOTO       L_KARR39
	DECFSZ     R11+0, 1
	GOTO       L_KARR39
	NOP
	NOP
;ProyectoVarios.c,102 :: 		PORTB = 0x24;
	MOVLW      36
	MOVWF      PORTB+0
;ProyectoVarios.c,103 :: 		delay_ms(600);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_KARR40:
	DECFSZ     R13+0, 1
	GOTO       L_KARR40
	DECFSZ     R12+0, 1
	GOTO       L_KARR40
	DECFSZ     R11+0, 1
	GOTO       L_KARR40
	NOP
	NOP
;ProyectoVarios.c,104 :: 		PORTB = 0x42;
	MOVLW      66
	MOVWF      PORTB+0
;ProyectoVarios.c,105 :: 		}
L_end_KARR:
	RETURN
; end of _KARR
