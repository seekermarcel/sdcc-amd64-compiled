;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:43 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f1933.c"
	list	p=16f1933
	radix dec
	include "p16f1933.inc"
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
	global	_PORTEbits
	global	_PIR1bits
	global	_PIR2bits
	global	_PIR3bits
	global	_T1CONbits
	global	_T1GCONbits
	global	_T2CONbits
	global	_CPSCON0bits
	global	_CPSCON1bits
	global	_TRISAbits
	global	_TRISBbits
	global	_TRISCbits
	global	_TRISEbits
	global	_PIE1bits
	global	_PIE2bits
	global	_PIE3bits
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
	global	_LATCbits
	global	_LATEbits
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
	global	_APFCONbits
	global	_ANSELAbits
	global	_ANSELBbits
	global	_EECON1bits
	global	_RCSTAbits
	global	_TXSTAbits
	global	_BAUDCONbits
	global	_WPUBbits
	global	_WPUEbits
	global	_SSPSTATbits
	global	_SSPCONbits
	global	_SSPCON1bits
	global	_SSPCON2bits
	global	_SSPCON3bits
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
	global	_CCPTMRS0bits
	global	_CCPTMRS1bits
	global	_CCP3CONbits
	global	_PWM3CONbits
	global	_CCP3ASbits
	global	_ECCP3ASbits
	global	_PSTR3CONbits
	global	_CCP4CONbits
	global	_CCP5CONbits
	global	_IOCBPbits
	global	_IOCBNbits
	global	_IOCBFbits
	global	_T4CONbits
	global	_T6CONbits
	global	_LCDCONbits
	global	_LCDPSbits
	global	_LCDREFbits
	global	_LCDCSTbits
	global	_LCDRLbits
	global	_LCDSE0bits
	global	_LCDSE1bits
	global	_LCDDATA0bits
	global	_LCDDATA1bits
	global	_LCDDATA3bits
	global	_LCDDATA4bits
	global	_LCDDATA6bits
	global	_LCDDATA7bits
	global	_LCDDATA9bits
	global	_LCDDATA10bits
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
	global	_PORTE
	global	_PIR1
	global	_PIR2
	global	_PIR3
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
	global	_TRISC
	global	_TRISE
	global	_PIE1
	global	_PIE2
	global	_PIE3
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
	global	_LATC
	global	_LATE
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
	global	_APFCON
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
	global	_WPUB
	global	_WPUE
	global	_SSPBUF
	global	_SSPADD
	global	_SSPMSK
	global	_SSPSTAT
	global	_SSPCON
	global	_SSPCON1
	global	_SSPCON2
	global	_SSPCON3
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
	global	_CCPTMRS0
	global	_CCPTMRS1
	global	_CCPR3
	global	_CCPR3L
	global	_CCPR3H
	global	_CCP3CON
	global	_PWM3CON
	global	_CCP3AS
	global	_ECCP3AS
	global	_PSTR3CON
	global	_CCPR4
	global	_CCPR4L
	global	_CCPR4H
	global	_CCP4CON
	global	_CCPR5
	global	_CCPR5L
	global	_CCPR5H
	global	_CCP5CON
	global	_IOCBP
	global	_IOCBN
	global	_IOCBF
	global	_TMR4
	global	_PR4
	global	_T4CON
	global	_TMR6
	global	_PR6
	global	_T6CON
	global	_LCDCON
	global	_LCDPS
	global	_LCDREF
	global	_LCDCST
	global	_LCDRL
	global	_LCDSE0
	global	_LCDSE1
	global	_LCDDATA0
	global	_LCDDATA1
	global	_LCDDATA3
	global	_LCDDATA4
	global	_LCDDATA6
	global	_LCDDATA7
	global	_LCDDATA9
	global	_LCDDATA10
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
UD_abs_pic16f1933_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic16f1933_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic16f1933_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f1933_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f1933_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic16f1933_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic16f1933_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic16f1933_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic16f1933_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic16f1933_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic16f1933_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f1933_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f1933_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f1933_d	udata_ovr	0x000d
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f1933_e	udata_ovr	0x000e
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f1933_10	udata_ovr	0x0010
_PORTEbits
_PORTE
	res	1
