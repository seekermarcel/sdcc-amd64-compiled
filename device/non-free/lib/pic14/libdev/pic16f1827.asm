;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:42 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f1827.c"
	list	p=16f1827
	radix dec
	include "p16f1827.inc"
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
	global	_PIR1bits
	global	_PIR2bits
	global	_PIR3bits
	global	_PIR4bits
	global	_T1CONbits
	global	_T1GCONbits
	global	_T2CONbits
	global	_CPSCON0bits
	global	_CPSCON1bits
	global	_TRISAbits
	global	_TRISBbits
	global	_PIE1bits
	global	_PIE2bits
	global	_PIE3bits
	global	_PIE4bits
	global	_OPTION_REGbits
	global	_PCONbits
	global	_WDTCONbits
	global	_OSCTUNEbits
	global	_OSCCONbits
	global	_OSCSTATbits
	global	_ADCON0bits
	global	_ADCON1bits
	global	_LATAbits
	global	_LATBbits
	global	_CM1CON0bits
	global	_CM1CON1bits
	global	_CM2CON0bits
	global	_CM2CON1bits
	global	_CMOUTbits
	global	_BORCONbits
	global	_FVRCONbits
	global	_DACCON0bits
	global	_DACCON1bits
	global	_SRCON0bits
	global	_SRCON1bits
	global	_APFCON0bits
	global	_APFCON1bits
	global	_ANSELAbits
	global	_ANSELBbits
	global	_EECON1bits
	global	_RCSTAbits
	global	_TXSTAbits
	global	_BAUDCONbits
	global	_WPUAbits
	global	_WPUBbits
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
	global	_CCP1CONbits
	global	_PWM1CONbits
	global	_CCP1ASbits
	global	_ECCP1ASbits
	global	_PSTR1CONbits
	global	_CCP2CONbits
	global	_PWM2CONbits
	global	_CCP2ASbits
	global	_ECCP2ASbits
	global	_PSTR2CONbits
	global	_CCPTMRSbits
	global	_CCPTMRS0bits
	global	_CCP3CONbits
	global	_CCP4CONbits
	global	_IOCBPbits
	global	_IOCBNbits
	global	_IOCBFbits
	global	_CLKRCONbits
	global	_MDCONbits
	global	_MDSRCbits
	global	_MDCARLbits
	global	_MDCARHbits
	global	_T4CONbits
	global	_T6CONbits
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
	global	_CPSCON0
	global	_CPSCON1
	global	_TRISA
	global	_TRISB
	global	_PIE1
	global	_PIE2
	global	_PIE3
	global	_PIE4
	global	_OPTION_REG
	global	_PCON
	global	_WDTCON
	global	_OSCTUNE
	global	_OSCCON
	global	_OSCSTAT
	global	_ADRES
	global	_ADRESL
	global	_ADRESH
	global	_ADCON0
	global	_ADCON1
	global	_LATA
	global	_LATB
	global	_CM1CON0
	global	_CM1CON1
	global	_CM2CON0
	global	_CM2CON1
	global	_CMOUT
	global	_BORCON
	global	_FVRCON
	global	_DACCON0
	global	_DACCON1
	global	_SRCON0
	global	_SRCON1
	global	_APFCON0
	global	_APFCON1
	global	_ANSELA
	global	_ANSELB
	global	_EEADR
	global	_EEADRL
	global	_EEADRH
	global	_EEDAT
	global	_EEDATL
	global	_EEDATH
	global	_EECON1
	global	_EECON2
	global	_RCREG
	global	_TXREG
	global	_SP1BRG
	global	_SP1BRGL
	global	_SPBRG
	global	_SPBRGL
	global	_SP1BRGH
	global	_SPBRGH
	global	_RCSTA
	global	_TXSTA
	global	_BAUDCON
	global	_WPUA
	global	_WPUB
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
	global	_CCPR1
	global	_CCPR1L
	global	_CCPR1H
	global	_CCP1CON
	global	_PWM1CON
	global	_CCP1AS
	global	_ECCP1AS
	global	_PSTR1CON
	global	_CCPR2
	global	_CCPR2L
	global	_CCPR2H
	global	_CCP2CON
	global	_PWM2CON
	global	_CCP2AS
	global	_ECCP2AS
	global	_PSTR2CON
	global	_CCPTMRS
	global	_CCPTMRS0
	global	_CCPR3
	global	_CCPR3L
	global	_CCPR3H
	global	_CCP3CON
	global	_CCPR4
	global	_CCPR4L
	global	_CCPR4H
	global	_CCP4CON
	global	_IOCBP
	global	_IOCBN
	global	_IOCBF
	global	_CLKRCON
	global	_MDCON
	global	_MDSRC
	global	_MDCARL
	global	_MDCARH
	global	_TMR4
	global	_PR4
	global	_T4CON
	global	_TMR6
	global	_PR6
	global	_T6CON
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
UD_abs_pic16f1827_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic16f1827_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic16f1827_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f1827_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f1827_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic16f1827_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic16f1827_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic16f1827_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic16f1827_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic16f1827_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic16f1827_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f1827_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f1827_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f1827_d	udata_ovr	0x000d
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f1827_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f1827_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f1827_13	udata_ovr	0x0013
_PIR3bits
_PIR3
	res	1
