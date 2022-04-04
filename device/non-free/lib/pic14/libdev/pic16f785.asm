;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:48 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f785.c"
	list	p=16f785
	radix dec
	include "p16f785.inc"
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
	global	_PIR1bits
	global	_T1CONbits
	global	_T2CONbits
	global	_CCP1CONbits
	global	_WDTCONbits
	global	_ADCON0bits
	global	_OPTION_REGbits
	global	_TRISAbits
	global	_TRISBbits
	global	_TRISCbits
	global	_PIE1bits
	global	_PCONbits
	global	_OSCCONbits
	global	_OSCTUNEbits
	global	_ANSELbits
	global	_ANSEL0bits
	global	_ANSEL1bits
	global	_WPUbits
	global	_WPUAbits
	global	_IOCbits
	global	_IOCAbits
	global	_REFCONbits
	global	_VRCONbits
	global	_EECON1bits
	global	_ADCON1bits
	global	_PWMCON1bits
	global	_PWMCON0bits
	global	_PWMCLKbits
	global	_PWMPH1bits
	global	_PWMPH2bits
	global	_CM1CON0bits
	global	_CM2CON0bits
	global	_CM2CON1bits
	global	_OPA1CONbits
	global	_OPA2CONbits
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
	global	_PIR1
	global	_TMR1
	global	_TMR1L
	global	_TMR1H
	global	_T1CON
	global	_TMR2
	global	_T2CON
	global	_CCPR
	global	_CCPR1L
	global	_CCPR1H
	global	_CCP1CON
	global	_WDTCON
	global	_ADRESH
	global	_ADCON0
	global	_OPTION_REG
	global	_TRISA
	global	_TRISB
	global	_TRISC
	global	_PIE1
	global	_PCON
	global	_OSCCON
	global	_OSCTUNE
	global	_ANSEL
	global	_ANSEL0
	global	_PR2
	global	_ANSEL1
	global	_WPU
	global	_WPUA
	global	_IOC
	global	_IOCA
	global	_REFCON
	global	_VRCON
	global	_EEDAT
	global	_EEDATA
	global	_EEADR
	global	_EECON1
	global	_EECON2
	global	_ADRESL
	global	_ADCON1
	global	_PWMCON1
	global	_PWMCON0
	global	_PWMCLK
	global	_PWMPH1
	global	_PWMPH2
	global	_CM1CON0
	global	_CM2CON0
	global	_CM2CON1
	global	_OPA1CON
	global	_OPA2CON

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16f785_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16f785_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16f785_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f785_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f785_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16f785_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f785_6	udata_ovr	0x0006
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f785_7	udata_ovr	0x0007
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f785_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f785_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f785_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f785_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic16f785_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16f785_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f785_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic16f785_12	udata_ovr	0x0012
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f785_13	udata_ovr	0x0013
_CCPR
_CCPR1L
	res	1
UD_abs_pic16f785_14	udata_ovr	0x0014
_CCPR1H
	res	1
UD_abs_pic16f785_15	udata_ovr	0x0015
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16f785_18	udata_ovr	0x0018
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f785_1e	udata_ovr	0x001e
_ADRESH
	res	1
UD_abs_pic16f785_1f	udata_ovr	0x001f
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f785_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f785_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f785_86	udata_ovr	0x0086
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f785_87	udata_ovr	0x0087
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f785_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f785_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16f785_8f	udata_ovr	0x008f
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f785_90	udata_ovr	0x0090
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16f785_91	udata_ovr	0x0091
_ANSELbits
_ANSEL0bits
_ANSEL
_ANSEL0
	res	1
UD_abs_pic16f785_92	udata_ovr	0x0092
_PR2
	res	1
UD_abs_pic16f785_93	udata_ovr	0x0093
_ANSEL1bits
_ANSEL1
	res	1
UD_abs_pic16f785_95	udata_ovr	0x0095
_WPUbits
_WPUAbits
_WPU
_WPUA
	res	1
UD_abs_pic16f785_96	udata_ovr	0x0096
_IOCbits
_IOCAbits
_IOC
_IOCA
	res	1
UD_abs_pic16f785_98	udata_ovr	0x0098
_REFCONbits
_REFCON
	res	1
UD_abs_pic16f785_99	udata_ovr	0x0099
_VRCONbits
_VRCON
	res	1
UD_abs_pic16f785_9a	udata_ovr	0x009a
_EEDAT
_EEDATA
	res	1
UD_abs_pic16f785_9b	udata_ovr	0x009b
_EEADR
	res	1
UD_abs_pic16f785_9c	udata_ovr	0x009c
_EECON1bits
_EECON1
	res	1
UD_abs_pic16f785_9d	udata_ovr	0x009d
_EECON2
	res	1
UD_abs_pic16f785_9e	udata_ovr	0x009e
_ADRESL
	res	1
UD_abs_pic16f785_9f	udata_ovr	0x009f
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f785_110	udata_ovr	0x0110
_PWMCON1bits
_PWMCON1
	res	1
UD_abs_pic16f785_111	udata_ovr	0x0111
_PWMCON0bits
_PWMCON0
	res	1
UD_abs_pic16f785_112	udata_ovr	0x0112
_PWMCLKbits
_PWMCLK
	res	1
UD_abs_pic16f785_113	udata_ovr	0x0113
_PWMPH1bits
_PWMPH1
	res	1
UD_abs_pic16f785_114	udata_ovr	0x0114
_PWMPH2bits
_PWMPH2
	res	1
UD_abs_pic16f785_119	udata_ovr	0x0119
_CM1CON0bits
_CM1CON0
	res	1
UD_abs_pic16f785_11a	udata_ovr	0x011a
_CM2CON0bits
_CM2CON0
	res	1
UD_abs_pic16f785_11b	udata_ovr	0x011b
_CM2CON1bits
_CM2CON1
	res	1
UD_abs_pic16f785_11c	udata_ovr	0x011c
_OPA1CONbits
_OPA1CON
	res	1
UD_abs_pic16f785_11d	udata_ovr	0x011d
_OPA2CONbits
_OPA2CON
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
code_pic16f785	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
