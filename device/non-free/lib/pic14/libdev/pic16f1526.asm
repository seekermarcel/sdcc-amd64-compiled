;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:35 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f1526.c"
	list	p=16f1526
	radix dec
	include "p16f1526.inc"
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
	global	_BSRbits
	global	_INTCONbits
	global	_PORTAbits
	global	_PORTBbits
	global	_PORTCbits
	global	_PORTDbits
	global	_PORTEbits
	global	_PIR1bits
	global	_PIR2bits
	global	_PIR3bits
	global	_PIR4bits
	global	_T1CONbits
	global	_T1GCONbits
	global	_T2CONbits
	global	_TRISAbits
	global	_TRISBbits
	global	_TRISCbits
	global	_TRISDbits
	global	_TRISEbits
	global	_PIE1bits
	global	_PIE2bits
	global	_PIE3bits
	global	_PIE4bits
	global	_OPTION_REGbits
	global	_PCONbits
	global	_WDTCONbits
	global	_OSCCONbits
	global	_OSCSTATbits
	global	_ADCON0bits
	global	_ADCON1bits
	global	_LATAbits
	global	_LATBbits
	global	_LATCbits
	global	_LATDbits
	global	_LATEbits
	global	_BORCONbits
	global	_FVRCONbits
	global	_APFCONbits
	global	_ANSELAbits
	global	_ANSELBbits
	global	_ANSELDbits
	global	_ANSELEbits
	global	_PMCON1bits
	global	_VREGCONbits
	global	_RC1STAbits
	global	_RCSTAbits
	global	_RCSTA1bits
	global	_TX1STAbits
	global	_TXSTAbits
	global	_TXSTA1bits
	global	_BAUD1CONbits
	global	_BAUDCONbits
	global	_BAUDCON1bits
	global	_WPUBbits
	global	_WPUDbits
	global	_WPUEbits
	global	_SSP1STATbits
	global	_SSPSTATbits
	global	_SSP1CON1bits
	global	_SSPCONbits
	global	_SSPCON1bits
	global	_SSP1CON2bits
	global	_SSPCON2bits
	global	_SSP1CON3bits
	global	_SSPCON3bits
	global	_SSP2STATbits
	global	_SSP2CON1bits
	global	_SSP2CON2bits
	global	_SSP2CON3bits
	global	_PORTFbits
	global	_PORTGbits
	global	_CCP1CONbits
	global	_CCP2CONbits
	global	_CCPTMRS0bits
	global	_CCPTMRS1bits
	global	_CCPTMRS2bits
	global	_TRISFbits
	global	_TRISGbits
	global	_CCP3CONbits
	global	_CCP4CONbits
	global	_CCP5CONbits
	global	_LATFbits
	global	_LATGbits
	global	_IOCBPbits
	global	_IOCBNbits
	global	_IOCBFbits
	global	_ANSELFbits
	global	_ANSELGbits
	global	_T3CONbits
	global	_T3GCONbits
	global	_T4CONbits
	global	_T5CONbits
	global	_T5GCONbits
	global	_T6CONbits
	global	_WPUGbits
	global	_RC2STAbits
	global	_RCSTA2bits
	global	_TX2STAbits
	global	_TXSTA2bits
	global	_BAUD2CONbits
	global	_BAUDCON2bits
	global	_T8CONbits
	global	_T10CONbits
	global	_CCP6CONbits
	global	_CCP7CONbits
	global	_CCP8CONbits
	global	_CCP9CONbits
	global	_CCP10CONbits
	global	_STATUS_SHADbits
	global	_INDF0
	global	_INDF1
	global	_PCL
	global	_STATUS
	global	_FSR0
	global	_FSR0L
	global	_FSR0H
	global	_FSR1
	global	_FSR1L
	global	_FSR1H
	global	_BSR
	global	_WREG
	global	_PCLATH
	global	_INTCON
	global	_PORTA
	global	_PORTB
	global	_PORTC
	global	_PORTD
	global	_PORTE
	global	_PIR1
	global	_PIR2
	global	_PIR3
	global	_PIR4
	global	_TMR0
	global	_TMR1
	global	_TMR1L
	global	_TMR1H
	global	_T1CON
	global	_T1GCON
	global	_TMR2
	global	_PR2
	global	_T2CON
	global	_TRISA
	global	_TRISB
	global	_TRISC
	global	_TRISD
	global	_TRISE
	global	_PIE1
	global	_PIE2
	global	_PIE3
	global	_PIE4
	global	_OPTION_REG
	global	_PCON
	global	_WDTCON
	global	_OSCCON
	global	_OSCSTAT
	global	_ADRES
	global	_ADRESL
	global	_ADRESH
	global	_ADCON0
	global	_ADCON1
	global	_LATA
	global	_LATB
	global	_LATC
	global	_LATD
	global	_LATE
	global	_BORCON
	global	_FVRCON
	global	_APFCON
	global	_ANSELA
	global	_ANSELB
	global	_ANSELD
	global	_ANSELE
	global	_PMADR
	global	_PMADRL
	global	_PMADRH
	global	_PMDAT
	global	_PMDATL
	global	_PMDATH
	global	_PMCON1
	global	_PMCON2
	global	_VREGCON
	global	_RC1REG
	global	_RCREG
	global	_RCREG1
	global	_TX1REG
	global	_TXREG
	global	_TXREG1
	global	_SP1BRG
	global	_SP1BRGL
	global	_SPBRG
	global	_SPBRGL
	global	_SPBRGL1
	global	_SP1BRGH
	global	_SPBRGH
	global	_SPBRGH1
	global	_RC1STA
	global	_RCSTA
	global	_RCSTA1
	global	_TX1STA
	global	_TXSTA
	global	_TXSTA1
	global	_BAUD1CON
	global	_BAUDCON
	global	_BAUDCON1
	global	_WPUB
	global	_WPUD
	global	_WPUE
	global	_SSP1BUF
	global	_SSPBUF
	global	_SSP1ADD
	global	_SSPADD
	global	_SSP1MSK
	global	_SSPMSK
	global	_SSP1STAT
	global	_SSPSTAT
	global	_SSP1CON1
	global	_SSPCON
	global	_SSPCON1
	global	_SSP1CON2
	global	_SSPCON2
	global	_SSP1CON3
	global	_SSPCON3
	global	_SSP2BUF
	global	_SSP2ADD
	global	_SSP2MSK
	global	_SSP2STAT
	global	_SSP2CON1
	global	_SSP2CON2
	global	_SSP2CON3
	global	_PORTF
	global	_PORTG
	global	_CCPR1
	global	_CCPR1L
	global	_CCPR1H
	global	_CCP1CON
	global	_CCPR2
	global	_CCPR2L
	global	_CCPR2H
	global	_CCP2CON
	global	_CCPTMRS0
	global	_CCPTMRS1
	global	_CCPTMRS2
	global	_TRISF
	global	_TRISG
	global	_CCPR3
	global	_CCPR3L
	global	_CCPR3H
	global	_CCP3CON
	global	_CCPR4
	global	_CCPR4L
	global	_CCPR4H
	global	_CCP4CON
	global	_CCPR5
	global	_CCPR5L
	global	_CCPR5H
	global	_CCP5CON
	global	_LATF
	global	_LATG
	global	_IOCBP
	global	_IOCBN
	global	_IOCBF
	global	_ANSELF
	global	_ANSELG
	global	_TMR3
	global	_TMR3L
	global	_TMR3H
	global	_T3CON
	global	_T3GCON
	global	_TMR4
	global	_PR4
	global	_T4CON
	global	_TMR5
	global	_TMR5L
	global	_TMR5H
	global	_T5CON
	global	_T5GCON
	global	_TMR6
	global	_PR6
	global	_T6CON
	global	_WPUG
	global	_RC2REG
	global	_RCREG2
	global	_TX2REG
	global	_TXREG2
	global	_SP2BRG
	global	_SP2BRGL
	global	_SPBRGL2
	global	_SP2BRGH
	global	_SPBRGH2
	global	_RC2STA
	global	_RCSTA2
	global	_TX2STA
	global	_TXSTA2
	global	_BAUD2CON
	global	_BAUDCON2
	global	_TMR8
	global	_PR8
	global	_T8CON
	global	_TMR10
	global	_PR10
	global	_T10CON
	global	_CCPR6
	global	_CCPR6L
	global	_CCPR6H
	global	_CCP6CON
	global	_CCPR7
	global	_CCPR7L
	global	_CCPR7H
	global	_CCP7CON
	global	_CCPR8
	global	_CCPR8L
	global	_CCPR8H
	global	_CCP8CON
	global	_CCPR9
	global	_CCPR9L
	global	_CCPR9H
	global	_CCP9CON
	global	_CCPR10
	global	_CCPR10L
	global	_CCPR10H
	global	_CCP10CON
	global	_STATUS_SHAD
	global	_WREG_SHAD
	global	_BSR_SHAD
	global	_PCLATH_SHAD
	global	_FSR0L_SHAD
	global	_FSR0H_SHAD
	global	_FSR1L_SHAD
	global	_FSR1H_SHAD
	global	_STKPTR
	global	_TOSL
	global	_TOSH

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16f1526_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic16f1526_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic16f1526_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f1526_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f1526_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic16f1526_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic16f1526_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic16f1526_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic16f1526_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic16f1526_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic16f1526_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f1526_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f1526_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f1526_d	udata_ovr	0x000d
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f1526_e	udata_ovr	0x000e
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f1526_f	udata_ovr	0x000f
_PORTDbits
_PORTD
	res	1
