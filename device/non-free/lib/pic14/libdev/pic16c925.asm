;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:33 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16c925.c"
	list	p=16c925
	radix dec
	include "p16c925.inc"
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
	global	_T1CONbits
	global	_T2CONbits
	global	_SSPCONbits
	global	_CCP1CONbits
	global	_ADCON0bits
	global	_OPTION_REGbits
	global	_TRISAbits
	global	_TRISBbits
	global	_TRISCbits
	global	_TRISDbits
	global	_TRISEbits
	global	_PIE1bits
	global	_PCONbits
	global	_SSPSTATbits
	global	_ADCON1bits
	global	_PORTFbits
	global	_PORTGbits
	global	_PMCON1bits
	global	_LCDSEbits
	global	_LCDPSbits
	global	_LCDCONbits
	global	_LCDD00bits
	global	_LCDD01bits
	global	_LCDD02bits
	global	_LCDD03bits
	global	_LCDD04bits
	global	_LCDD05bits
	global	_LCDD06bits
	global	_LCDD07bits
	global	_LCDD08bits
	global	_LCDD09bits
	global	_LCDD10bits
	global	_LCDD11bits
	global	_LCDD12bits
	global	_LCDD13bits
	global	_LCDD14bits
	global	_LCDD15bits
	global	_TRISFbits
	global	_TRISGbits
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
	global	_TRISC
	global	_TRISD
	global	_TRISE
	global	_PIE1
	global	_PCON
	global	_PR2
	global	_SSPADD
	global	_SSPSTAT
	global	_ADRESL
	global	_ADCON1
	global	_PORTF
	global	_PORTG
	global	_PMCON1
	global	_LCDSE
	global	_LCDPS
	global	_LCDCON
	global	_LCDD00
	global	_LCDD01
	global	_LCDD02
	global	_LCDD03
	global	_LCDD04
	global	_LCDD05
	global	_LCDD06
	global	_LCDD07
	global	_LCDD08
	global	_LCDD09
	global	_LCDD10
	global	_LCDD11
	global	_LCDD12
	global	_LCDD13
	global	_LCDD14
	global	_LCDD15
	global	_TRISF
	global	_TRISG
	global	_PMDATA
	global	_PMADR
	global	_PMDATH
	global	_PMADRH

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16c925_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16c925_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16c925_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16c925_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16c925_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16c925_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16c925_6	udata_ovr	0x0006
_PORTBbits
_PORTB
	res	1
UD_abs_pic16c925_7	udata_ovr	0x0007
_PORTCbits
_PORTC
	res	1
UD_abs_pic16c925_8	udata_ovr	0x0008
_PORTDbits
_PORTD
	res	1
UD_abs_pic16c925_9	udata_ovr	0x0009
_PORTEbits
_PORTE
	res	1
UD_abs_pic16c925_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16c925_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16c925_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16c925_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic16c925_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16c925_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic16c925_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic16c925_12	udata_ovr	0x0012
_T2CONbits
_T2CON
	res	1
UD_abs_pic16c925_13	udata_ovr	0x0013
_SSPBUF
	res	1
UD_abs_pic16c925_14	udata_ovr	0x0014
_SSPCONbits
_SSPCON
	res	1
UD_abs_pic16c925_15	udata_ovr	0x0015
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16c925_16	udata_ovr	0x0016
_CCPR1H
	res	1
UD_abs_pic16c925_17	udata_ovr	0x0017
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16c925_1e	udata_ovr	0x001e
_ADRESH
	res	1
UD_abs_pic16c925_1f	udata_ovr	0x001f
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16c925_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16c925_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16c925_86	udata_ovr	0x0086
_TRISBbits
_TRISB
	res	1
UD_abs_pic16c925_87	udata_ovr	0x0087
_TRISCbits
_TRISC
	res	1
UD_abs_pic16c925_88	udata_ovr	0x0088
_TRISDbits
_TRISD
	res	1
UD_abs_pic16c925_89	udata_ovr	0x0089
_TRISEbits
_TRISE
	res	1
UD_abs_pic16c925_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16c925_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16c925_92	udata_ovr	0x0092
_PR2
	res	1
UD_abs_pic16c925_93	udata_ovr	0x0093
_SSPADD
	res	1
UD_abs_pic16c925_94	udata_ovr	0x0094
_SSPSTATbits
_SSPSTAT
	res	1
UD_abs_pic16c925_9e	udata_ovr	0x009e
_ADRESL
	res	1
UD_abs_pic16c925_9f	udata_ovr	0x009f
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16c925_107	udata_ovr	0x0107
_PORTFbits
_PORTF
	res	1
UD_abs_pic16c925_108	udata_ovr	0x0108
_PORTGbits
_PORTG
	res	1
UD_abs_pic16c925_10c	udata_ovr	0x010c
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic16c925_10d	udata_ovr	0x010d
_LCDSEbits
_LCDSE
	res	1
UD_abs_pic16c925_10e	udata_ovr	0x010e
_LCDPSbits
_LCDPS
	res	1
UD_abs_pic16c925_10f	udata_ovr	0x010f
_LCDCONbits
_LCDCON
	res	1
UD_abs_pic16c925_110	udata_ovr	0x0110
_LCDD00bits
_LCDD00
	res	1
UD_abs_pic16c925_111	udata_ovr	0x0111
_LCDD01bits
_LCDD01
	res	1
UD_abs_pic16c925_112	udata_ovr	0x0112
_LCDD02bits
_LCDD02
	res	1
UD_abs_pic16c925_113	udata_ovr	0x0113
_LCDD03bits
_LCDD03
	res	1
UD_abs_pic16c925_114	udata_ovr	0x0114
_LCDD04bits
_LCDD04
	res	1
UD_abs_pic16c925_115	udata_ovr	0x0115
_LCDD05bits
_LCDD05
	res	1
UD_abs_pic16c925_116	udata_ovr	0x0116
_LCDD06bits
_LCDD06
	res	1
UD_abs_pic16c925_117	udata_ovr	0x0117
_LCDD07bits
_LCDD07
	res	1
UD_abs_pic16c925_118	udata_ovr	0x0118
_LCDD08bits
_LCDD08
	res	1
UD_abs_pic16c925_119	udata_ovr	0x0119
_LCDD09bits
_LCDD09
	res	1
UD_abs_pic16c925_11a	udata_ovr	0x011a
_LCDD10bits
_LCDD10
	res	1
UD_abs_pic16c925_11b	udata_ovr	0x011b
_LCDD11bits
_LCDD11
	res	1
UD_abs_pic16c925_11c	udata_ovr	0x011c
_LCDD12bits
_LCDD12
	res	1
UD_abs_pic16c925_11d	udata_ovr	0x011d
_LCDD13bits
_LCDD13
	res	1
UD_abs_pic16c925_11e	udata_ovr	0x011e
_LCDD14bits
_LCDD14
	res	1
UD_abs_pic16c925_11f	udata_ovr	0x011f
_LCDD15bits
_LCDD15
	res	1
UD_abs_pic16c925_187	udata_ovr	0x0187
_TRISFbits
_TRISF
	res	1
UD_abs_pic16c925_188	udata_ovr	0x0188
_TRISGbits
_TRISG
	res	1
UD_abs_pic16c925_18c	udata_ovr	0x018c
_PMDATA
	res	1
UD_abs_pic16c925_18d	udata_ovr	0x018d
_PMADR
	res	1
UD_abs_pic16c925_18e	udata_ovr	0x018e
_PMDATH
	res	1
UD_abs_pic16c925_18f	udata_ovr	0x018f
_PMADRH
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
code_pic16c925	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