UD_abs_pic16f1827_14	udata_ovr	0x0014
_PIR4bits
_PIR4
	res	1
UD_abs_pic16f1827_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic16f1827_16	udata_ovr	0x0016
_TMR1
_TMR1L
	res	1
UD_abs_pic16f1827_17	udata_ovr	0x0017
_TMR1H
	res	1
UD_abs_pic16f1827_18	udata_ovr	0x0018
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f1827_19	udata_ovr	0x0019
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic16f1827_1a	udata_ovr	0x001a
_TMR2
	res	1
UD_abs_pic16f1827_1b	udata_ovr	0x001b
_PR2
	res	1
UD_abs_pic16f1827_1c	udata_ovr	0x001c
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f1827_1e	udata_ovr	0x001e
_CPSCON0bits
_CPSCON0
	res	1
UD_abs_pic16f1827_1f	udata_ovr	0x001f
_CPSCON1bits
_CPSCON1
	res	1
UD_abs_pic16f1827_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f1827_8d	udata_ovr	0x008d
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f1827_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f1827_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f1827_93	udata_ovr	0x0093
_PIE3bits
_PIE3
	res	1
UD_abs_pic16f1827_94	udata_ovr	0x0094
_PIE4bits
_PIE4
	res	1
UD_abs_pic16f1827_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f1827_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic16f1827_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f1827_98	udata_ovr	0x0098
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16f1827_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f1827_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic16f1827_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic16f1827_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic16f1827_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f1827_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f1827_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic16f1827_10d	udata_ovr	0x010d
_LATBbits
_LATB
	res	1
UD_abs_pic16f1827_111	udata_ovr	0x0111
_CM1CON0bits
_CM1CON0
	res	1
UD_abs_pic16f1827_112	udata_ovr	0x0112
_CM1CON1bits
_CM1CON1
	res	1
UD_abs_pic16f1827_113	udata_ovr	0x0113
_CM2CON0bits
_CM2CON0
	res	1
UD_abs_pic16f1827_114	udata_ovr	0x0114
_CM2CON1bits
_CM2CON1
	res	1
UD_abs_pic16f1827_115	udata_ovr	0x0115
_CMOUTbits
_CMOUT
	res	1
UD_abs_pic16f1827_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic16f1827_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic16f1827_118	udata_ovr	0x0118
_DACCON0bits
_DACCON0
	res	1
UD_abs_pic16f1827_119	udata_ovr	0x0119
_DACCON1bits
_DACCON1
	res	1
UD_abs_pic16f1827_11a	udata_ovr	0x011a
_SRCON0bits
_SRCON0
	res	1
UD_abs_pic16f1827_11b	udata_ovr	0x011b
_SRCON1bits
_SRCON1
	res	1
UD_abs_pic16f1827_11d	udata_ovr	0x011d
_APFCON0bits
_APFCON0
	res	1
UD_abs_pic16f1827_11e	udata_ovr	0x011e
_APFCON1bits
_APFCON1
	res	1