UD_abs_pic16f1526_10	udata_ovr	0x0010
_PORTEbits
_PORTE
	res	1
UD_abs_pic16f1526_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f1526_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f1526_13	udata_ovr	0x0013
_PIR3bits
_PIR3
	res	1
UD_abs_pic16f1526_14	udata_ovr	0x0014
_PIR4bits
_PIR4
	res	1
UD_abs_pic16f1526_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic16f1526_16	udata_ovr	0x0016
_TMR1
_TMR1L
	res	1
UD_abs_pic16f1526_17	udata_ovr	0x0017
_TMR1H
	res	1
UD_abs_pic16f1526_18	udata_ovr	0x0018
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f1526_19	udata_ovr	0x0019
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic16f1526_1a	udata_ovr	0x001a
_TMR2
	res	1
UD_abs_pic16f1526_1b	udata_ovr	0x001b
_PR2
	res	1
UD_abs_pic16f1526_1c	udata_ovr	0x001c
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f1526_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f1526_8d	udata_ovr	0x008d
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f1526_8e	udata_ovr	0x008e
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f1526_8f	udata_ovr	0x008f
_TRISDbits
_TRISD
	res	1
UD_abs_pic16f1526_90	udata_ovr	0x0090
_TRISEbits
_TRISE
	res	1
