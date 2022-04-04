;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:45 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f616.c"
	list	p=16f616
	radix dec
	include "p16f616.inc"
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
	global	_T2CONbits
	global	_CCP1CONbits
	global	_PWM1CONbits
	global	_ECCPASbits
	global	_VRCONbits
	global	_CM1CON0bits
	global	_CM2CON0bits
	global	_CM2CON1bits
	global	_ADCON0bits
	global	_OPTION_REGbits
	global	_TRISAbits
	global	_TRISCbits
	global	_PIE1bits
	global	_PCONbits
	global	_OSCTUNEbits
	global	_ANSELbits
	global	_WPUbits
	global	_WPUAbits
	global	_IOCbits
	global	_IOCAbits
	global	_SRCONbits
	global	_SRCON0bits
	global	_SRCON1bits
	global	_ADCON1bits
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
	global	_TMR2
	global	_T2CON
	global	_CCPR1
	global	_CCPR1L
	global	_CCPR1H
	global	_CCP1CON
	global	_PWM1CON
	global	_ECCPAS
	global	_VRCON
	global	_CM1CON0
	global	_CM2CON0
	global	_CM2CON1
	global	_ADRESH
	global	_ADCON0
	global	_OPTION_REG
	global	_TRISA
	global	_TRISC
	global	_PIE1
	global	_PCON
	global	_OSCTUNE
	global	_ANSEL
	global	_PR2
	global	_WPU
	global	_WPUA
	global	_IOC
	global	_IOCA
	global	_SRCON
	global	_SRCON0
	global	_SRCON1
	global	_ADRESL
	global	_ADCON1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16f616_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16f616_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16f616_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f616_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f616_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16f616_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f616_7	udata_ovr	0x0007
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f616_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f616_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f616_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f616_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic16f616_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16f616_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f616_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic16f616_12	udata_ovr	0x0012
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f616_13	udata_ovr	0x0013
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f616_14	udata_ovr	0x0014
_CCPR1H
	res	1
UD_abs_pic16f616_15	udata_ovr	0x0015
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16f616_16	udata_ovr	0x0016
_PWM1CONbits
_PWM1CON
	res	1
UD_abs_pic16f616_17	udata_ovr	0x0017
_ECCPASbits
_ECCPAS
	res	1
UD_abs_pic16f616_19	udata_ovr	0x0019
_VRCONbits
_VRCON
	res	1
UD_abs_pic16f616_1a	udata_ovr	0x001a
_CM1CON0bits
_CM1CON0
	res	1
UD_abs_pic16f616_1b	udata_ovr	0x001b
_CM2CON0bits
_CM2CON0
	res	1
UD_abs_pic16f616_1c	udata_ovr	0x001c
_CM2CON1bits
_CM2CON1
	res	1
UD_abs_pic16f616_1e	udata_ovr	0x001e
_ADRESH
	res	1
UD_abs_pic16f616_1f	udata_ovr	0x001f
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f616_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f616_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f616_87	udata_ovr	0x0087
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f616_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f616_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16f616_90	udata_ovr	0x0090
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16f616_91	udata_ovr	0x0091
_ANSELbits
_ANSEL
	res	1
UD_abs_pic16f616_92	udata_ovr	0x0092
_PR2
	res	1
UD_abs_pic16f616_95	udata_ovr	0x0095
_WPUbits
_WPUAbits
_WPU
_WPUA
	res	1
UD_abs_pic16f616_96	udata_ovr	0x0096
_IOCbits
_IOCAbits
_IOC
_IOCA
	res	1
UD_abs_pic16f616_99	udata_ovr	0x0099
_SRCONbits
_SRCON0bits
_SRCON
_SRCON0
	res	1
UD_abs_pic16f616_9a	udata_ovr	0x009a
_SRCON1bits
_SRCON1
	res	1
UD_abs_pic16f616_9e	udata_ovr	0x009e
_ADRESL
	res	1
UD_abs_pic16f616_9f	udata_ovr	0x009f
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
code_pic16f616	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
