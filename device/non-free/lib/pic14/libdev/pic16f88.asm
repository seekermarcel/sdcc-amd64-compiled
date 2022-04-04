;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:49 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f88.c"
	list	p=16f88
	radix dec
	include "p16f88.inc"
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
	global	_PIR2bits
	global	_T1CONbits
	global	_T2CONbits
	global	_SSPCONbits
	global	_CCP1CONbits
	global	_RCSTAbits
	global	_ADCON0bits
	global	_OPTION_REGbits
	global	_TRISAbits
	global	_TRISBbits
	global	_PIE1bits
	global	_PIE2bits
	global	_PCONbits
	global	_OSCCONbits
	global	_OSCTUNEbits
	global	_SSPSTATbits
	global	_TXSTAbits
	global	_ANSELbits
	global	_CMCONbits
	global	_CVRCONbits
	global	_ADCON1bits
	global	_WDTCONbits
	global	_EECON1bits
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
	global	_ADRESH
	global	_ADCON0
	global	_OPTION_REG
	global	_TRISA
	global	_TRISB
	global	_PIE1
	global	_PIE2
	global	_PCON
	global	_OSCCON
	global	_OSCTUNE
	global	_PR2
	global	_SSPADD
	global	_SSPSTAT
	global	_TXSTA
	global	_SPBRG
	global	_ANSEL
	global	_CMCON
	global	_CVRCON
	global	_ADRESL
	global	_ADCON1
	global	_WDTCON
	global	_EEDATA
	global	_EEADR
	global	_EEDATH
	global	_EEADRH
	global	_EECON1
	global	_EECON2

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16f88_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16f88_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16f88_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f88_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f88_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16f88_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f88_6	udata_ovr	0x0006
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f88_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f88_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f88_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f88_d	udata_ovr	0x000d
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f88_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic16f88_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16f88_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f88_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic16f88_12	udata_ovr	0x0012
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f88_13	udata_ovr	0x0013
_SSPBUF
	res	1
UD_abs_pic16f88_14	udata_ovr	0x0014
_SSPCONbits
_SSPCON
	res	1
UD_abs_pic16f88_15	udata_ovr	0x0015
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f88_16	udata_ovr	0x0016
_CCPR1H
	res	1
UD_abs_pic16f88_17	udata_ovr	0x0017
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16f88_18	udata_ovr	0x0018
_RCSTAbits
_RCSTA
	res	1
UD_abs_pic16f88_19	udata_ovr	0x0019
_TXREG
	res	1
UD_abs_pic16f88_1a	udata_ovr	0x001a
_RCREG
	res	1
UD_abs_pic16f88_1e	udata_ovr	0x001e
_ADRESH
	res	1
UD_abs_pic16f88_1f	udata_ovr	0x001f
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f88_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f88_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f88_86	udata_ovr	0x0086
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f88_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f88_8d	udata_ovr	0x008d
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f88_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16f88_8f	udata_ovr	0x008f
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f88_90	udata_ovr	0x0090
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16f88_92	udata_ovr	0x0092
_PR2
	res	1
UD_abs_pic16f88_93	udata_ovr	0x0093
_SSPADD
	res	1
UD_abs_pic16f88_94	udata_ovr	0x0094
_SSPSTATbits
_SSPSTAT
	res	1
UD_abs_pic16f88_98	udata_ovr	0x0098
_TXSTAbits
_TXSTA
	res	1
UD_abs_pic16f88_99	udata_ovr	0x0099
_SPBRG
	res	1
UD_abs_pic16f88_9b	udata_ovr	0x009b
_ANSELbits
_ANSEL
	res	1
UD_abs_pic16f88_9c	udata_ovr	0x009c
_CMCONbits
_CMCON
	res	1
UD_abs_pic16f88_9d	udata_ovr	0x009d
_CVRCONbits
_CVRCON
	res	1
UD_abs_pic16f88_9e	udata_ovr	0x009e
_ADRESL
	res	1
UD_abs_pic16f88_9f	udata_ovr	0x009f
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f88_105	udata_ovr	0x0105
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f88_10c	udata_ovr	0x010c
_EEDATA
	res	1
UD_abs_pic16f88_10d	udata_ovr	0x010d
_EEADR
	res	1
UD_abs_pic16f88_10e	udata_ovr	0x010e
_EEDATH
	res	1
UD_abs_pic16f88_10f	udata_ovr	0x010f
_EEADRH
	res	1
UD_abs_pic16f88_18c	udata_ovr	0x018c
_EECON1bits
_EECON1
	res	1
UD_abs_pic16f88_18d	udata_ovr	0x018d
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
code_pic16f88	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