UD_abs_pic16f1827_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic16f1827_18d	udata_ovr	0x018d
_ANSELBbits
_ANSELB
	res	1
UD_abs_pic16f1827_191	udata_ovr	0x0191
_EEADR
_EEADRL
	res	1
UD_abs_pic16f1827_192	udata_ovr	0x0192
_EEADRH
	res	1
UD_abs_pic16f1827_193	udata_ovr	0x0193
_EEDAT
_EEDATL
	res	1
UD_abs_pic16f1827_194	udata_ovr	0x0194
_EEDATH
	res	1
UD_abs_pic16f1827_195	udata_ovr	0x0195
_EECON1bits
_EECON1
	res	1
UD_abs_pic16f1827_196	udata_ovr	0x0196
_EECON2
	res	1
UD_abs_pic16f1827_199	udata_ovr	0x0199
_RCREG
	res	1
UD_abs_pic16f1827_19a	udata_ovr	0x019a
_TXREG
	res	1
UD_abs_pic16f1827_19b	udata_ovr	0x019b
_SP1BRG
_SP1BRGL
_SPBRG
_SPBRGL
	res	1
UD_abs_pic16f1827_19c	udata_ovr	0x019c
_SP1BRGH
_SPBRGH
	res	1
UD_abs_pic16f1827_19d	udata_ovr	0x019d
_RCSTAbits
_RCSTA
	res	1
UD_abs_pic16f1827_19e	udata_ovr	0x019e
_TXSTAbits
_TXSTA
	res	1
UD_abs_pic16f1827_19f	udata_ovr	0x019f
_BAUDCONbits
_BAUDCON
	res	1
UD_abs_pic16f1827_20c	udata_ovr	0x020c
_WPUAbits
_WPUA
	res	1
UD_abs_pic16f1827_20d	udata_ovr	0x020d
_WPUBbits
_WPUB
	res	1
UD_abs_pic16f1827_211	udata_ovr	0x0211
_SSP1BUF
_SSPBUF
	res	1
UD_abs_pic16f1827_212	udata_ovr	0x0212
_SSP1ADD
_SSPADD
	res	1
UD_abs_pic16f1827_213	udata_ovr	0x0213
_SSP1MSK
_SSPMSK
	res	1
UD_abs_pic16f1827_214	udata_ovr	0x0214
_SSP1STATbits
_SSPSTATbits
_SSP1STAT
_SSPSTAT
	res	1
UD_abs_pic16f1827_215	udata_ovr	0x0215
_SSP1CON1bits
_SSPCONbits
_SSPCON1bits
_SSP1CON1
_SSPCON
_SSPCON1
	res	1
UD_abs_pic16f1827_216	udata_ovr	0x0216
_SSP1CON2bits
_SSPCON2bits
_SSP1CON2
_SSPCON2
	res	1
UD_abs_pic16f1827_217	udata_ovr	0x0217
_SSP1CON3bits
_SSPCON3bits
_SSP1CON3
_SSPCON3
	res	1
UD_abs_pic16f1827_219	udata_ovr	0x0219
_SSP2BUF
	res	1
UD_abs_pic16f1827_21a	udata_ovr	0x021a
_SSP2ADD
	res	1
UD_abs_pic16f1827_21b	udata_ovr	0x021b
_SSP2MSK
	res	1
UD_abs_pic16f1827_21c	udata_ovr	0x021c
_SSP2STATbits
_SSP2STAT
	res	1
UD_abs_pic16f1827_21d	udata_ovr	0x021d
_SSP2CON1bits
_SSP2CON1
	res	1
UD_abs_pic16f1827_21e	udata_ovr	0x021e
_SSP2CON2bits
_SSP2CON2
	res	1
UD_abs_pic16f1827_21f	udata_ovr	0x021f
_SSP2CON3bits
_SSP2CON3
	res	1
UD_abs_pic16f1827_291	udata_ovr	0x0291
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f1827_292	udata_ovr	0x0292
_CCPR1H
	res	1
UD_abs_pic16f1827_293	udata_ovr	0x0293
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16f1827_294	udata_ovr	0x0294
_PWM1CONbits
_PWM1CON
	res	1
