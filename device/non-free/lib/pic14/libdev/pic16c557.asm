;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:31 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16c557.c"
	list	p=16c557
	radix dec
	include "p16c557.inc"
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
	global	_PORTCbits
	global	_INTCONbits
	global	_OPTION_REGbits
	global	_TRISAbits
	global	_TRISBbits
	global	_TRISCbits
	global	_PCONbits
	global	_INDF
	global	_TMR0
	global	_PCL
	global	_STATUS
	global	_FSR
	global	_PORTA
	global	_PORTB
	global	_PORTC
	global	_PCLATH
	global	_INTCON
	global	_OPTION_REG
	global	_TRISA
	global	_TRISB
	global	_TRISC
	global	_PCON

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16c557_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16c557_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16c557_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16c557_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16c557_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16c557_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16c557_6	udata_ovr	0x0006
_PORTBbits
_PORTB
	res	1
UD_abs_pic16c557_7	udata_ovr	0x0007
_PORTCbits
_PORTC
	res	1
UD_abs_pic16c557_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16c557_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16c557_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16c557_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16c557_86	udata_ovr	0x0086
_TRISBbits
_TRISB
	res	1
UD_abs_pic16c557_87	udata_ovr	0x0087
_TRISCbits
_TRISC
	res	1
UD_abs_pic16c557_8e	udata_ovr	0x008e
_PCONbits
_PCON
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
code_pic16c557	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
