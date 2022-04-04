;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:31 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16c433.c"
	list	p=16c433
	radix dec
	include "p16c433.inc"
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
	global	_GPIObits
	global	_INTCONbits
	global	_PIR1bits
	global	_ADCON0bits
	global	_OPTION_REGbits
	global	_TRISIObits
	global	_PIE1bits
	global	_PCONbits
	global	_OSCCALbits
	global	_ADCON1bits
	global	_INDF
	global	_TMR0
	global	_PCL
	global	_STATUS
	global	_FSR
	global	_GPIO
	global	_PCLATH
	global	_INTCON
	global	_PIR1
	global	_ADRES
	global	_ADCON0
	global	_OPTION_REG
	global	_TRISIO
	global	_PIE1
	global	_PCON
	global	_OSCCAL
	global	_ADCON1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16c433_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16c433_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16c433_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16c433_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16c433_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16c433_5	udata_ovr	0x0005
_GPIObits
_GPIO
	res	1
UD_abs_pic16c433_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16c433_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16c433_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16c433_1e	udata_ovr	0x001e
_ADRES
	res	1
UD_abs_pic16c433_1f	udata_ovr	0x001f
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16c433_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16c433_85	udata_ovr	0x0085
_TRISIObits
_TRISIO
	res	1
UD_abs_pic16c433_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16c433_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16c433_8f	udata_ovr	0x008f
_OSCCALbits
_OSCCAL
	res	1
UD_abs_pic16c433_9f	udata_ovr	0x009f
_ADCON1bits
_ADCON1
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
code_pic16c433	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
