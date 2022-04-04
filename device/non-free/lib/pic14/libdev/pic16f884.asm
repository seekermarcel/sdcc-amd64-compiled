;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:49 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f884.c"
	list	p=16f884
	radix dec
	include "p16f884.inc"
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
	global	_PORTDbits
	global	_PORTEbits
	global	_INTCONbits
	global	_PIR1bits
	global	_PIR2bits
	global	_T1CONbits
	global	_T2CONbits
	global	_SSPCONbits
	global	_CCP1CONbits
	global	_RCSTAbits
	global	_CCP2CONbits
	global	_ADCON0bits
	global	_OPTION_REGbits
	global	_TRISAbits
	global	_TRISBbits
	global	_TRISCbits
	global	_TRISDbits
	global	_TRISEbits
	global	_PIE1bits
	global	_PIE2bits
	global	_PCONbits
	global	_OSCCONbits
	global	_OSCTUNEbits
	global	_SSPCON2bits
	global	_MSKbits
	global	_SSPMSKbits
	global	_SSPSTATbits
	global	_WPUBbits
	global	_IOCBbits
	global	_VRCONbits
	global	_TXSTAbits
	global	_SPBRGbits
	global	_SPBRGHbits
	global	_PWM1CONbits
	global	_ECCPASbits
	global	_PSTRCONbits
	global	_ADCON1bits
	global	_WDTCONbits
	global	_CM1CON0bits
	global	_CM2CON0bits
	global	_CM2CON1bits
	global	_SRCONbits
	global	_BAUDCTLbits
	global	_ANSELbits
	global	_ANSELHbits
	global	_EECON1bits
	global	_INDF
	global	_TMR0
	global	_PCL
	global	_STATUS
	global	_FSR
	global	_PORTA
	global	_PORTB
	global	_PORTC
	global	_PORTD
	global	_PORTE
	global	_PCLATH
	global	_INTCON
	global	_PIR1
	global	_PIR2
	global	_TMR1
	global	_TMR1L
	global	_TMR1H
	global	_T1CON
	global	_TMR2
	global	_T2CON
	global	_SSPBUF
	global	_SSPCON
	global	_CCPR1
	global	_CCPR1L
	global	_CCPR1H
	global	_CCP1CON
	global	_RCSTA
	global	_TXREG
	global	_RCREG
	global	_CCPR2
	global	_CCPR2L
	global	_CCPR2H
	global	_CCP2CON
	global	_ADRESH
	global	_ADCON0
	global	_OPTION_REG
	global	_TRISA
	global	_TRISB
	global	_TRISC
	global	_TRISD
	global	_TRISE
	global	_PIE1
	global	_PIE2
	global	_PCON
	global	_OSCCON
	global	_OSCTUNE
	global	_SSPCON2
	global	_PR2
	global	_MSK
	global	_SSPADD
	global	_SSPMSK
	global	_SSPSTAT
	global	_WPUB
	global	_IOCB
	global	_VRCON
	global	_TXSTA
	global	_SPBRG
	global	_SPBRGH
	global	_PWM1CON
	global	_ECCPAS
	global	_PSTRCON
	global	_ADRESL
	global	_ADCON1
	global	_WDTCON
	global	_CM1CON0
	global	_CM2CON0
	global	_CM2CON1
	global	_EEDAT
	global	_EEDATA
	global	_EEADR
	global	_EEDATH
	global	_EEADRH
	global	_SRCON
	global	_BAUDCTL
	global	_ANSEL
	global	_ANSELH
	global	_EECON1
	global	_EECON2

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16f884_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16f884_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16f884_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f884_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f884_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16f884_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f884_6	udata_ovr	0x0006
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f884_7	udata_ovr	0x0007
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f884_8	udata_ovr	0x0008
_PORTDbits
_PORTD
	res	1
UD_abs_pic16f884_9	udata_ovr	0x0009
_PORTEbits
_PORTE
	res	1
UD_abs_pic16f884_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f884_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f884_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f884_d	udata_ovr	0x000d
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f884_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic16f884_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16f884_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f884_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic16f884_12	udata_ovr	0x0012
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f884_13	udata_ovr	0x0013
_SSPBUF
	res	1
UD_abs_pic16f884_14	udata_ovr	0x0014
_SSPCONbits
_SSPCON
	res	1
UD_abs_pic16f884_15	udata_ovr	0x0015
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f884_16	udata_ovr	0x0016
_CCPR1H
	res	1
