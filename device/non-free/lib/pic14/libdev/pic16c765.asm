;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:32 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16c765.c"
	list	p=16c765
	radix dec
	include "p16c765.inc"
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
	global	_TXSTAbits
	global	_ADCON1bits
	global	_UIRbits
	global	_UIEbits
	global	_UEIRbits
	global	_UEIEbits
	global	_USTATbits
	global	_UCTRLbits
	global	_UEP0bits
	global	_UEP1bits
	global	_UEP2bits
	global	_BD0OSTbits
	global	_BD0OBCbits
	global	_BD0ISTbits
	global	_BD0IBCbits
	global	_BD1OSTbits
	global	_BD1OBCbits
	global	_BD1ISTbits
	global	_BD1IBCbits
	global	_BD2OSTbits
	global	_BD2OBCbits
	global	_BD2ISTbits
	global	_BD2IBCbits
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
	global	_PR2
	global	_TXSTA
	global	_SPBRG
	global	_ADCON1
	global	_UIR
	global	_UIE
	global	_UEIR
	global	_UEIE
	global	_USTAT
	global	_UCTRL
	global	_UADDR
	global	_USWSTAT
	global	_UEP0
	global	_UEP1
	global	_UEP2
	global	_BD0OST
	global	_BD0OBC
	global	_BD0OAL
	global	_BD0IST
	global	_BD0IBC
	global	_BD0IAL
	global	_BD1OST
	global	_BD1OBC
	global	_BD1OAL
	global	_BD1IST
	global	_BD1IBC
	global	_BD1IAL
	global	_BD2OST
	global	_BD2OBC
	global	_BD2OAL
	global	_BD2IST
	global	_BD2IBC
	global	_BD2IAL

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16c765_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16c765_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16c765_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16c765_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16c765_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16c765_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16c765_6	udata_ovr	0x0006
_PORTBbits
_PORTB
	res	1
UD_abs_pic16c765_7	udata_ovr	0x0007
_PORTCbits
_PORTC
	res	1
UD_abs_pic16c765_8	udata_ovr	0x0008
_PORTDbits
_PORTD
	res	1
UD_abs_pic16c765_9	udata_ovr	0x0009
_PORTEbits
_PORTE
	res	1
UD_abs_pic16c765_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16c765_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16c765_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16c765_d	udata_ovr	0x000d
_PIR2bits
_PIR2
	res	1
UD_abs_pic16c765_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic16c765_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16c765_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic16c765_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic16c765_12	udata_ovr	0x0012
_T2CONbits
_T2CON
	res	1
UD_abs_pic16c765_15	udata_ovr	0x0015
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16c765_16	udata_ovr	0x0016
_CCPR1H
	res	1
UD_abs_pic16c765_17	udata_ovr	0x0017
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16c765_18	udata_ovr	0x0018
_RCSTAbits
_RCSTA
	res	1
UD_abs_pic16c765_19	udata_ovr	0x0019
_TXREG
	res	1
UD_abs_pic16c765_1a	udata_ovr	0x001a
_RCREG
	res	1
UD_abs_pic16c765_1b	udata_ovr	0x001b
_CCPR2
_CCPR2L
	res	1
UD_abs_pic16c765_1c	udata_ovr	0x001c
_CCPR2H
	res	1
UD_abs_pic16c765_1d	udata_ovr	0x001d
_CCP2CONbits
_CCP2CON
	res	1
UD_abs_pic16c765_1e	udata_ovr	0x001e
_ADRES
	res	1
UD_abs_pic16c765_1f	udata_ovr	0x001f
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16c765_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16c765_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16c765_86	udata_ovr	0x0086
_TRISBbits
_TRISB
	res	1
UD_abs_pic16c765_87	udata_ovr	0x0087
_TRISCbits
_TRISC
	res	1
UD_abs_pic16c765_88	udata_ovr	0x0088
_TRISDbits
_TRISD
	res	1
