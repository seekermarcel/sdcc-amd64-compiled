;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:33 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f1458.c"
	list	p=16f1458
	radix dec
	include "p16f1458.inc"
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
	global	_PIR1bits
	global	_PIR2bits
	global	_T1CONbits
	global	_T1GCONbits
	global	_T2CONbits
	global	_TRISAbits
	global	_TRISBbits
	global	_TRISCbits
	global	_PIE1bits
	global	_PIE2bits
	global	_OPTION_REGbits
	global	_PCONbits
	global	_WDTCONbits
	global	_OSCTUNEbits
	global	_OSCCONbits
	global	_OSCSTATbits
	global	_ADCON0bits
	global	_ADCON1bits
	global	_ADCON2bits
	global	_LATAbits
	global	_LATBbits
	global	_LATCbits
	global	_CM1CON0bits
	global	_CM1CON1bits
	global	_CM2CON0bits
	global	_CM2CON1bits
	global	_CMOUTbits
	global	_BORCONbits
	global	_FVRCONbits
	global	_DACCON0bits
	global	_DACCON1bits
	global	_APFCONbits
	global	_ANSELAbits
	global	_ANSELBbits
	global	_ANSELCbits
	global	_PMCON1bits
	global	_VREGCONbits
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
	global	_IOCAPbits
	global	_IOCANbits
	global	_IOCAFbits
	global	_IOCBPbits
	global	_IOCBNbits
	global	_IOCBFbits
	global	_CLKRCONbits
	global	_CRCONbits
	global	_PWM1DCLbits
	global	_PWM1DCHbits
	global	_PWM1CONbits
	global	_PWM1CON0bits
	global	_PWM2DCLbits
	global	_PWM2DCHbits
	global	_PWM2CONbits
	global	_CWG1DBRbits
	global	_CWG1DBFbits
	global	_CWG1CON0bits
	global	_CWG1CON1bits
	global	_CWG1CON2bits
	global	_UCONbits
	global	_USTATbits
	global	_UIRbits
	global	_UCFGbits
	global	_UIEbits
	global	_UEIRbits
	global	_UFRMHbits
	global	_UFRMLbits
	global	_UADDRbits
	global	_UEIEbits
	global	_UEP0bits
	global	_UEP1bits
	global	_UEP2bits
	global	_UEP3bits
	global	_UEP4bits
	global	_UEP5bits
	global	_UEP6bits
	global	_UEP7bits
	global	_ICDIObits
	global	_ICDCON0bits
	global	_ICDSTATbits
	global	_DEVSELbits
	global	_ICDINSTLbits
	global	_ICDINSTHbits
	global	_ICDBK0CONbits
	global	_ICDBK0Lbits
	global	_ICDBK0Hbits
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
	global	_PIR1
	global	_PIR2
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
	global	_PIE1
	global	_PIE2
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
	global	_ADCON2
	global	_LATA
	global	_LATB
	global	_LATC
	global	_CM1CON0
	global	_CM1CON1
	global	_CM2CON0
	global	_CM2CON1
	global	_CMOUT
	global	_BORCON
	global	_FVRCON
	global	_DACCON0
	global	_DACCON1
	global	_APFCON
	global	_ANSELA
	global	_ANSELB
	global	_ANSELC
	global	_PMADR
	global	_PMADRL
	global	_PMADRH
	global	_PMDAT
	global	_PMDATL
	global	_PMDATH
	global	_PMCON1
	global	_PMCON2
	global	_VREGCON
	global	_RCREG
	global	_TXREG
	global	_SPBRGL
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
	global	_IOCAP
	global	_IOCAN
	global	_IOCAF
	global	_IOCBP
	global	_IOCBN
	global	_IOCBF
	global	_CLKRCON
	global	_CRCON
	global	_PWM1DCL
	global	_PWM1DCH
	global	_PWM1CON
	global	_PWM1CON0
	global	_PWM2DCL
	global	_PWM2DCH
	global	_PWM2CON
	global	_CWG1DBR
	global	_CWG1DBF
	global	_CWG1CON0
	global	_CWG1CON1
	global	_CWG1CON2
	global	_CRRC
	global	_TST_CRRCL
	global	_TST_CRRCH
	global	_TST_CRLT
	global	_UCON
	global	_USTAT
	global	_UIR
	global	_UCFG
	global	_UIE
	global	_UEIR
	global	_UFRM
	global	_UFRMH
	global	_UFRML
	global	_UADDR
	global	_UEIE
	global	_UEP0
	global	_UEP1
	global	_UEP2
	global	_UEP3
	global	_UEP4
	global	_UEP5
	global	_UEP6
	global	_UEP7
	global	_ICDIO
	global	_ICDCON0
	global	_ICDSTAT
	global	_DEVSEL
	global	_ICDINSTL
	global	_ICDINSTH
	global	_ICDBK0CON
	global	_ICDBK0L
	global	_ICDBK0H
	global	_BSRICDSHAD
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
UD_abs_pic16f1458_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic16f1458_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic16f1458_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f1458_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f1458_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic16f1458_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic16f1458_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic16f1458_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic16f1458_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic16f1458_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic16f1458_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f1458_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f1458_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f1458_d	udata_ovr	0x000d
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f1458_e	udata_ovr	0x000e
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f1458_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f1458_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f1458_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic16f1458_16	udata_ovr	0x0016
_TMR1
_TMR1L
	res	1
