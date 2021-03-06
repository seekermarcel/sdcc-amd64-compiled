;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:32 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16c770.c"
	list	p=16c770
	radix dec
	include "p16c770.inc"
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
	global	_ADCON0bits
	global	_OPTION_REGbits
	global	_TRISAbits
	global	_TRISBbits
	global	_PIE1bits
	global	_PIE2bits
	global	_PCONbits
	global	_SSPCON2bits
	global	_SSPSTATbits
	global	_WPUBbits
	global	_IOCBbits
	global	_REFCONbits
	global	_LVDCONbits
	global	_ANSELbits
	global	_ADCON1bits
	global	_PMCON1bits
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
	global	_ADRESH
	global	_ADCON0
	global	_OPTION_REG
	global	_TRISA
	global	_TRISB
	global	_PIE1
	global	_PIE2
	global	_PCON
	global	_SSPCON2
	global	_PR2
	global	_SSPADD
	global	_SSPSTAT
	global	_WPUB
	global	_IOCB
	global	_P1DEL
	global	_REFCON
	global	_LVDCON
	global	_ANSEL
	global	_ADRESL
	global	_ADCON1
	global	_PMDATL
	global	_PMADRL
	global	_PMDATH
	global	_PMADRH
	global	_PMCON1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16c770_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16c770_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16c770_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16c770_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16c770_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16c770_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16c770_6	udata_ovr	0x0006
_PORTBbits
_PORTB
	res	1
UD_abs_pic16c770_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16c770_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16c770_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16c770_d	udata_ovr	0x000d
_PIR2bits
_PIR2
	res	1
UD_abs_pic16c770_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic16c770_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16c770_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic16c770_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic16c770_12	udata_ovr	0x0012
_T2CONbits
_T2CON
	res	1
UD_abs_pic16c770_13	udata_ovr	0x0013
_SSPBUF
	res	1
UD_abs_pic16c770_14	udata_ovr	0x0014
_SSPCONbits
_SSPCON
	res	1
UD_abs_pic16c770_15	udata_ovr	0x0015
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16c770_16	udata_ovr	0x0016
_CCPR1H
	res	1
UD_abs_pic16c770_17	udata_ovr	0x0017
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16c770_1e	udata_ovr	0x001e
_ADRESH
	res	1
UD_abs_pic16c770_1f	udata_ovr	0x001f
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16c770_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16c770_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16c770_86	udata_ovr	0x0086
_TRISBbits
_TRISB
	res	1
UD_abs_pic16c770_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16c770_8d	udata_ovr	0x008d
_PIE2bits
_PIE2
	res	1
UD_abs_pic16c770_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16c770_91	udata_ovr	0x0091
_SSPCON2bits
_SSPCON2
	res	1
UD_abs_pic16c770_92	udata_ovr	0x0092
_PR2
	res	1
UD_abs_pic16c770_93	udata_ovr	0x0093
_SSPADD
	res	1
UD_abs_pic16c770_94	udata_ovr	0x0094
_SSPSTATbits
_SSPSTAT
	res	1
UD_abs_pic16c770_95	udata_ovr	0x0095
_WPUBbits
_WPUB
	res	1
UD_abs_pic16c770_96	udata_ovr	0x0096
_IOCBbits
_IOCB
	res	1
UD_abs_pic16c770_97	udata_ovr	0x0097
_P1DEL
	res	1
UD_abs_pic16c770_9b	udata_ovr	0x009b
_REFCONbits
_REFCON
	res	1
UD_abs_pic16c770_9c	udata_ovr	0x009c
_LVDCONbits
_LVDCON
	res	1
UD_abs_pic16c770_9d	udata_ovr	0x009d
_ANSELbits
_ANSEL
	res	1
UD_abs_pic16c770_9e	udata_ovr	0x009e
_ADRESL
	res	1
UD_abs_pic16c770_9f	udata_ovr	0x009f
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16c770_10c	udata_ovr	0x010c
_PMDATL
	res	1
UD_abs_pic16c770_10d	udata_ovr	0x010d
_PMADRL
	res	1
UD_abs_pic16c770_10e	udata_ovr	0x010e
_PMDATH
	res	1
UD_abs_pic16c770_10f	udata_ovr	0x010f
_PMADRH
	res	1
UD_abs_pic16c770_18c	udata_ovr	0x018c
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
code_pic16c770	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
