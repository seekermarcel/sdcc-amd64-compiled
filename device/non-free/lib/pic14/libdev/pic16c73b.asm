;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:32 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16c73b.c"
	list	p=16c73b
	radix dec
	include "p16c73b.inc"
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
	global	_PIE1bits
	global	_PIE2bits
	global	_PCONbits
	global	_SSPSTATbits
	global	_TXSTAbits
	global	_ADCON1bits
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
	global	_PIE1
	global	_PIE2
	global	_PCON
	global	_PR2
	global	_SSPADD
	global	_SSPSTAT
	global	_TXSTA
	global	_SPBRG
	global	_ADCON1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16c73b_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16c73b_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16c73b_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16c73b_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16c73b_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16c73b_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16c73b_6	udata_ovr	0x0006
_PORTBbits
_PORTB
	res	1
UD_abs_pic16c73b_7	udata_ovr	0x0007
_PORTCbits
_PORTC
	res	1
UD_abs_pic16c73b_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16c73b_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16c73b_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16c73b_d	udata_ovr	0x000d
_PIR2bits
_PIR2
	res	1
UD_abs_pic16c73b_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic16c73b_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16c73b_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic16c73b_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic16c73b_12	udata_ovr	0x0012
_T2CONbits
_T2CON
	res	1
UD_abs_pic16c73b_13	udata_ovr	0x0013
_SSPBUF
	res	1
UD_abs_pic16c73b_14	udata_ovr	0x0014
_SSPCONbits
_SSPCON
	res	1
UD_abs_pic16c73b_15	udata_ovr	0x0015
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16c73b_16	udata_ovr	0x0016
_CCPR1H
	res	1
UD_abs_pic16c73b_17	udata_ovr	0x0017
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16c73b_18	udata_ovr	0x0018
_RCSTAbits
_RCSTA
	res	1
UD_abs_pic16c73b_19	udata_ovr	0x0019
_TXREG
	res	1
UD_abs_pic16c73b_1a	udata_ovr	0x001a
_RCREG
	res	1
UD_abs_pic16c73b_1b	udata_ovr	0x001b
_CCPR2
_CCPR2L
	res	1
UD_abs_pic16c73b_1c	udata_ovr	0x001c
_CCPR2H
	res	1
UD_abs_pic16c73b_1d	udata_ovr	0x001d
_CCP2CONbits
_CCP2CON
	res	1
UD_abs_pic16c73b_1e	udata_ovr	0x001e
_ADRES
	res	1
UD_abs_pic16c73b_1f	udata_ovr	0x001f
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16c73b_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16c73b_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16c73b_86	udata_ovr	0x0086
_TRISBbits
_TRISB
	res	1
UD_abs_pic16c73b_87	udata_ovr	0x0087
_TRISCbits
_TRISC
	res	1
UD_abs_pic16c73b_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16c73b_8d	udata_ovr	0x008d
_PIE2bits
_PIE2
	res	1
UD_abs_pic16c73b_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16c73b_92	udata_ovr	0x0092
_PR2
	res	1
UD_abs_pic16c73b_93	udata_ovr	0x0093
_SSPADD
	res	1
UD_abs_pic16c73b_94	udata_ovr	0x0094
_SSPSTATbits
_SSPSTAT
	res	1
UD_abs_pic16c73b_98	udata_ovr	0x0098
_TXSTAbits
_TXSTA
	res	1
UD_abs_pic16c73b_99	udata_ovr	0x0099
_SPBRG
	res	1
UD_abs_pic16c73b_9f	udata_ovr	0x009f
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
code_pic16c73b	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
