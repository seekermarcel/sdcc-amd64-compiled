;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:45 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f631.c"
	list	p=16f631
	radix dec
	include "p16f631.inc"
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
	global	_PIR2bits
	global	_T1CONbits
	global	_OPTION_REGbits
	global	_TRISAbits
	global	_TRISBbits
	global	_TRISCbits
	global	_PIE1bits
	global	_PIE2bits
	global	_PCONbits
	global	_OSCCONbits
	global	_OSCTUNEbits
	global	_WPUbits
	global	_WPUAbits
	global	_IOCbits
	global	_IOCAbits
	global	_WDTCONbits
	global	_WPUBbits
	global	_IOCBbits
	global	_VRCONbits
	global	_CM1CON0bits
	global	_CM2CON0bits
	global	_CM2CON1bits
	global	_ANSELbits
	global	_EECON1bits
	global	_SRCONbits
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
	global	_PIR2
	global	_TMR1
	global	_TMR1L
	global	_TMR1H
	global	_T1CON
	global	_OPTION_REG
	global	_TRISA
	global	_TRISB
	global	_TRISC
	global	_PIE1
	global	_PIE2
	global	_PCON
	global	_OSCCON
	global	_OSCTUNE
	global	_WPU
	global	_WPUA
	global	_IOC
	global	_IOCA
	global	_WDTCON
	global	_EEDAT
	global	_EEDATA
	global	_EEADR
	global	_WPUB
	global	_IOCB
	global	_VRCON
	global	_CM1CON0
	global	_CM2CON0
	global	_CM2CON1
	global	_ANSEL
	global	_EECON1
	global	_EECON2
	global	_SRCON

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16f631_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16f631_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16f631_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f631_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f631_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16f631_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f631_6	udata_ovr	0x0006
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f631_7	udata_ovr	0x0007
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f631_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f631_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f631_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f631_d	udata_ovr	0x000d
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f631_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic16f631_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16f631_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f631_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f631_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f631_86	udata_ovr	0x0086
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f631_87	udata_ovr	0x0087
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f631_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f631_8d	udata_ovr	0x008d
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f631_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16f631_8f	udata_ovr	0x008f
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f631_90	udata_ovr	0x0090
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16f631_95	udata_ovr	0x0095
_WPUbits
_WPUAbits
_WPU
_WPUA
	res	1
UD_abs_pic16f631_96	udata_ovr	0x0096
_IOCbits
_IOCAbits
_IOC
_IOCA
	res	1
UD_abs_pic16f631_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f631_10c	udata_ovr	0x010c
_EEDAT
_EEDATA
	res	1
UD_abs_pic16f631_10d	udata_ovr	0x010d
_EEADR
	res	1
UD_abs_pic16f631_115	udata_ovr	0x0115
_WPUBbits
_WPUB
	res	1
UD_abs_pic16f631_116	udata_ovr	0x0116
_IOCBbits
_IOCB
	res	1
UD_abs_pic16f631_118	udata_ovr	0x0118
_VRCONbits
_VRCON
	res	1
UD_abs_pic16f631_119	udata_ovr	0x0119
_CM1CON0bits
_CM1CON0
	res	1
UD_abs_pic16f631_11a	udata_ovr	0x011a
_CM2CON0bits
_CM2CON0
	res	1
UD_abs_pic16f631_11b	udata_ovr	0x011b
_CM2CON1bits
_CM2CON1
	res	1
UD_abs_pic16f631_11e	udata_ovr	0x011e
_ANSELbits
_ANSEL
	res	1
UD_abs_pic16f631_18c	udata_ovr	0x018c
_EECON1bits
_EECON1
	res	1
UD_abs_pic16f631_18d	udata_ovr	0x018d
_EECON2
	res	1
UD_abs_pic16f631_19e	udata_ovr	0x019e
_SRCONbits
_SRCON
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
code_pic16f631	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