UD_abs_pic16f1526_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f1526_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f1526_93	udata_ovr	0x0093
_PIE3bits
_PIE3
	res	1
UD_abs_pic16f1526_94	udata_ovr	0x0094
_PIE4bits
_PIE4
	res	1
UD_abs_pic16f1526_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f1526_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic16f1526_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f1526_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f1526_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic16f1526_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic16f1526_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic16f1526_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f1526_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f1526_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic16f1526_10d	udata_ovr	0x010d
_LATBbits
_LATB
	res	1
UD_abs_pic16f1526_10e	udata_ovr	0x010e
_LATCbits
_LATC
	res	1
UD_abs_pic16f1526_10f	udata_ovr	0x010f
_LATDbits
_LATD
	res	1
UD_abs_pic16f1526_110	udata_ovr	0x0110
_LATEbits
_LATE
	res	1
UD_abs_pic16f1526_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic16f1526_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic16f1526_11d	udata_ovr	0x011d
_APFCONbits
_APFCON
	res	1
UD_abs_pic16f1526_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic16f1526_18d	udata_ovr	0x018d
_ANSELBbits
_ANSELB
	res	1
UD_abs_pic16f1526_18f	udata_ovr	0x018f
_ANSELDbits
_ANSELD
	res	1
UD_abs_pic16f1526_190	udata_ovr	0x0190
_ANSELEbits
_ANSELE
	res	1
UD_abs_pic16f1526_191	udata_ovr	0x0191
_PMADR
_PMADRL
	res	1
UD_abs_pic16f1526_192	udata_ovr	0x0192
_PMADRH
	res	1
UD_abs_pic16f1526_193	udata_ovr	0x0193
_PMDAT
_PMDATL
	res	1