UD_abs_pic16f1458_17	udata_ovr	0x0017
_TMR1H
	res	1
UD_abs_pic16f1458_18	udata_ovr	0x0018
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f1458_19	udata_ovr	0x0019
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic16f1458_1a	udata_ovr	0x001a
_TMR2
	res	1
UD_abs_pic16f1458_1b	udata_ovr	0x001b
_PR2
	res	1
UD_abs_pic16f1458_1c	udata_ovr	0x001c
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f1458_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f1458_8d	udata_ovr	0x008d
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f1458_8e	udata_ovr	0x008e
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f1458_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f1458_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f1458_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f1458_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic16f1458_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f1458_98	udata_ovr	0x0098
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16f1458_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f1458_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic16f1458_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic16f1458_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic16f1458_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f1458_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f1458_9f	udata_ovr	0x009f
_ADCON2bits
_ADCON2
	res	1
UD_abs_pic16f1458_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic16f1458_10d	udata_ovr	0x010d
_LATBbits
_LATB
	res	1
UD_abs_pic16f1458_10e	udata_ovr	0x010e
_LATCbits
_LATC
	res	1
UD_abs_pic16f1458_111	udata_ovr	0x0111
_CM1CON0bits
_CM1CON0
	res	1
UD_abs_pic16f1458_112	udata_ovr	0x0112
_CM1CON1bits
_CM1CON1
	res	1
UD_abs_pic16f1458_113	udata_ovr	0x0113
_CM2CON0bits
_CM2CON0
	res	1
UD_abs_pic16f1458_114	udata_ovr	0x0114
_CM2CON1bits
_CM2CON1
	res	1
UD_abs_pic16f1458_115	udata_ovr	0x0115
_CMOUTbits
_CMOUT
	res	1
UD_abs_pic16f1458_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic16f1458_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic16f1458_118	udata_ovr	0x0118
_DACCON0bits
_DACCON0
	res	1
UD_abs_pic16f1458_119	udata_ovr	0x0119
_DACCON1bits
_DACCON1
	res	1
UD_abs_pic16f1458_11d	udata_ovr	0x011d
_APFCONbits
_APFCON
	res	1
UD_abs_pic16f1458_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic16f1458_18d	udata_ovr	0x018d
_ANSELBbits
_ANSELB
	res	1
UD_abs_pic16f1458_18e	udata_ovr	0x018e
_ANSELCbits
_ANSELC
	res	1
UD_abs_pic16f1458_191	udata_ovr	0x0191
_PMADR
_PMADRL
	res	1
UD_abs_pic16f1458_192	udata_ovr	0x0192
_PMADRH
	res	1
UD_abs_pic16f1458_193	udata_ovr	0x0193
_PMDAT
_PMDATL
	res	1
UD_abs_pic16f1458_194	udata_ovr	0x0194
_PMDATH
	res	1
UD_abs_pic16f1458_195	udata_ovr	0x0195
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic16f1458_196	udata_ovr	0x0196
_PMCON2
	res	1
UD_abs_pic16f1458_197	udata_ovr	0x0197
_VREGCONbits
_VREGCON
	res	1
UD_abs_pic16f1458_199	udata_ovr	0x0199
_RCREG
	res	1
UD_abs_pic16f1458_19a	udata_ovr	0x019a
_TXREG
	res	1
