;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:50 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f946.c"
	list	p=16f946
	radix dec
	include "p16f946.inc"
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
	global	_ANSELbits
	global	_SSPSTATbits
	global	_WPUbits
	global	_WPUBbits
	global	_IOCbits
	global	_IOCBbits
	global	_CMCON1bits
	global	_TXSTAbits
	global	_CMCON0bits
	global	_VRCONbits
	global	_ADCON1bits
	global	_WDTCONbits
	global	_LCDCONbits
	global	_LCDPSbits
	global	_LVDCONbits
	global	_EEDATAbits
	global	_EEDATLbits
	global	_EEADRbits
	global	_EEADRLbits
	global	_EEDATHbits
	global	_EEADRHbits
	global	_LCDDATA0bits
	global	_LCDDATA1bits
	global	_LCDDATA2bits
	global	_LCDDATA3bits
	global	_LCDDATA4bits
	global	_LCDDATA5bits
	global	_LCDDATA6bits
	global	_LCDDATA7bits
	global	_LCDDATA8bits
	global	_LCDDATA9bits
	global	_LCDDATA10bits
	global	_LCDDATA11bits
	global	_LCDSE0bits
	global	_LCDSE1bits
	global	_LCDSE2bits
	global	_TRISFbits
	global	_TRISGbits
	global	_PORTFbits
	global	_PORTGbits
	global	_EECON1bits
	global	_LCDDATA12bits
	global	_LCDDATA13bits
	global	_LCDDATA14bits
	global	_LCDDATA15bits
	global	_LCDDATA16bits
	global	_LCDDATA17bits
	global	_LCDDATA18bits
	global	_LCDDATA19bits
	global	_LCDDATA20bits
	global	_LCDDATA21bits
	global	_LCDDATA22bits
	global	_LCDDATA23bits
	global	_LCDSE3bits
	global	_LCDSE4bits
	global	_LCDSE5bits
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
	global	_ANSEL
	global	_PR2
	global	_SSPADD
	global	_SSPSTAT
	global	_WPU
	global	_WPUB
	global	_IOC
	global	_IOCB
	global	_CMCON1
	global	_TXSTA
	global	_SPBRG
	global	_CMCON0
	global	_VRCON
	global	_ADRESL
	global	_ADCON1
	global	_WDTCON
	global	_LCDCON
	global	_LCDPS
	global	_LVDCON
	global	_EEDATA
	global	_EEDATL
	global	_EEADR
	global	_EEADRL
	global	_EEDATH
	global	_EEADRH
	global	_LCDDATA0
	global	_LCDDATA1
	global	_LCDDATA2
	global	_LCDDATA3
	global	_LCDDATA4
	global	_LCDDATA5
	global	_LCDDATA6
	global	_LCDDATA7
	global	_LCDDATA8
	global	_LCDDATA9
	global	_LCDDATA10
	global	_LCDDATA11
	global	_LCDSE0
	global	_LCDSE1
	global	_LCDSE2
	global	_TRISF
	global	_TRISG
	global	_PORTF
	global	_PORTG
	global	_EECON1
	global	_EECON2
	global	_LCDDATA12
	global	_LCDDATA13
	global	_LCDDATA14
	global	_LCDDATA15
	global	_LCDDATA16
	global	_LCDDATA17
	global	_LCDDATA18
	global	_LCDDATA19
	global	_LCDDATA20
	global	_LCDDATA21
	global	_LCDDATA22
	global	_LCDDATA23
	global	_LCDSE3
	global	_LCDSE4
	global	_LCDSE5

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16f946_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16f946_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16f946_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f946_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f946_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16f946_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f946_6	udata_ovr	0x0006
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f946_7	udata_ovr	0x0007
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f946_8	udata_ovr	0x0008
_PORTDbits
_PORTD
	res	1
UD_abs_pic16f946_9	udata_ovr	0x0009
_PORTEbits
_PORTE
	res	1
UD_abs_pic16f946_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f946_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f946_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f946_d	udata_ovr	0x000d
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f946_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic16f946_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16f946_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f946_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic16f946_12	udata_ovr	0x0012
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f946_13	udata_ovr	0x0013
_SSPBUF
	res	1
