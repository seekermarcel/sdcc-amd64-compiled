;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:45 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f627a.c"
	list	p=16f627a
	radix dec
	include "p16f627a.inc"
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
	global	_PIR1bits
	global	_T1CONbits
	global	_T2CONbits
	global	_CCP1CONbits
	global	_RCSTAbits
	global	_CMCONbits
	global	_OPTION_REGbits
	global	_TRISAbits
	global	_TRISBbits
	global	_PIE1bits
	global	_PCONbits
	global	_TXSTAbits
	global	_EECON1bits
	global	_VRCONbits
	global	_INDF
	global	_TMR0
	global	_PCL
	global	_STATUS
	global	_FSR
	global	_PORTA
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
	global	_RCSTA
	global	_TXREG
	global	_RCREG
	global	_CMCON
	global	_OPTION_REG
	global	_TRISA
	global	_TRISB
	global	_PIE1
	global	_PCON
	global	_PR2
	global	_TXSTA
	global	_SPBRG
	global	_EEDATA
	global	_EEADR
	global	_EECON1
	global	_EECON2
	global	_VRCON

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16f627a_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16f627a_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16f627a_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f627a_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f627a_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16f627a_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f627a_6	udata_ovr	0x0006
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f627a_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f627a_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f627a_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f627a_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic16f627a_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16f627a_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f627a_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic16f627a_12	udata_ovr	0x0012
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f627a_15	udata_ovr	0x0015
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f627a_16	udata_ovr	0x0016
_CCPR1H
	res	1
UD_abs_pic16f627a_17	udata_ovr	0x0017
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16f627a_18	udata_ovr	0x0018
_RCSTAbits
_RCSTA
	res	1
UD_abs_pic16f627a_19	udata_ovr	0x0019
_TXREG
	res	1
UD_abs_pic16f627a_1a	udata_ovr	0x001a
_RCREG
	res	1
UD_abs_pic16f627a_1f	udata_ovr	0x001f
_CMCONbits
_CMCON
	res	1
UD_abs_pic16f627a_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f627a_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f627a_86	udata_ovr	0x0086
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f627a_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f627a_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16f627a_92	udata_ovr	0x0092
_PR2
	res	1
UD_abs_pic16f627a_98	udata_ovr	0x0098
_TXSTAbits
_TXSTA
	res	1
UD_abs_pic16f627a_99	udata_ovr	0x0099
_SPBRG
	res	1
UD_abs_pic16f627a_9a	udata_ovr	0x009a
_EEDATA
	res	1
UD_abs_pic16f627a_9b	udata_ovr	0x009b
_EEADR
	res	1
UD_abs_pic16f627a_9c	udata_ovr	0x009c
_EECON1bits
_EECON1
	res	1
UD_abs_pic16f627a_9d	udata_ovr	0x009d
_EECON2
	res	1
UD_abs_pic16f627a_9f	udata_ovr	0x009f
_VRCONbits
_VRCON
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
code_pic16f627a	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
