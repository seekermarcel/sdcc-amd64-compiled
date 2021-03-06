;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:45 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f630.c"
	list	p=16f630
	radix dec
	include "p16f630.inc"
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
	global	_PORTCbits
	global	_INTCONbits
	global	_PIR1bits
	global	_T1CONbits
	global	_CMCONbits
	global	_OPTION_REGbits
	global	_TRISAbits
	global	_TRISCbits
	global	_PIE1bits
	global	_PCONbits
	global	_OSCCALbits
	global	_WPUbits
	global	_WPUAbits
	global	_IOCbits
	global	_IOCAbits
	global	_VRCONbits
	global	_EECON1bits
	global	_INDF
	global	_TMR0
	global	_PCL
	global	_STATUS
	global	_FSR
	global	_PORTA
	global	_PORTC
	global	_PCLATH
	global	_INTCON
	global	_PIR1
	global	_TMR1
	global	_TMR1L
	global	_TMR1H
	global	_T1CON
	global	_CMCON
	global	_OPTION_REG
	global	_TRISA
	global	_TRISC
	global	_PIE1
	global	_PCON
	global	_OSCCAL
	global	_WPU
	global	_WPUA
	global	_IOC
	global	_IOCA
	global	_VRCON
	global	_EEDAT
	global	_EEDATA
	global	_EEADR
	global	_EECON1
	global	_EECON2

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16f630_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16f630_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16f630_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f630_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f630_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16f630_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f630_7	udata_ovr	0x0007
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f630_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f630_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f630_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f630_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic16f630_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16f630_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f630_19	udata_ovr	0x0019
_CMCONbits
_CMCON
	res	1
UD_abs_pic16f630_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f630_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f630_87	udata_ovr	0x0087
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f630_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f630_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16f630_90	udata_ovr	0x0090
_OSCCALbits
_OSCCAL
	res	1
UD_abs_pic16f630_95	udata_ovr	0x0095
_WPUbits
_WPUAbits
_WPU
_WPUA
	res	1
UD_abs_pic16f630_96	udata_ovr	0x0096
_IOCbits
_IOCAbits
_IOC
_IOCA
	res	1
UD_abs_pic16f630_99	udata_ovr	0x0099
_VRCONbits
_VRCON
	res	1
UD_abs_pic16f630_9a	udata_ovr	0x009a
_EEDAT
_EEDATA
	res	1
UD_abs_pic16f630_9b	udata_ovr	0x009b
_EEADR
	res	1
UD_abs_pic16f630_9c	udata_ovr	0x009c
_EECON1bits
_EECON1
	res	1
UD_abs_pic16f630_9d	udata_ovr	0x009d
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
code_pic16f630	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
