;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:30 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic12f617.c"
	list	p=12f617
	radix dec
	include "p12f617.inc"
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
	global	_PORTAbits
	global	_INTCONbits
	global	_PIR1bits
	global	_T1CONbits
	global	_T2CONbits
	global	_CCP1CONbits
	global	_PWM1CONbits
	global	_ECCPASbits
	global	_VRCONbits
	global	_CMCON0bits
	global	_CMCON1bits
	global	_ADCON0bits
	global	_OPTION_REGbits
	global	_TRISAbits
	global	_TRISIObits
	global	_PIE1bits
	global	_PCONbits
	global	_OSCTUNEbits
	global	_APFCONbits
	global	_WPUbits
	global	_WPUAbits
	global	_IOCbits
	global	_IOCAbits
	global	_PMCON1bits
	global	_PMADRLbits
	global	_PMADRHbits
	global	_PMDATLbits
	global	_ANSELbits
	global	_INDF
	global	_TMR0
	global	_PCL
	global	_STATUS
	global	_FSR
	global	_GPIO
	global	_PORTA
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
	global	_CMCON0
	global	_CMCON1
	global	_ADRESH
	global	_ADCON0
	global	_OPTION_REG
	global	_TRISA
	global	_TRISIO
	global	_PIE1
	global	_PCON
	global	_OSCTUNE
	global	_PR2
	global	_APFCON
	global	_WPU
	global	_WPUA
	global	_IOC
	global	_IOCA
	global	_PMCON1
	global	_PMCON2
	global	_PMADRL
	global	_PMADRH
	global	_PMDATL
	global	_PMDATH
	global	_ADRESL
	global	_ANSEL

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic12f617_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic12f617_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic12f617_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic12f617_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic12f617_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic12f617_5	udata_ovr	0x0005
_GPIObits
_PORTAbits
_GPIO
_PORTA
	res	1
UD_abs_pic12f617_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic12f617_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic12f617_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic12f617_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic12f617_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic12f617_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic12f617_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic12f617_12	udata_ovr	0x0012
_T2CONbits
_T2CON
	res	1
UD_abs_pic12f617_13	udata_ovr	0x0013
_CCPR1
_CCPR1L
	res	1
UD_abs_pic12f617_14	udata_ovr	0x0014
_CCPR1H
	res	1
UD_abs_pic12f617_15	udata_ovr	0x0015
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic12f617_16	udata_ovr	0x0016
_PWM1CONbits
_PWM1CON
	res	1
UD_abs_pic12f617_17	udata_ovr	0x0017
_ECCPASbits
_ECCPAS
	res	1
UD_abs_pic12f617_19	udata_ovr	0x0019
_VRCONbits
_VRCON
	res	1
UD_abs_pic12f617_1a	udata_ovr	0x001a
_CMCON0bits
_CMCON0
	res	1
UD_abs_pic12f617_1c	udata_ovr	0x001c
_CMCON1bits
_CMCON1
	res	1
UD_abs_pic12f617_1e	udata_ovr	0x001e
_ADRESH
	res	1
UD_abs_pic12f617_1f	udata_ovr	0x001f
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic12f617_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic12f617_85	udata_ovr	0x0085
_TRISAbits
_TRISIObits
_TRISA
_TRISIO
	res	1
UD_abs_pic12f617_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic12f617_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic12f617_90	udata_ovr	0x0090
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic12f617_92	udata_ovr	0x0092
_PR2
	res	1
UD_abs_pic12f617_93	udata_ovr	0x0093
_APFCONbits
_APFCON
	res	1
UD_abs_pic12f617_95	udata_ovr	0x0095
_WPUbits
_WPUAbits
_WPU
_WPUA
	res	1
UD_abs_pic12f617_96	udata_ovr	0x0096
_IOCbits
_IOCAbits
_IOC
_IOCA
	res	1
UD_abs_pic12f617_98	udata_ovr	0x0098
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic12f617_99	udata_ovr	0x0099
_PMCON2
	res	1
UD_abs_pic12f617_9a	udata_ovr	0x009a
_PMADRLbits
_PMADRL
	res	1
UD_abs_pic12f617_9b	udata_ovr	0x009b
_PMADRHbits
_PMADRH
	res	1
UD_abs_pic12f617_9c	udata_ovr	0x009c
_PMDATLbits
_PMDATL
	res	1
UD_abs_pic12f617_9d	udata_ovr	0x009d
_PMDATH
	res	1
UD_abs_pic12f617_9e	udata_ovr	0x009e
_ADRESL
	res	1
UD_abs_pic12f617_9f	udata_ovr	0x009f
_ANSELbits
_ANSEL
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
code_pic12f617	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