UD_abs_pic16f1526_194	udata_ovr	0x0194
_PMDATH
	res	1
UD_abs_pic16f1526_195	udata_ovr	0x0195
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic16f1526_196	udata_ovr	0x0196
_PMCON2
	res	1
UD_abs_pic16f1526_197	udata_ovr	0x0197
_VREGCONbits
_VREGCON
	res	1
UD_abs_pic16f1526_199	udata_ovr	0x0199
_RC1REG
_RCREG
_RCREG1
	res	1
UD_abs_pic16f1526_19a	udata_ovr	0x019a
_TX1REG
_TXREG
_TXREG1
	res	1
UD_abs_pic16f1526_19b	udata_ovr	0x019b
_SP1BRG
_SP1BRGL
_SPBRG
_SPBRGL
_SPBRGL1
	res	1
UD_abs_pic16f1526_19c	udata_ovr	0x019c
_SP1BRGH
_SPBRGH
_SPBRGH1
	res	1
UD_abs_pic16f1526_19d	udata_ovr	0x019d
_RC1STAbits
_RCSTAbits
_RCSTA1bits
_RC1STA
_RCSTA
_RCSTA1
	res	1
UD_abs_pic16f1526_19e	udata_ovr	0x019e
_TX1STAbits
_TXSTAbits
_TXSTA1bits
_TX1STA
_TXSTA
_TXSTA1
	res	1
UD_abs_pic16f1526_19f	udata_ovr	0x019f
_BAUD1CONbits
_BAUDCONbits
_BAUDCON1bits
_BAUD1CON
_BAUDCON
_BAUDCON1
	res	1
UD_abs_pic16f1526_20d	udata_ovr	0x020d
_WPUBbits
_WPUB
	res	1
UD_abs_pic16f1526_20f	udata_ovr	0x020f
_WPUDbits
_WPUD
	res	1
UD_abs_pic16f1526_210	udata_ovr	0x0210
_WPUEbits
_WPUE
	res	1
UD_abs_pic16f1526_211	udata_ovr	0x0211
_SSP1BUF
_SSPBUF
	res	1
UD_abs_pic16f1526_212	udata_ovr	0x0212
_SSP1ADD
_SSPADD
	res	1
UD_abs_pic16f1526_213	udata_ovr	0x0213
_SSP1MSK
_SSPMSK
	res	1
UD_abs_pic16f1526_214	udata_ovr	0x0214
_SSP1STATbits
_SSPSTATbits
_SSP1STAT
_SSPSTAT
	res	1
UD_abs_pic16f1526_215	udata_ovr	0x0215
_SSP1CON1bits
_SSPCONbits
_SSPCON1bits
_SSP1CON1
_SSPCON
_SSPCON1
	res	1
UD_abs_pic16f1526_216	udata_ovr	0x0216
_SSP1CON2bits
_SSPCON2bits
_SSP1CON2
_SSPCON2
	res	1
UD_abs_pic16f1526_217	udata_ovr	0x0217
_SSP1CON3bits
_SSPCON3bits
_SSP1CON3
_SSPCON3
	res	1
UD_abs_pic16f1526_219	udata_ovr	0x0219
_SSP2BUF
	res	1
UD_abs_pic16f1526_21a	udata_ovr	0x021a
_SSP2ADD
	res	1
UD_abs_pic16f1526_21b	udata_ovr	0x021b
_SSP2MSK
	res	1
UD_abs_pic16f1526_21c	udata_ovr	0x021c
_SSP2STATbits
_SSP2STAT
	res	1
UD_abs_pic16f1526_21d	udata_ovr	0x021d
_SSP2CON1bits
_SSP2CON1
	res	1
UD_abs_pic16f1526_21e	udata_ovr	0x021e
_SSP2CON2bits
_SSP2CON2
	res	1
UD_abs_pic16f1526_21f	udata_ovr	0x021f
_SSP2CON3bits
_SSP2CON3
	res	1
UD_abs_pic16f1526_28c	udata_ovr	0x028c
_PORTFbits
_PORTF
	res	1
UD_abs_pic16f1526_28d	udata_ovr	0x028d
_PORTGbits
_PORTG
	res	1
UD_abs_pic16f1526_291	udata_ovr	0x0291
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f1526_292	udata_ovr	0x0292
_CCPR1H
	res	1