UD_abs_pic16f1458_19b	udata_ovr	0x019b
_SPBRGL
	res	1
UD_abs_pic16f1458_19c	udata_ovr	0x019c
_SPBRGH
	res	1
UD_abs_pic16f1458_19d	udata_ovr	0x019d
_RCSTAbits
_RCSTA
	res	1
UD_abs_pic16f1458_19e	udata_ovr	0x019e
_TXSTAbits
_TXSTA
	res	1
UD_abs_pic16f1458_19f	udata_ovr	0x019f
_BAUDCONbits
_BAUDCON
	res	1
UD_abs_pic16f1458_20c	udata_ovr	0x020c
_WPUAbits
_WPUA
	res	1
UD_abs_pic16f1458_20d	udata_ovr	0x020d
_WPUBbits
_WPUB
	res	1
UD_abs_pic16f1458_211	udata_ovr	0x0211
_SSP1BUF
_SSPBUF
	res	1
UD_abs_pic16f1458_212	udata_ovr	0x0212
_SSP1ADD
_SSPADD
	res	1
UD_abs_pic16f1458_213	udata_ovr	0x0213
_SSP1MSK
_SSPMSK
	res	1
UD_abs_pic16f1458_214	udata_ovr	0x0214
_SSP1STATbits
_SSPSTATbits
_SSP1STAT
_SSPSTAT
	res	1
UD_abs_pic16f1458_215	udata_ovr	0x0215
_SSP1CON1bits
_SSPCONbits
_SSPCON1bits
_SSP1CON1
_SSPCON
_SSPCON1
	res	1
UD_abs_pic16f1458_216	udata_ovr	0x0216
_SSP1CON2bits
_SSPCON2bits
_SSP1CON2
_SSPCON2
	res	1
UD_abs_pic16f1458_217	udata_ovr	0x0217
_SSP1CON3bits
_SSPCON3bits
_SSP1CON3
_SSPCON3
	res	1
UD_abs_pic16f1458_391	udata_ovr	0x0391
_IOCAPbits
_IOCAP
	res	1
UD_abs_pic16f1458_392	udata_ovr	0x0392
_IOCANbits
_IOCAN
	res	1
UD_abs_pic16f1458_393	udata_ovr	0x0393
_IOCAFbits
_IOCAF
	res	1
UD_abs_pic16f1458_394	udata_ovr	0x0394
_IOCBPbits
_IOCBP
	res	1
UD_abs_pic16f1458_395	udata_ovr	0x0395
_IOCBNbits
_IOCBN
	res	1
UD_abs_pic16f1458_396	udata_ovr	0x0396
_IOCBFbits
_IOCBF
	res	1
UD_abs_pic16f1458_39a	udata_ovr	0x039a
_CLKRCONbits
_CLKRCON
	res	1
UD_abs_pic16f1458_39b	udata_ovr	0x039b
_CRCONbits
_CRCON
	res	1
UD_abs_pic16f1458_611	udata_ovr	0x0611
_PWM1DCLbits
_PWM1DCL
	res	1
UD_abs_pic16f1458_612	udata_ovr	0x0612
_PWM1DCHbits
_PWM1DCH
	res	1
UD_abs_pic16f1458_613	udata_ovr	0x0613
_PWM1CONbits
_PWM1CON0bits
_PWM1CON
_PWM1CON0
	res	1
UD_abs_pic16f1458_614	udata_ovr	0x0614
_PWM2DCLbits
_PWM2DCL
	res	1
UD_abs_pic16f1458_615	udata_ovr	0x0615
_PWM2DCHbits
_PWM2DCH
	res	1
UD_abs_pic16f1458_616	udata_ovr	0x0616
_PWM2CONbits
_PWM2CON
	res	1
UD_abs_pic16f1458_691	udata_ovr	0x0691
_CWG1DBRbits
_CWG1DBR
	res	1
UD_abs_pic16f1458_692	udata_ovr	0x0692
_CWG1DBFbits
_CWG1DBF
	res	1
UD_abs_pic16f1458_693	udata_ovr	0x0693
_CWG1CON0bits
_CWG1CON0
	res	1
UD_abs_pic16f1458_694	udata_ovr	0x0694
_CWG1CON1bits
_CWG1CON1
	res	1
UD_abs_pic16f1458_695	udata_ovr	0x0695
_CWG1CON2bits
_CWG1CON2
	res	1
