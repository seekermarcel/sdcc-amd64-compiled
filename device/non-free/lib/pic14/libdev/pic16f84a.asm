;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:48 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f84a.c"
	list	p=16f84a
	radix dec
	include "p16f84a.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------

	extern PSAVE
	extern SSAVE
	extern WSAVE
	extern STK12
	extern STK11
	extern STK10
	extern STK09
	extern STK08
	extern STK07
	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_STATUSbits
	global	_PORTAbits
	global	_PORTBbits
	global	_INTCONbits
	global	_OPTION_REGbits
	global	_TRISAbits
	global	_TRISBbits
	global	_EECON1bits
	global	_INDF
	global	_TMR0
	global	_PCL
	global	_STATUS
	global	_FSR
	global	_PORTA
	global	_PORTB
	global	_EEDATA
	global	_EEADR
	global	_PCLATH
	global	_INTCON
	global	_OPTION_REG
	global	_TRISA
	global	_TRISB
	global	_EECON1
	global	_EECON2

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16f84a_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16f84a_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16f84a_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f84a_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f84a_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16f84a_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f84a_6	udata_ovr	0x0006
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f84a_8	udata_ovr	0x0008
_EEDATA
	res	1
UD_abs_pic16f84a_9	udata_ovr	0x0009
_EEADR
	res	1
UD_abs_pic16f84a_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f84a_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f84a_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f84a_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f84a_86	udata_ovr	0x0086
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f84a_88	udata_ovr	0x0088
_EECON1bits
_EECON1
	res	1
UD_abs_pic16f84a_89	udata_ovr	0x0089
_EECON2
	res	1
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_pic16f84a	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
