;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:46 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f716.c"
	list	p=16f716
	radix dec
	include "p16f716.inc"
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
	global	_DATACCPbits
	global	_PORTBbits
	global	_INTCONbits
	global	_PIR1bits
	global	_T1CONbits
	global	_T2CONbits
	global	_CCP1CONbits
	global	_PWM1CONbits
	global	_ECCPASbits
	global	_ADCON0bits
	global	_OPTION_REGbits
	global	_TRISAbits
	global	_TRISBbits
	global	_TRISCPbits
	global	_PIE1bits
	global	_PCONbits
	global	_ADCON1bits
	global	_INDF
	global	_TMR0
	global	_PCL
	global	_STATUS
	global	_FSR
	global	_PORTA
	global	_DATACCP
	global	_PORTB
	global	_PCLATH
	global	_INTCON
	global	_PIR1
	global	_TMR1
	global	_TMR1L
	global	_TMR1H
	global	_T1CON
	global	_TMR2
	global	_T2CON
	global	_CCPR1
	global	_CCPR1L
	global	_CCPR1H
	global	_CCP1CON
	global	_PWM1CON
	global	_ECCPAS
	global	_ADRES
	global	_ADCON0
	global	_OPTION_REG
	global	_TRISA
	global	_TRISB
	global	_TRISCP
	global	_PIE1
	global	_PCON
	global	_PR2
	global	_ADCON1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16f716_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16f716_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16f716_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f716_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f716_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16f716_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f716_6	udata_ovr	0x0006
_DATACCPbits
_PORTBbits
_DATACCP
_PORTB
	res	1
UD_abs_pic16f716_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f716_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f716_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f716_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic16f716_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16f716_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f716_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic16f716_12	udata_ovr	0x0012
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f716_15	udata_ovr	0x0015
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f716_16	udata_ovr	0x0016
_CCPR1H
	res	1
UD_abs_pic16f716_17	udata_ovr	0x0017
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16f716_18	udata_ovr	0x0018
_PWM1CONbits
_PWM1CON
	res	1
UD_abs_pic16f716_19	udata_ovr	0x0019
_ECCPASbits
_ECCPAS
	res	1
UD_abs_pic16f716_1e	udata_ovr	0x001e
_ADRES
	res	1
UD_abs_pic16f716_1f	udata_ovr	0x001f
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f716_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f716_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f716_86	udata_ovr	0x0086
_TRISBbits
_TRISCPbits
_TRISB
_TRISCP
	res	1
UD_abs_pic16f716_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f716_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16f716_92	udata_ovr	0x0092
_PR2
	res	1
UD_abs_pic16f716_9f	udata_ovr	0x009f
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
code_pic16f716	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