UD_abs_pic16f946_14	udata_ovr	0x0014
_SSPCONbits
_SSPCON
	res	1
UD_abs_pic16f946_15	udata_ovr	0x0015
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f946_16	udata_ovr	0x0016
_CCPR1H
	res	1
UD_abs_pic16f946_17	udata_ovr	0x0017
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16f946_18	udata_ovr	0x0018
_RCSTAbits
_RCSTA
	res	1
UD_abs_pic16f946_19	udata_ovr	0x0019
_TXREG
	res	1
UD_abs_pic16f946_1a	udata_ovr	0x001a
_RCREG
	res	1
UD_abs_pic16f946_1b	udata_ovr	0x001b
_CCPR2
_CCPR2L
	res	1
UD_abs_pic16f946_1c	udata_ovr	0x001c
_CCPR2H
	res	1
UD_abs_pic16f946_1d	udata_ovr	0x001d
_CCP2CONbits
_CCP2CON
	res	1
UD_abs_pic16f946_1e	udata_ovr	0x001e
_ADRESH
	res	1
UD_abs_pic16f946_1f	udata_ovr	0x001f
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f946_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f946_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f946_86	udata_ovr	0x0086
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f946_87	udata_ovr	0x0087
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f946_88	udata_ovr	0x0088
_TRISDbits
_TRISD
	res	1
UD_abs_pic16f946_89	udata_ovr	0x0089
_TRISEbits
_TRISE
	res	1
UD_abs_pic16f946_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f946_8d	udata_ovr	0x008d
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f946_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16f946_8f	udata_ovr	0x008f
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f946_90	udata_ovr	0x0090
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16f946_91	udata_ovr	0x0091
_ANSELbits
_ANSEL
	res	1
UD_abs_pic16f946_92	udata_ovr	0x0092
_PR2
	res	1
UD_abs_pic16f946_93	udata_ovr	0x0093
_SSPADD
	res	1
UD_abs_pic16f946_94	udata_ovr	0x0094
_SSPSTATbits
_SSPSTAT
	res	1
UD_abs_pic16f946_95	udata_ovr	0x0095
_WPUbits
_WPUBbits
_WPU
_WPUB
	res	1
UD_abs_pic16f946_96	udata_ovr	0x0096
_IOCbits
_IOCBbits
_IOC
_IOCB
	res	1
UD_abs_pic16f946_97	udata_ovr	0x0097
_CMCON1bits
_CMCON1
	res	1
UD_abs_pic16f946_98	udata_ovr	0x0098
_TXSTAbits
_TXSTA
	res	1
UD_abs_pic16f946_99	udata_ovr	0x0099
_SPBRG
	res	1
UD_abs_pic16f946_9c	udata_ovr	0x009c
_CMCON0bits
_CMCON0
	res	1
UD_abs_pic16f946_9d	udata_ovr	0x009d
_VRCONbits
_VRCON
	res	1
UD_abs_pic16f946_9e	udata_ovr	0x009e
_ADRESL
	res	1
UD_abs_pic16f946_9f	udata_ovr	0x009f
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f946_105	udata_ovr	0x0105
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f946_107	udata_ovr	0x0107
_LCDCONbits
_LCDCON
	res	1
UD_abs_pic16f946_108	udata_ovr	0x0108
_LCDPSbits
_LCDPS
	res	1
UD_abs_pic16f946_109	udata_ovr	0x0109
_LVDCONbits
_LVDCON
	res	1
UD_abs_pic16f946_10c	udata_ovr	0x010c
_EEDATAbits
_EEDATLbits
_EEDATA
_EEDATL
	res	1
UD_abs_pic16f946_10d	udata_ovr	0x010d
_EEADRbits
_EEADRLbits
_EEADR
_EEADRL
	res	1
UD_abs_pic16f946_10e	udata_ovr	0x010e
_EEDATHbits
_EEDATH
	res	1
UD_abs_pic16f946_10f	udata_ovr	0x010f
_EEADRHbits
_EEADRH
	res	1
UD_abs_pic16f946_110	udata_ovr	0x0110
_LCDDATA0bits
_LCDDATA0
	res	1
UD_abs_pic16f946_111	udata_ovr	0x0111
_LCDDATA1bits
_LCDDATA1
	res	1