UD_abs_pic16f884_17	udata_ovr	0x0017
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16f884_18	udata_ovr	0x0018
_RCSTAbits
_RCSTA
	res	1
UD_abs_pic16f884_19	udata_ovr	0x0019
_TXREG
	res	1
UD_abs_pic16f884_1a	udata_ovr	0x001a
_RCREG
	res	1
UD_abs_pic16f884_1b	udata_ovr	0x001b
_CCPR2
_CCPR2L
	res	1
UD_abs_pic16f884_1c	udata_ovr	0x001c
_CCPR2H
	res	1
UD_abs_pic16f884_1d	udata_ovr	0x001d
_CCP2CONbits
_CCP2CON
	res	1
UD_abs_pic16f884_1e	udata_ovr	0x001e
_ADRESH
	res	1
UD_abs_pic16f884_1f	udata_ovr	0x001f
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f884_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f884_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f884_86	udata_ovr	0x0086
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f884_87	udata_ovr	0x0087
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f884_88	udata_ovr	0x0088
_TRISDbits
_TRISD
	res	1
UD_abs_pic16f884_89	udata_ovr	0x0089
_TRISEbits
_TRISE
	res	1
UD_abs_pic16f884_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f884_8d	udata_ovr	0x008d
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f884_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16f884_8f	udata_ovr	0x008f
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f884_90	udata_ovr	0x0090
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16f884_91	udata_ovr	0x0091
_SSPCON2bits
_SSPCON2
	res	1
UD_abs_pic16f884_92	udata_ovr	0x0092
_PR2
	res	1
UD_abs_pic16f884_93	udata_ovr	0x0093
_MSKbits
_SSPMSKbits
_MSK
_SSPADD
_SSPMSK
	res	1
UD_abs_pic16f884_94	udata_ovr	0x0094
_SSPSTATbits
_SSPSTAT
	res	1
UD_abs_pic16f884_95	udata_ovr	0x0095
_WPUBbits
_WPUB
	res	1
UD_abs_pic16f884_96	udata_ovr	0x0096
_IOCBbits
_IOCB
	res	1
UD_abs_pic16f884_97	udata_ovr	0x0097
_VRCONbits
_VRCON
	res	1
UD_abs_pic16f884_98	udata_ovr	0x0098
_TXSTAbits
_TXSTA
	res	1
UD_abs_pic16f884_99	udata_ovr	0x0099
_SPBRGbits
_SPBRG
	res	1
UD_abs_pic16f884_9a	udata_ovr	0x009a
_SPBRGHbits
_SPBRGH
	res	1
UD_abs_pic16f884_9b	udata_ovr	0x009b
_PWM1CONbits
_PWM1CON
	res	1
UD_abs_pic16f884_9c	udata_ovr	0x009c
_ECCPASbits
_ECCPAS
	res	1
UD_abs_pic16f884_9d	udata_ovr	0x009d
_PSTRCONbits
_PSTRCON
	res	1
UD_abs_pic16f884_9e	udata_ovr	0x009e
_ADRESL
	res	1
UD_abs_pic16f884_9f	udata_ovr	0x009f
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f884_105	udata_ovr	0x0105
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f884_107	udata_ovr	0x0107
_CM1CON0bits
_CM1CON0
	res	1
UD_abs_pic16f884_108	udata_ovr	0x0108
_CM2CON0bits
_CM2CON0
	res	1
UD_abs_pic16f884_109	udata_ovr	0x0109
_CM2CON1bits
_CM2CON1
	res	1
UD_abs_pic16f884_10c	udata_ovr	0x010c
_EEDAT
_EEDATA
	res	1
UD_abs_pic16f884_10d	udata_ovr	0x010d
_EEADR
	res	1
UD_abs_pic16f884_10e	udata_ovr	0x010e
_EEDATH
	res	1
UD_abs_pic16f884_10f	udata_ovr	0x010f
_EEADRH
	res	1
UD_abs_pic16f884_185	udata_ovr	0x0185
_SRCONbits
_SRCON
	res	1
UD_abs_pic16f884_187	udata_ovr	0x0187
_BAUDCTLbits
_BAUDCTL
	res	1
UD_abs_pic16f884_188	udata_ovr	0x0188
_ANSELbits
_ANSEL
	res	1
UD_abs_pic16f884_189	udata_ovr	0x0189
_ANSELHbits
_ANSELH
	res	1
UD_abs_pic16f884_18c	udata_ovr	0x018c
_EECON1bits
_EECON1
	res	1
UD_abs_pic16f884_18d	udata_ovr	0x018d
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
code_pic16f884	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