UD_abs_pic16f1526_293	udata_ovr	0x0293
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16f1526_298	udata_ovr	0x0298
_CCPR2
_CCPR2L
	res	1
UD_abs_pic16f1526_299	udata_ovr	0x0299
_CCPR2H
	res	1
UD_abs_pic16f1526_29a	udata_ovr	0x029a
_CCP2CONbits
_CCP2CON
	res	1
UD_abs_pic16f1526_29d	udata_ovr	0x029d
_CCPTMRS0bits
_CCPTMRS0
	res	1
UD_abs_pic16f1526_29e	udata_ovr	0x029e
_CCPTMRS1bits
_CCPTMRS1
	res	1
UD_abs_pic16f1526_29f	udata_ovr	0x029f
_CCPTMRS2bits
_CCPTMRS2
	res	1
UD_abs_pic16f1526_30c	udata_ovr	0x030c
_TRISFbits
_TRISF
	res	1
UD_abs_pic16f1526_30d	udata_ovr	0x030d
_TRISGbits
_TRISG
	res	1
UD_abs_pic16f1526_311	udata_ovr	0x0311
_CCPR3
_CCPR3L
	res	1
UD_abs_pic16f1526_312	udata_ovr	0x0312
_CCPR3H
	res	1
UD_abs_pic16f1526_313	udata_ovr	0x0313
_CCP3CONbits
_CCP3CON
	res	1
UD_abs_pic16f1526_318	udata_ovr	0x0318
_CCPR4
_CCPR4L
	res	1
UD_abs_pic16f1526_319	udata_ovr	0x0319
_CCPR4H
	res	1
UD_abs_pic16f1526_31a	udata_ovr	0x031a
_CCP4CONbits
_CCP4CON
	res	1
UD_abs_pic16f1526_31c	udata_ovr	0x031c
_CCPR5
_CCPR5L
	res	1
UD_abs_pic16f1526_31d	udata_ovr	0x031d
_CCPR5H
	res	1
UD_abs_pic16f1526_31e	udata_ovr	0x031e
_CCP5CONbits
_CCP5CON
	res	1
UD_abs_pic16f1526_38c	udata_ovr	0x038c
_LATFbits
_LATF
	res	1
UD_abs_pic16f1526_38d	udata_ovr	0x038d
_LATGbits
_LATG
	res	1
UD_abs_pic16f1526_394	udata_ovr	0x0394
_IOCBPbits
_IOCBP
	res	1
UD_abs_pic16f1526_395	udata_ovr	0x0395
_IOCBNbits
_IOCBN
	res	1
UD_abs_pic16f1526_396	udata_ovr	0x0396
_IOCBFbits
_IOCBF
	res	1
UD_abs_pic16f1526_40c	udata_ovr	0x040c
_ANSELFbits
_ANSELF
	res	1
UD_abs_pic16f1526_40d	udata_ovr	0x040d
_ANSELGbits
_ANSELG
	res	1
UD_abs_pic16f1526_411	udata_ovr	0x0411
_TMR3
_TMR3L
	res	1
UD_abs_pic16f1526_412	udata_ovr	0x0412
_TMR3H
	res	1
UD_abs_pic16f1526_413	udata_ovr	0x0413
_T3CONbits
_T3CON
	res	1
UD_abs_pic16f1526_414	udata_ovr	0x0414
_T3GCONbits
_T3GCON
	res	1
UD_abs_pic16f1526_415	udata_ovr	0x0415
_TMR4
	res	1
UD_abs_pic16f1526_416	udata_ovr	0x0416
_PR4
	res	1
UD_abs_pic16f1526_417	udata_ovr	0x0417
_T4CONbits
_T4CON
	res	1
UD_abs_pic16f1526_418	udata_ovr	0x0418
_TMR5
_TMR5L
	res	1
UD_abs_pic16f1526_419	udata_ovr	0x0419
_TMR5H
	res	1
UD_abs_pic16f1526_41a	udata_ovr	0x041a
_T5CONbits
_T5CON
	res	1
UD_abs_pic16f1526_41b	udata_ovr	0x041b
_T5GCONbits
_T5GCON
	res	1
UD_abs_pic16f1526_41c	udata_ovr	0x041c
_TMR6
	res	1