UD_abs_pic16f946_112	udata_ovr	0x0112
_LCDDATA2bits
_LCDDATA2
	res	1
UD_abs_pic16f946_113	udata_ovr	0x0113
_LCDDATA3bits
_LCDDATA3
	res	1
UD_abs_pic16f946_114	udata_ovr	0x0114
_LCDDATA4bits
_LCDDATA4
	res	1
UD_abs_pic16f946_115	udata_ovr	0x0115
_LCDDATA5bits
_LCDDATA5
	res	1
UD_abs_pic16f946_116	udata_ovr	0x0116
_LCDDATA6bits
_LCDDATA6
	res	1
UD_abs_pic16f946_117	udata_ovr	0x0117
_LCDDATA7bits
_LCDDATA7
	res	1
UD_abs_pic16f946_118	udata_ovr	0x0118
_LCDDATA8bits
_LCDDATA8
	res	1
UD_abs_pic16f946_119	udata_ovr	0x0119
_LCDDATA9bits
_LCDDATA9
	res	1
UD_abs_pic16f946_11a	udata_ovr	0x011a
_LCDDATA10bits
_LCDDATA10
	res	1
UD_abs_pic16f946_11b	udata_ovr	0x011b
_LCDDATA11bits
_LCDDATA11
	res	1
UD_abs_pic16f946_11c	udata_ovr	0x011c
_LCDSE0bits
_LCDSE0
	res	1
UD_abs_pic16f946_11d	udata_ovr	0x011d
_LCDSE1bits
_LCDSE1
	res	1
UD_abs_pic16f946_11e	udata_ovr	0x011e
_LCDSE2bits
_LCDSE2
	res	1
UD_abs_pic16f946_185	udata_ovr	0x0185
_TRISFbits
_TRISF
	res	1
UD_abs_pic16f946_187	udata_ovr	0x0187
_TRISGbits
_TRISG
	res	1
UD_abs_pic16f946_188	udata_ovr	0x0188
_PORTFbits
_PORTF
	res	1
UD_abs_pic16f946_189	udata_ovr	0x0189
_PORTGbits
_PORTG
	res	1
UD_abs_pic16f946_18c	udata_ovr	0x018c
_EECON1bits
_EECON1
	res	1
UD_abs_pic16f946_18d	udata_ovr	0x018d
_EECON2
	res	1
UD_abs_pic16f946_190	udata_ovr	0x0190
_LCDDATA12bits
_LCDDATA12
	res	1
UD_abs_pic16f946_191	udata_ovr	0x0191
_LCDDATA13bits
_LCDDATA13
	res	1
UD_abs_pic16f946_192	udata_ovr	0x0192
_LCDDATA14bits
_LCDDATA14
	res	1
UD_abs_pic16f946_193	udata_ovr	0x0193
_LCDDATA15bits
_LCDDATA15
	res	1
UD_abs_pic16f946_194	udata_ovr	0x0194
_LCDDATA16bits
_LCDDATA16
	res	1
UD_abs_pic16f946_195	udata_ovr	0x0195
_LCDDATA17bits
_LCDDATA17
	res	1
UD_abs_pic16f946_196	udata_ovr	0x0196
_LCDDATA18bits
_LCDDATA18
	res	1
UD_abs_pic16f946_197	udata_ovr	0x0197
_LCDDATA19bits
_LCDDATA19
	res	1
UD_abs_pic16f946_198	udata_ovr	0x0198
_LCDDATA20bits
_LCDDATA20
	res	1
UD_abs_pic16f946_199	udata_ovr	0x0199
_LCDDATA21bits
_LCDDATA21
	res	1
UD_abs_pic16f946_19a	udata_ovr	0x019a
_LCDDATA22bits
_LCDDATA22
	res	1
UD_abs_pic16f946_19b	udata_ovr	0x019b
_LCDDATA23bits
_LCDDATA23
	res	1
UD_abs_pic16f946_19c	udata_ovr	0x019c
_LCDSE3bits
_LCDSE3
	res	1
UD_abs_pic16f946_19d	udata_ovr	0x019d
_LCDSE4bits
_LCDSE4
	res	1
UD_abs_pic16f946_19e	udata_ovr	0x019e
_LCDSE5bits
_LCDSE5
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
code_pic16f946	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