UD_abs_pic16f1458_e10	udata_ovr	0x0e10
_CRRC
_TST_CRRCL
	res	1
UD_abs_pic16f1458_e11	udata_ovr	0x0e11
_TST_CRRCH
	res	1
UD_abs_pic16f1458_e12	udata_ovr	0x0e12
_TST_CRLT
	res	1
UD_abs_pic16f1458_e8e	udata_ovr	0x0e8e
_UCONbits
_UCON
	res	1
UD_abs_pic16f1458_e8f	udata_ovr	0x0e8f
_USTATbits
_USTAT
	res	1
UD_abs_pic16f1458_e90	udata_ovr	0x0e90
_UIRbits
_UIR
	res	1
UD_abs_pic16f1458_e91	udata_ovr	0x0e91
_UCFGbits
_UCFG
	res	1
UD_abs_pic16f1458_e92	udata_ovr	0x0e92
_UIEbits
_UIE
	res	1
UD_abs_pic16f1458_e93	udata_ovr	0x0e93
_UEIRbits
_UEIR
	res	1
UD_abs_pic16f1458_e94	udata_ovr	0x0e94
_UFRMHbits
_UFRM
_UFRMH
	res	1
UD_abs_pic16f1458_e95	udata_ovr	0x0e95
_UFRMLbits
_UFRML
	res	1
UD_abs_pic16f1458_e96	udata_ovr	0x0e96
_UADDRbits
_UADDR
	res	1
UD_abs_pic16f1458_e97	udata_ovr	0x0e97
_UEIEbits
_UEIE
	res	1
UD_abs_pic16f1458_e98	udata_ovr	0x0e98
_UEP0bits
_UEP0
	res	1
UD_abs_pic16f1458_e99	udata_ovr	0x0e99
_UEP1bits
_UEP1
	res	1
UD_abs_pic16f1458_e9a	udata_ovr	0x0e9a
_UEP2bits
_UEP2
	res	1
UD_abs_pic16f1458_e9b	udata_ovr	0x0e9b
_UEP3bits
_UEP3
	res	1
UD_abs_pic16f1458_e9c	udata_ovr	0x0e9c
_UEP4bits
_UEP4
	res	1
UD_abs_pic16f1458_e9d	udata_ovr	0x0e9d
_UEP5bits
_UEP5
	res	1
UD_abs_pic16f1458_e9e	udata_ovr	0x0e9e
_UEP6bits
_UEP6
	res	1
UD_abs_pic16f1458_e9f	udata_ovr	0x0e9f
_UEP7bits
_UEP7
	res	1
UD_abs_pic16f1458_f8c	udata_ovr	0x0f8c
_ICDIObits
_ICDIO
	res	1
UD_abs_pic16f1458_f8d	udata_ovr	0x0f8d
_ICDCON0bits
_ICDCON0
	res	1
UD_abs_pic16f1458_f91	udata_ovr	0x0f91
_ICDSTATbits
_ICDSTAT
	res	1
UD_abs_pic16f1458_f95	udata_ovr	0x0f95
_DEVSELbits
_DEVSEL
	res	1
UD_abs_pic16f1458_f96	udata_ovr	0x0f96
_ICDINSTLbits
_ICDINSTL
	res	1
UD_abs_pic16f1458_f97	udata_ovr	0x0f97
_ICDINSTHbits
_ICDINSTH
	res	1
UD_abs_pic16f1458_f9c	udata_ovr	0x0f9c
_ICDBK0CONbits
_ICDBK0CON
	res	1
UD_abs_pic16f1458_f9d	udata_ovr	0x0f9d
_ICDBK0Lbits
_ICDBK0L
	res	1
UD_abs_pic16f1458_f9e	udata_ovr	0x0f9e
_ICDBK0Hbits
_ICDBK0H
	res	1
UD_abs_pic16f1458_fe3	udata_ovr	0x0fe3
_BSRICDSHAD
	res	1
UD_abs_pic16f1458_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic16f1458_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic16f1458_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic16f1458_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic16f1458_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
	res	1
UD_abs_pic16f1458_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic16f1458_fea	udata_ovr	0x0fea
_FSR1L_SHAD
	res	1
UD_abs_pic16f1458_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic16f1458_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic16f1458_fee	udata_ovr	0x0fee
_TOSL
	res	1
UD_abs_pic16f1458_fef	udata_ovr	0x0fef
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
code_pic16f1458	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