UD_abs_pic16f1526_41d	udata_ovr	0x041d
_PR6
	res	1
UD_abs_pic16f1526_41e	udata_ovr	0x041e
_T6CONbits
_T6CON
	res	1
UD_abs_pic16f1526_48d	udata_ovr	0x048d
_WPUGbits
_WPUG
	res	1
UD_abs_pic16f1526_491	udata_ovr	0x0491
_RC2REG
_RCREG2
	res	1
UD_abs_pic16f1526_492	udata_ovr	0x0492
_TX2REG
_TXREG2
	res	1
UD_abs_pic16f1526_493	udata_ovr	0x0493
_SP2BRG
_SP2BRGL
_SPBRGL2
	res	1
UD_abs_pic16f1526_494	udata_ovr	0x0494
_SP2BRGH
_SPBRGH2
	res	1
UD_abs_pic16f1526_495	udata_ovr	0x0495
_RC2STAbits
_RCSTA2bits
_RC2STA
_RCSTA2
	res	1
UD_abs_pic16f1526_496	udata_ovr	0x0496
_TX2STAbits
_TXSTA2bits
_TX2STA
_TXSTA2
	res	1
UD_abs_pic16f1526_497	udata_ovr	0x0497
_BAUD2CONbits
_BAUDCON2bits
_BAUD2CON
_BAUDCON2
	res	1
UD_abs_pic16f1526_595	udata_ovr	0x0595
_TMR8
	res	1
UD_abs_pic16f1526_596	udata_ovr	0x0596
_PR8
	res	1
UD_abs_pic16f1526_597	udata_ovr	0x0597
_T8CONbits
_T8CON
	res	1
UD_abs_pic16f1526_59c	udata_ovr	0x059c
_TMR10
	res	1
UD_abs_pic16f1526_59d	udata_ovr	0x059d
_PR10
	res	1
UD_abs_pic16f1526_59e	udata_ovr	0x059e
_T10CONbits
_T10CON
	res	1
UD_abs_pic16f1526_611	udata_ovr	0x0611
_CCPR6
_CCPR6L
	res	1
UD_abs_pic16f1526_612	udata_ovr	0x0612
_CCPR6H
	res	1
UD_abs_pic16f1526_613	udata_ovr	0x0613
_CCP6CONbits
_CCP6CON
	res	1
UD_abs_pic16f1526_614	udata_ovr	0x0614
_CCPR7
_CCPR7L
	res	1
UD_abs_pic16f1526_615	udata_ovr	0x0615
_CCPR7H
	res	1
UD_abs_pic16f1526_616	udata_ovr	0x0616
_CCP7CONbits
_CCP7CON
	res	1
UD_abs_pic16f1526_617	udata_ovr	0x0617
_CCPR8
_CCPR8L
	res	1
UD_abs_pic16f1526_618	udata_ovr	0x0618
_CCPR8H
	res	1
UD_abs_pic16f1526_619	udata_ovr	0x0619
_CCP8CONbits
_CCP8CON
	res	1
UD_abs_pic16f1526_61a	udata_ovr	0x061a
_CCPR9
_CCPR9L
	res	1
UD_abs_pic16f1526_61b	udata_ovr	0x061b
_CCPR9H
	res	1
UD_abs_pic16f1526_61c	udata_ovr	0x061c
_CCP9CONbits
_CCP9CON
	res	1
UD_abs_pic16f1526_61d	udata_ovr	0x061d
_CCPR10
_CCPR10L
	res	1
UD_abs_pic16f1526_61e	udata_ovr	0x061e
_CCPR10H
	res	1
UD_abs_pic16f1526_61f	udata_ovr	0x061f
_CCP10CONbits
_CCP10CON
	res	1
UD_abs_pic16f1526_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic16f1526_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic16f1526_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic16f1526_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic16f1526_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
	res	1
UD_abs_pic16f1526_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic16f1526_fea	udata_ovr	0x0fea
_FSR1L_SHAD
	res	1
UD_abs_pic16f1526_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic16f1526_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic16f1526_fee	udata_ovr	0x0fee
_TOSL
	res	1
UD_abs_pic16f1526_fef	udata_ovr	0x0fef
_TOSH
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
code_pic16f1526	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
