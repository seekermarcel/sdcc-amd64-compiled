;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:47 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f727.c"
	list	p=16f727
	radix dec
	include "p16f727.inc"
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
	global	_T1GCONbits
	global	_OSCCONbits
	global	_OSCTUNEbits
	global	_SSPSTATbits
	global	_WPUbits
	global	_WPUBbits
	global	_IOCbits
	global	_IOCBbits
	global	_TXSTAbits
	global	_APFCONbits
	global	_FVRCONbits
	global	_ADCON1bits
	global	_CPSCON0bits
	global	_CPSCON1bits
	global	_ANSELAbits
	global	_ANSELBbits
	global	_ANSELDbits
	global	_ANSELEbits
	global	_PMCON1bits
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
	global	_ADRES
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
	global	_T1GCON
	global	_OSCCON
	global	_OSCTUNE
	global	_PR2
	global	_SSPADD
	global	_SSPMSK
	global	_SSPSTAT
	global	_WPU
	global	_WPUB
	global	_IOC
	global	_IOCB
	global	_TXSTA
	global	_SPBRG
	global	_APFCON
	global	_FVRCON
	global	_ADCON1
	global	_CPSCON0
	global	_CPSCON1
	global	_PMDATA
	global	_PMDATL
	global	_PMADR
	global	_PMADRL
	global	_PMDATH
	global	_PMADRH
	global	_ANSELA
	global	_ANSELB
	global	_ANSELD
	global	_ANSELE
	global	_PMCON1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16f727_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16f727_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16f727_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f727_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f727_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16f727_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f727_6	udata_ovr	0x0006
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f727_7	udata_ovr	0x0007
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f727_8	udata_ovr	0x0008
_PORTDbits
_PORTD
	res	1
UD_abs_pic16f727_9	udata_ovr	0x0009
_PORTEbits
_PORTE
	res	1
UD_abs_pic16f727_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f727_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f727_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f727_d	udata_ovr	0x000d
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f727_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic16f727_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16f727_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f727_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic16f727_12	udata_ovr	0x0012
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f727_13	udata_ovr	0x0013
_SSPBUF
	res	1
UD_abs_pic16f727_14	udata_ovr	0x0014
_SSPCONbits
_SSPCON
	res	1
UD_abs_pic16f727_15	udata_ovr	0x0015
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f727_16	udata_ovr	0x0016
_CCPR1H
	res	1
UD_abs_pic16f727_17	udata_ovr	0x0017
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16f727_18	udata_ovr	0x0018
_RCSTAbits
_RCSTA
	res	1
UD_abs_pic16f727_19	udata_ovr	0x0019
_TXREG
	res	1
UD_abs_pic16f727_1a	udata_ovr	0x001a
_RCREG
	res	1
UD_abs_pic16f727_1b	udata_ovr	0x001b
_CCPR2
_CCPR2L
	res	1
UD_abs_pic16f727_1c	udata_ovr	0x001c
_CCPR2H
	res	1
UD_abs_pic16f727_1d	udata_ovr	0x001d
_CCP2CONbits
_CCP2CON
	res	1
UD_abs_pic16f727_1e	udata_ovr	0x001e
_ADRES
	res	1
UD_abs_pic16f727_1f	udata_ovr	0x001f
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f727_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f727_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f727_86	udata_ovr	0x0086
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f727_87	udata_ovr	0x0087
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f727_88	udata_ovr	0x0088
_TRISDbits
_TRISD
	res	1
UD_abs_pic16f727_89	udata_ovr	0x0089
_TRISEbits
_TRISE
	res	1
UD_abs_pic16f727_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f727_8d	udata_ovr	0x008d
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f727_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16f727_8f	udata_ovr	0x008f
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic16f727_90	udata_ovr	0x0090
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f727_91	udata_ovr	0x0091
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16f727_92	udata_ovr	0x0092
_PR2
	res	1
UD_abs_pic16f727_93	udata_ovr	0x0093
_SSPADD
_SSPMSK
	res	1
UD_abs_pic16f727_94	udata_ovr	0x0094
_SSPSTATbits
_SSPSTAT
	res	1
UD_abs_pic16f727_95	udata_ovr	0x0095
_WPUbits
_WPUBbits
_WPU
_WPUB
	res	1
UD_abs_pic16f727_96	udata_ovr	0x0096
_IOCbits
_IOCBbits
_IOC
_IOCB
	res	1
UD_abs_pic16f727_98	udata_ovr	0x0098
_TXSTAbits
_TXSTA
	res	1
UD_abs_pic16f727_99	udata_ovr	0x0099
_SPBRG
	res	1
UD_abs_pic16f727_9c	udata_ovr	0x009c
_APFCONbits
_APFCON
	res	1
UD_abs_pic16f727_9d	udata_ovr	0x009d
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic16f727_9f	udata_ovr	0x009f
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f727_108	udata_ovr	0x0108
_CPSCON0bits
_CPSCON0
	res	1
UD_abs_pic16f727_109	udata_ovr	0x0109
_CPSCON1bits
_CPSCON1
	res	1
UD_abs_pic16f727_10c	udata_ovr	0x010c
_PMDATA
_PMDATL
	res	1
UD_abs_pic16f727_10d	udata_ovr	0x010d
_PMADR
_PMADRL
	res	1
UD_abs_pic16f727_10e	udata_ovr	0x010e
_PMDATH
	res	1
UD_abs_pic16f727_10f	udata_ovr	0x010f
_PMADRH
	res	1
UD_abs_pic16f727_185	udata_ovr	0x0185
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic16f727_186	udata_ovr	0x0186
_ANSELBbits
_ANSELB
	res	1
UD_abs_pic16f727_188	udata_ovr	0x0188
_ANSELDbits
_ANSELD
	res	1
UD_abs_pic16f727_189	udata_ovr	0x0189
_ANSELEbits
_ANSELE
	res	1
UD_abs_pic16f727_18c	udata_ovr	0x018c
_PMCON1bits
_PMCON1
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
code_pic16f727	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