UD_abs_pic16f1933_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f1933_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f1933_13	udata_ovr	0x0013
_PIR3bits
_PIR3
	res	1
UD_abs_pic16f1933_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic16f1933_16	udata_ovr	0x0016
_TMR1
_TMR1L
	res	1
UD_abs_pic16f1933_17	udata_ovr	0x0017
_TMR1H
	res	1
UD_abs_pic16f1933_18	udata_ovr	0x0018
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f1933_19	udata_ovr	0x0019
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic16f1933_1a	udata_ovr	0x001a
_TMR2
	res	1
UD_abs_pic16f1933_1b	udata_ovr	0x001b
_PR2
	res	1
UD_abs_pic16f1933_1c	udata_ovr	0x001c
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f1933_1e	udata_ovr	0x001e
_CPSCON0bits
_CPSCON0
	res	1
UD_abs_pic16f1933_1f	udata_ovr	0x001f
_CPSCON1bits
_CPSCON1
	res	1
UD_abs_pic16f1933_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f1933_8d	udata_ovr	0x008d
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f1933_8e	udata_ovr	0x008e
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f1933_90	udata_ovr	0x0090
_TRISEbits
_TRISE
	res	1
UD_abs_pic16f1933_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f1933_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f1933_93	udata_ovr	0x0093
_PIE3bits
_PIE3
	res	1
UD_abs_pic16f1933_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f1933_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic16f1933_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f1933_98	udata_ovr	0x0098
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16f1933_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f1933_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic16f1933_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic16f1933_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic16f1933_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f1933_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f1933_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic16f1933_10d	udata_ovr	0x010d
_LATBbits
_LATB
	res	1
UD_abs_pic16f1933_10e	udata_ovr	0x010e
_LATCbits
_LATC
	res	1
UD_abs_pic16f1933_110	udata_ovr	0x0110
_LATEbits
_LATE
	res	1
UD_abs_pic16f1933_111	udata_ovr	0x0111
_CM1CON0bits
_CM1CON0
	res	1
UD_abs_pic16f1933_112	udata_ovr	0x0112
_CM1CON1bits
_CM1CON1
	res	1
UD_abs_pic16f1933_113	udata_ovr	0x0113
_CM2CON0bits
_CM2CON0
	res	1
UD_abs_pic16f1933_114	udata_ovr	0x0114
_CM2CON1bits
_CM2CON1
	res	1
UD_abs_pic16f1933_115	udata_ovr	0x0115
_CMOUTbits
_CMOUT
	res	1
UD_abs_pic16f1933_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic16f1933_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic16f1933_118	udata_ovr	0x0118
_DACCON0bits
_DACCON0
	res	1
UD_abs_pic16f1933_119	udata_ovr	0x0119
_DACCON1bits
_DACCON1
	res	1
UD_abs_pic16f1933_11a	udata_ovr	0x011a
_SRCON0bits
_SRCON0
	res	1
UD_abs_pic16f1933_11b	udata_ovr	0x011b
_SRCON1bits
_SRCON1
	res	1
UD_abs_pic16f1933_11d	udata_ovr	0x011d
_APFCONbits
_APFCON
	res	1
UD_abs_pic16f1933_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic16f1933_18d	udata_ovr	0x018d
_ANSELBbits
_ANSELB
	res	1
UD_abs_pic16f1933_191	udata_ovr	0x0191
_EEADR
_EEADRL
	res	1
UD_abs_pic16f1933_192	udata_ovr	0x0192
_EEADRH
	res	1
UD_abs_pic16f1933_193	udata_ovr	0x0193
_EEDAT
_EEDATL
	res	1
UD_abs_pic16f1933_194	udata_ovr	0x0194
_EEDATH
	res	1
UD_abs_pic16f1933_195	udata_ovr	0x0195
_EECON1bits
_EECON1
	res	1
UD_abs_pic16f1933_196	udata_ovr	0x0196
_EECON2
	res	1
UD_abs_pic16f1933_199	udata_ovr	0x0199
_RCREG
	res	1
UD_abs_pic16f1933_19a	udata_ovr	0x019a
_TXREG
	res	1