UD_abs_pic16f1827_295	udata_ovr	0x0295
_CCP1ASbits
_ECCP1ASbits
_CCP1AS
_ECCP1AS
	res	1
UD_abs_pic16f1827_296	udata_ovr	0x0296
_PSTR1CONbits
_PSTR1CON
	res	1
UD_abs_pic16f1827_298	udata_ovr	0x0298
_CCPR2
_CCPR2L
	res	1
UD_abs_pic16f1827_299	udata_ovr	0x0299
_CCPR2H
	res	1
UD_abs_pic16f1827_29a	udata_ovr	0x029a
_CCP2CONbits
_CCP2CON
	res	1
UD_abs_pic16f1827_29b	udata_ovr	0x029b
_PWM2CONbits
_PWM2CON
	res	1
UD_abs_pic16f1827_29c	udata_ovr	0x029c
_CCP2ASbits
_ECCP2ASbits
_CCP2AS
_ECCP2AS
	res	1
UD_abs_pic16f1827_29d	udata_ovr	0x029d
_PSTR2CONbits
_PSTR2CON
	res	1
UD_abs_pic16f1827_29e	udata_ovr	0x029e
_CCPTMRSbits
_CCPTMRS0bits
_CCPTMRS
_CCPTMRS0
	res	1
UD_abs_pic16f1827_311	udata_ovr	0x0311
_CCPR3
_CCPR3L
	res	1
UD_abs_pic16f1827_312	udata_ovr	0x0312
_CCPR3H
	res	1
UD_abs_pic16f1827_313	udata_ovr	0x0313
_CCP3CONbits
_CCP3CON
	res	1
UD_abs_pic16f1827_318	udata_ovr	0x0318
_CCPR4
_CCPR4L
	res	1
UD_abs_pic16f1827_319	udata_ovr	0x0319
_CCPR4H
	res	1
UD_abs_pic16f1827_31a	udata_ovr	0x031a
_CCP4CONbits
_CCP4CON
	res	1
UD_abs_pic16f1827_394	udata_ovr	0x0394
_IOCBPbits
_IOCBP
	res	1
UD_abs_pic16f1827_395	udata_ovr	0x0395
_IOCBNbits
_IOCBN
	res	1
UD_abs_pic16f1827_396	udata_ovr	0x0396
_IOCBFbits
_IOCBF
	res	1
UD_abs_pic16f1827_39a	udata_ovr	0x039a
_CLKRCONbits
_CLKRCON
	res	1
UD_abs_pic16f1827_39c	udata_ovr	0x039c
_MDCONbits
_MDCON
	res	1
UD_abs_pic16f1827_39d	udata_ovr	0x039d
_MDSRCbits
_MDSRC
	res	1
UD_abs_pic16f1827_39e	udata_ovr	0x039e
_MDCARLbits
_MDCARL
	res	1
UD_abs_pic16f1827_39f	udata_ovr	0x039f
_MDCARHbits
_MDCARH
	res	1
UD_abs_pic16f1827_415	udata_ovr	0x0415
_TMR4
	res	1
UD_abs_pic16f1827_416	udata_ovr	0x0416
_PR4
	res	1
UD_abs_pic16f1827_417	udata_ovr	0x0417
_T4CONbits
_T4CON
	res	1
UD_abs_pic16f1827_41c	udata_ovr	0x041c
_TMR6
	res	1
UD_abs_pic16f1827_41d	udata_ovr	0x041d
_PR6
	res	1
UD_abs_pic16f1827_41e	udata_ovr	0x041e
_T6CONbits
_T6CON
	res	1
UD_abs_pic16f1827_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic16f1827_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic16f1827_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic16f1827_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic16f1827_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
	res	1
UD_abs_pic16f1827_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic16f1827_fea	udata_ovr	0x0fea
_FSR1L_SHAD
	res	1
UD_abs_pic16f1827_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic16f1827_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic16f1827_fee	udata_ovr	0x0fee
_TOSL
	res	1
UD_abs_pic16f1827_fef	udata_ovr	0x0fef
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
code_pic16f1827	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