UD_abs_pic16c765_89	udata_ovr	0x0089
_TRISEbits
_TRISE
	res	1
UD_abs_pic16c765_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16c765_8d	udata_ovr	0x008d
_PIE2bits
_PIE2
	res	1
UD_abs_pic16c765_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16c765_92	udata_ovr	0x0092
_PR2
	res	1
UD_abs_pic16c765_98	udata_ovr	0x0098
_TXSTAbits
_TXSTA
	res	1
UD_abs_pic16c765_99	udata_ovr	0x0099
_SPBRG
	res	1
UD_abs_pic16c765_9f	udata_ovr	0x009f
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16c765_190	udata_ovr	0x0190
_UIRbits
_UIR
	res	1
UD_abs_pic16c765_191	udata_ovr	0x0191
_UIEbits
_UIE
	res	1
UD_abs_pic16c765_192	udata_ovr	0x0192
_UEIRbits
_UEIR
	res	1
UD_abs_pic16c765_193	udata_ovr	0x0193
_UEIEbits
_UEIE
	res	1
UD_abs_pic16c765_194	udata_ovr	0x0194
_USTATbits
_USTAT
	res	1
UD_abs_pic16c765_195	udata_ovr	0x0195
_UCTRLbits
_UCTRL
	res	1
UD_abs_pic16c765_196	udata_ovr	0x0196
_UADDR
	res	1
UD_abs_pic16c765_197	udata_ovr	0x0197
_USWSTAT
	res	1
UD_abs_pic16c765_198	udata_ovr	0x0198
_UEP0bits
_UEP0
	res	1
UD_abs_pic16c765_199	udata_ovr	0x0199
_UEP1bits
_UEP1
	res	1
UD_abs_pic16c765_19a	udata_ovr	0x019a
_UEP2bits
_UEP2
	res	1
UD_abs_pic16c765_1a0	udata_ovr	0x01a0
_BD0OSTbits
_BD0OST
	res	1
UD_abs_pic16c765_1a1	udata_ovr	0x01a1
_BD0OBCbits
_BD0OBC
	res	1
UD_abs_pic16c765_1a2	udata_ovr	0x01a2
_BD0OAL
	res	1
UD_abs_pic16c765_1a4	udata_ovr	0x01a4
_BD0ISTbits
_BD0IST
	res	1
UD_abs_pic16c765_1a5	udata_ovr	0x01a5
_BD0IBCbits
_BD0IBC
	res	1
UD_abs_pic16c765_1a6	udata_ovr	0x01a6
_BD0IAL
	res	1
UD_abs_pic16c765_1a8	udata_ovr	0x01a8
_BD1OSTbits
_BD1OST
	res	1
UD_abs_pic16c765_1a9	udata_ovr	0x01a9
_BD1OBCbits
_BD1OBC
	res	1
UD_abs_pic16c765_1aa	udata_ovr	0x01aa
_BD1OAL
	res	1
UD_abs_pic16c765_1ac	udata_ovr	0x01ac
_BD1ISTbits
_BD1IST
	res	1
UD_abs_pic16c765_1ad	udata_ovr	0x01ad
_BD1IBCbits
_BD1IBC
	res	1
UD_abs_pic16c765_1ae	udata_ovr	0x01ae
_BD1IAL
	res	1
UD_abs_pic16c765_1b0	udata_ovr	0x01b0
_BD2OSTbits
_BD2OST
	res	1
UD_abs_pic16c765_1b1	udata_ovr	0x01b1
_BD2OBCbits
_BD2OBC
	res	1
UD_abs_pic16c765_1b2	udata_ovr	0x01b2
_BD2OAL
	res	1
UD_abs_pic16c765_1b4	udata_ovr	0x01b4
_BD2ISTbits
_BD2IST
	res	1
UD_abs_pic16c765_1b5	udata_ovr	0x01b5
_BD2IBCbits
_BD2IBC
	res	1
UD_abs_pic16c765_1b6	udata_ovr	0x01b6
_BD2IAL
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
code_pic16c765	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