UD_abs_pic16f1933_19b	udata_ovr	0x019b
_SP1BRG
_SP1BRGL
_SPBRG
_SPBRGL
	res	1
UD_abs_pic16f1933_19c	udata_ovr	0x019c
_SP1BRGH
_SPBRGH
	res	1
UD_abs_pic16f1933_19d	udata_ovr	0x019d
_RCSTAbits
_RCSTA
	res	1
UD_abs_pic16f1933_19e	udata_ovr	0x019e
_TXSTAbits
_TXSTA
	res	1
UD_abs_pic16f1933_19f	udata_ovr	0x019f
_BAUDCONbits
_BAUDCON
	res	1
UD_abs_pic16f1933_20d	udata_ovr	0x020d
_WPUBbits
_WPUB
	res	1
UD_abs_pic16f1933_210	udata_ovr	0x0210
_WPUEbits
_WPUE
	res	1
UD_abs_pic16f1933_211	udata_ovr	0x0211
_SSPBUF
	res	1
UD_abs_pic16f1933_212	udata_ovr	0x0212
_SSPADD
	res	1
UD_abs_pic16f1933_213	udata_ovr	0x0213
_SSPMSK
	res	1
UD_abs_pic16f1933_214	udata_ovr	0x0214
_SSPSTATbits
_SSPSTAT
	res	1
UD_abs_pic16f1933_215	udata_ovr	0x0215
_SSPCONbits
_SSPCON1bits
_SSPCON
_SSPCON1
	res	1
UD_abs_pic16f1933_216	udata_ovr	0x0216
_SSPCON2bits
_SSPCON2
	res	1
UD_abs_pic16f1933_217	udata_ovr	0x0217
_SSPCON3bits
_SSPCON3
	res	1
UD_abs_pic16f1933_291	udata_ovr	0x0291
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f1933_292	udata_ovr	0x0292
_CCPR1H
	res	1
UD_abs_pic16f1933_293	udata_ovr	0x0293
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16f1933_294	udata_ovr	0x0294
_PWM1CONbits
_PWM1CON
	res	1
UD_abs_pic16f1933_295	udata_ovr	0x0295
_CCP1ASbits
_ECCP1ASbits
_CCP1AS
_ECCP1AS
	res	1
UD_abs_pic16f1933_296	udata_ovr	0x0296
_PSTR1CONbits
_PSTR1CON
	res	1
UD_abs_pic16f1933_298	udata_ovr	0x0298
_CCPR2
_CCPR2L
	res	1
UD_abs_pic16f1933_299	udata_ovr	0x0299
_CCPR2H
	res	1
UD_abs_pic16f1933_29a	udata_ovr	0x029a
_CCP2CONbits
_CCP2CON
	res	1
UD_abs_pic16f1933_29b	udata_ovr	0x029b
_PWM2CONbits
_PWM2CON
	res	1
UD_abs_pic16f1933_29c	udata_ovr	0x029c
_CCP2ASbits
_ECCP2ASbits
_CCP2AS
_ECCP2AS
	res	1
UD_abs_pic16f1933_29d	udata_ovr	0x029d
_PSTR2CONbits
_PSTR2CON
	res	1
UD_abs_pic16f1933_29e	udata_ovr	0x029e
_CCPTMRS0bits
_CCPTMRS0
	res	1
UD_abs_pic16f1933_29f	udata_ovr	0x029f
_CCPTMRS1bits
_CCPTMRS1
	res	1
UD_abs_pic16f1933_311	udata_ovr	0x0311
_CCPR3
_CCPR3L
	res	1
UD_abs_pic16f1933_312	udata_ovr	0x0312
_CCPR3H
	res	1
UD_abs_pic16f1933_313	udata_ovr	0x0313
_CCP3CONbits
_CCP3CON
	res	1
UD_abs_pic16f1933_314	udata_ovr	0x0314
_PWM3CONbits
_PWM3CON
	res	1
UD_abs_pic16f1933_315	udata_ovr	0x0315
_CCP3ASbits
_ECCP3ASbits
_CCP3AS
_ECCP3AS
	res	1
UD_abs_pic16f1933_316	udata_ovr	0x0316
_PSTR3CONbits
_PSTR3CON
	res	1
UD_abs_pic16f1933_318	udata_ovr	0x0318
_CCPR4
_CCPR4L
	res	1
UD_abs_pic16f1933_319	udata_ovr	0x0319
_CCPR4H
	res	1
UD_abs_pic16f1933_31a	udata_ovr	0x031a
_CCP4CONbits
_CCP4CON
	res	1
UD_abs_pic16f1933_31c	udata_ovr	0x031c
_CCPR5
_CCPR5L
	res	1
UD_abs_pic16f1933_31d	udata_ovr	0x031d
_CCPR5H
	res	1
UD_abs_pic16f1933_31e	udata_ovr	0x031e
_CCP5CONbits
_CCP5CON
	res	1
UD_abs_pic16f1933_394	udata_ovr	0x0394
_IOCBPbits
_IOCBP
	res	1
UD_abs_pic16f1933_395	udata_ovr	0x0395
_IOCBNbits
_IOCBN
	res	1
UD_abs_pic16f1933_396	udata_ovr	0x0396
_IOCBFbits
_IOCBF
	res	1
UD_abs_pic16f1933_415	udata_ovr	0x0415
_TMR4
	res	1
UD_abs_pic16f1933_416	udata_ovr	0x0416
_PR4
	res	1
UD_abs_pic16f1933_417	udata_ovr	0x0417
_T4CONbits
_T4CON
	res	1
UD_abs_pic16f1933_41c	udata_ovr	0x041c
_TMR6
	res	1
UD_abs_pic16f1933_41d	udata_ovr	0x041d
_PR6
	res	1
UD_abs_pic16f1933_41e	udata_ovr	0x041e
_T6CONbits
_T6CON
	res	1
UD_abs_pic16f1933_791	udata_ovr	0x0791
_LCDCONbits
_LCDCON
	res	1
UD_abs_pic16f1933_792	udata_ovr	0x0792
_LCDPSbits
_LCDPS
	res	1
UD_abs_pic16f1933_793	udata_ovr	0x0793
_LCDREFbits
_LCDREF
	res	1
UD_abs_pic16f1933_794	udata_ovr	0x0794
_LCDCSTbits
_LCDCST
	res	1
UD_abs_pic16f1933_795	udata_ovr	0x0795
_LCDRLbits
_LCDRL
	res	1
UD_abs_pic16f1933_798	udata_ovr	0x0798
_LCDSE0bits
_LCDSE0
	res	1
UD_abs_pic16f1933_799	udata_ovr	0x0799
_LCDSE1bits
_LCDSE1
	res	1
UD_abs_pic16f1933_7a0	udata_ovr	0x07a0
_LCDDATA0bits
_LCDDATA0
	res	1
UD_abs_pic16f1933_7a1	udata_ovr	0x07a1
_LCDDATA1bits
_LCDDATA1
	res	1
UD_abs_pic16f1933_7a3	udata_ovr	0x07a3
_LCDDATA3bits
_LCDDATA3
	res	1
UD_abs_pic16f1933_7a4	udata_ovr	0x07a4
_LCDDATA4bits
_LCDDATA4
	res	1
UD_abs_pic16f1933_7a6	udata_ovr	0x07a6
_LCDDATA6bits
_LCDDATA6
	res	1
UD_abs_pic16f1933_7a7	udata_ovr	0x07a7
_LCDDATA7bits
_LCDDATA7
	res	1
UD_abs_pic16f1933_7a9	udata_ovr	0x07a9
_LCDDATA9bits
_LCDDATA9
	res	1
UD_abs_pic16f1933_7aa	udata_ovr	0x07aa
_LCDDATA10bits
_LCDDATA10
	res	1
UD_abs_pic16f1933_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic16f1933_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic16f1933_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic16f1933_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic16f1933_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
	res	1
UD_abs_pic16f1933_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic16f1933_fea	udata_ovr	0x0fea
_FSR1L_SHAD
	res	1
UD_abs_pic16f1933_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic16f1933_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic16f1933_fee	udata_ovr	0x0fee
_TOSL
	res	1
UD_abs_pic16f1933_fef	udata_ovr	0x0fef
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
code_pic16f1933	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
