;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:34 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f1509.c"
	list	p=16f1509
	radix dec
	include "p16f1509.inc"
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
	global	_PIR3bits
	global	_T1CONbits
	global	_T1GCONbits
	global	_T2CONbits
	global	_TRISAbits
	global	_TRISBbits
	global	_TRISCbits
	global	_PIE1bits
	global	_PIE2bits
	global	_PIE3bits
	global	_OPTION_REGbits
	global	_PCONbits
	global	_WDTCONbits
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
	global	_NCO1ACCLbits
	global	_NCO1ACCHbits
	global	_NCO1ACCUbits
	global	_NCO1INCLbits
	global	_NCO1INCHbits
	global	_NCO1CONbits
	global	_NCO1CLKbits
	global	_PWM1DCLbits
	global	_PWM1DCHbits
	global	_PWM1CONbits
	global	_PWM2DCLbits
	global	_PWM2DCHbits
	global	_PWM2CONbits
	global	_PWM3DCLbits
	global	_PWM3DCHbits
	global	_PWM3CONbits
	global	_PWM4DCLbits
	global	_PWM4DCHbits
	global	_PWM4CONbits
	global	_CWG1DBRbits
	global	_CWG1DBFbits
	global	_CWG1CON0bits
	global	_CWG1CON1bits
	global	_CWG1CON2bits
	global	_CLCDATAbits
	global	_CLC1CONbits
	global	_CLC1POLbits
	global	_CLC1SEL0bits
	global	_CLC1SEL1bits
	global	_CLC1GLS0bits
	global	_CLC1GLS1bits
	global	_CLC1GLS2bits
	global	_CLC1GLS3bits
	global	_CLC2CONbits
	global	_CLC2POLbits
	global	_CLC2SEL0bits
	global	_CLC2SEL1bits
	global	_CLC2GLS0bits
	global	_CLC2GLS1bits
	global	_CLC2GLS2bits
	global	_CLC2GLS3bits
	global	_CLC3CONbits
	global	_CLC3POLbits
	global	_CLC3SEL0bits
	global	_CLC3SEL1bits
	global	_CLC3GLS0bits
	global	_CLC3GLS1bits
	global	_CLC3GLS2bits
	global	_CLC3GLS3bits
	global	_CLC4CONbits
	global	_CLC4POLbits
	global	_CLC4SEL0bits
	global	_CLC4SEL1bits
	global	_CLC4GLS0bits
	global	_CLC4GLS1bits
	global	_CLC4GLS2bits
	global	_CLC4GLS3bits
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
	global	_TRISA
	global	_TRISB
	global	_TRISC
	global	_PIE1
	global	_PIE2
	global	_PIE3
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
	global	_SPBRG
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
	global	_NCO1ACC
	global	_NCO1ACCL
	global	_NCO1ACCH
	global	_NCO1ACCU
	global	_NCO1INC
	global	_NCO1INCL
	global	_NCO1INCH
	global	_NCO1INCU
	global	_NCO1CON
	global	_NCO1CLK
	global	_PWM1DCL
	global	_PWM1DCH
	global	_PWM1CON
	global	_PWM2DCL
	global	_PWM2DCH
	global	_PWM2CON
	global	_PWM3DCL
	global	_PWM3DCH
	global	_PWM3CON
	global	_PWM4DCL
	global	_PWM4DCH
	global	_PWM4CON
	global	_CWG1DBR
	global	_CWG1DBF
	global	_CWG1CON0
	global	_CWG1CON1
	global	_CWG1CON2
	global	_CLCDATA
	global	_CLC1CON
	global	_CLC1POL
	global	_CLC1SEL0
	global	_CLC1SEL1
	global	_CLC1GLS0
	global	_CLC1GLS1
	global	_CLC1GLS2
	global	_CLC1GLS3
	global	_CLC2CON
	global	_CLC2POL
	global	_CLC2SEL0
	global	_CLC2SEL1
	global	_CLC2GLS0
	global	_CLC2GLS1
	global	_CLC2GLS2
	global	_CLC2GLS3
	global	_CLC3CON
	global	_CLC3POL
	global	_CLC3SEL0
	global	_CLC3SEL1
	global	_CLC3GLS0
	global	_CLC3GLS1
	global	_CLC3GLS2
	global	_CLC3GLS3
	global	_CLC4CON
	global	_CLC4POL
	global	_CLC4SEL0
	global	_CLC4SEL1
	global	_CLC4GLS0
	global	_CLC4GLS1
	global	_CLC4GLS2
	global	_CLC4GLS3
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
UD_abs_pic16f1509_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic16f1509_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic16f1509_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f1509_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f1509_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic16f1509_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic16f1509_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic16f1509_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic16f1509_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic16f1509_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic16f1509_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f1509_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f1509_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f1509_d	udata_ovr	0x000d
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f1509_e	udata_ovr	0x000e
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f1509_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f1509_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f1509_13	udata_ovr	0x0013
_PIR3bits
_PIR3
	res	1
UD_abs_pic16f1509_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic16f1509_16	udata_ovr	0x0016
_TMR1
_TMR1L
	res	1
UD_abs_pic16f1509_17	udata_ovr	0x0017
_TMR1H
	res	1
UD_abs_pic16f1509_18	udata_ovr	0x0018
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f1509_19	udata_ovr	0x0019
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic16f1509_1a	udata_ovr	0x001a
_TMR2
	res	1
UD_abs_pic16f1509_1b	udata_ovr	0x001b
_PR2
	res	1
UD_abs_pic16f1509_1c	udata_ovr	0x001c
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f1509_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f1509_8d	udata_ovr	0x008d
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f1509_8e	udata_ovr	0x008e
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f1509_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f1509_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f1509_93	udata_ovr	0x0093
_PIE3bits
_PIE3
	res	1
UD_abs_pic16f1509_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f1509_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic16f1509_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f1509_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f1509_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic16f1509_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic16f1509_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic16f1509_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f1509_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f1509_9f	udata_ovr	0x009f
_ADCON2bits
_ADCON2
	res	1
UD_abs_pic16f1509_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic16f1509_10d	udata_ovr	0x010d
_LATBbits
_LATB
	res	1
UD_abs_pic16f1509_10e	udata_ovr	0x010e
_LATCbits
_LATC
	res	1
UD_abs_pic16f1509_111	udata_ovr	0x0111
_CM1CON0bits
_CM1CON0
	res	1
UD_abs_pic16f1509_112	udata_ovr	0x0112
_CM1CON1bits
_CM1CON1
	res	1
UD_abs_pic16f1509_113	udata_ovr	0x0113
_CM2CON0bits
_CM2CON0
	res	1
UD_abs_pic16f1509_114	udata_ovr	0x0114
_CM2CON1bits
_CM2CON1
	res	1
UD_abs_pic16f1509_115	udata_ovr	0x0115
_CMOUTbits
_CMOUT
	res	1
UD_abs_pic16f1509_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic16f1509_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic16f1509_118	udata_ovr	0x0118
_DACCON0bits
_DACCON0
	res	1
UD_abs_pic16f1509_119	udata_ovr	0x0119
_DACCON1bits
_DACCON1
	res	1
UD_abs_pic16f1509_11d	udata_ovr	0x011d
_APFCONbits
_APFCON
	res	1
UD_abs_pic16f1509_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic16f1509_18d	udata_ovr	0x018d
_ANSELBbits
_ANSELB
	res	1
UD_abs_pic16f1509_18e	udata_ovr	0x018e
_ANSELCbits
_ANSELC
	res	1
UD_abs_pic16f1509_191	udata_ovr	0x0191
_PMADR
_PMADRL
	res	1
UD_abs_pic16f1509_192	udata_ovr	0x0192
_PMADRH
	res	1
UD_abs_pic16f1509_193	udata_ovr	0x0193
_PMDAT
_PMDATL
	res	1
UD_abs_pic16f1509_194	udata_ovr	0x0194
_PMDATH
	res	1
UD_abs_pic16f1509_195	udata_ovr	0x0195
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic16f1509_196	udata_ovr	0x0196
_PMCON2
	res	1
UD_abs_pic16f1509_197	udata_ovr	0x0197
_VREGCONbits
_VREGCON
	res	1
UD_abs_pic16f1509_199	udata_ovr	0x0199
_RCREG
	res	1
UD_abs_pic16f1509_19a	udata_ovr	0x019a
_TXREG
	res	1
UD_abs_pic16f1509_19b	udata_ovr	0x019b
_SPBRG
_SPBRGL
	res	1
UD_abs_pic16f1509_19c	udata_ovr	0x019c
_SPBRGH
	res	1
UD_abs_pic16f1509_19d	udata_ovr	0x019d
_RCSTAbits
_RCSTA
	res	1
UD_abs_pic16f1509_19e	udata_ovr	0x019e
_TXSTAbits
_TXSTA
	res	1
UD_abs_pic16f1509_19f	udata_ovr	0x019f
_BAUDCONbits
_BAUDCON
	res	1
UD_abs_pic16f1509_20c	udata_ovr	0x020c
_WPUAbits
_WPUA
	res	1
UD_abs_pic16f1509_20d	udata_ovr	0x020d
_WPUBbits
_WPUB
	res	1
UD_abs_pic16f1509_211	udata_ovr	0x0211
_SSP1BUF
_SSPBUF
	res	1
UD_abs_pic16f1509_212	udata_ovr	0x0212
_SSP1ADD
_SSPADD
	res	1
UD_abs_pic16f1509_213	udata_ovr	0x0213
_SSP1MSK
_SSPMSK
	res	1
UD_abs_pic16f1509_214	udata_ovr	0x0214
_SSP1STATbits
_SSPSTATbits
_SSP1STAT
_SSPSTAT
	res	1
UD_abs_pic16f1509_215	udata_ovr	0x0215
_SSP1CON1bits
_SSPCONbits
_SSPCON1bits
_SSP1CON1
_SSPCON
_SSPCON1
	res	1
UD_abs_pic16f1509_216	udata_ovr	0x0216
_SSP1CON2bits
_SSPCON2bits
_SSP1CON2
_SSPCON2
	res	1
UD_abs_pic16f1509_217	udata_ovr	0x0217
_SSP1CON3bits
_SSPCON3bits
_SSP1CON3
_SSPCON3
	res	1
UD_abs_pic16f1509_391	udata_ovr	0x0391
_IOCAPbits
_IOCAP
	res	1
UD_abs_pic16f1509_392	udata_ovr	0x0392
_IOCANbits
_IOCAN
	res	1
UD_abs_pic16f1509_393	udata_ovr	0x0393
_IOCAFbits
_IOCAF
	res	1
UD_abs_pic16f1509_394	udata_ovr	0x0394
_IOCBPbits
_IOCBP
	res	1
UD_abs_pic16f1509_395	udata_ovr	0x0395
_IOCBNbits
_IOCBN
	res	1
UD_abs_pic16f1509_396	udata_ovr	0x0396
_IOCBFbits
_IOCBF
	res	1
UD_abs_pic16f1509_498	udata_ovr	0x0498
_NCO1ACCLbits
_NCO1ACC
_NCO1ACCL
	res	1
UD_abs_pic16f1509_499	udata_ovr	0x0499
_NCO1ACCHbits
_NCO1ACCH
	res	1
UD_abs_pic16f1509_49a	udata_ovr	0x049a
_NCO1ACCUbits
_NCO1ACCU
	res	1
UD_abs_pic16f1509_49b	udata_ovr	0x049b
_NCO1INCLbits
_NCO1INC
_NCO1INCL
	res	1
UD_abs_pic16f1509_49c	udata_ovr	0x049c
_NCO1INCHbits
_NCO1INCH
	res	1
UD_abs_pic16f1509_49d	udata_ovr	0x049d
_NCO1INCU
	res	1
UD_abs_pic16f1509_49e	udata_ovr	0x049e
_NCO1CONbits
_NCO1CON
	res	1
UD_abs_pic16f1509_49f	udata_ovr	0x049f
_NCO1CLKbits
_NCO1CLK
	res	1
UD_abs_pic16f1509_611	udata_ovr	0x0611
_PWM1DCLbits
_PWM1DCL
	res	1
UD_abs_pic16f1509_612	udata_ovr	0x0612
_PWM1DCHbits
_PWM1DCH
	res	1
UD_abs_pic16f1509_613	udata_ovr	0x0613
_PWM1CONbits
_PWM1CON
	res	1
UD_abs_pic16f1509_614	udata_ovr	0x0614
_PWM2DCLbits
_PWM2DCL
	res	1
UD_abs_pic16f1509_615	udata_ovr	0x0615
_PWM2DCHbits
_PWM2DCH
	res	1
UD_abs_pic16f1509_616	udata_ovr	0x0616
_PWM2CONbits
_PWM2CON
	res	1
UD_abs_pic16f1509_617	udata_ovr	0x0617
_PWM3DCLbits
_PWM3DCL
	res	1
UD_abs_pic16f1509_618	udata_ovr	0x0618
_PWM3DCHbits
_PWM3DCH
	res	1
UD_abs_pic16f1509_619	udata_ovr	0x0619
_PWM3CONbits
_PWM3CON
	res	1
UD_abs_pic16f1509_61a	udata_ovr	0x061a
_PWM4DCLbits
_PWM4DCL
	res	1
UD_abs_pic16f1509_61b	udata_ovr	0x061b
_PWM4DCHbits
_PWM4DCH
	res	1
UD_abs_pic16f1509_61c	udata_ovr	0x061c
_PWM4CONbits
_PWM4CON
	res	1
UD_abs_pic16f1509_691	udata_ovr	0x0691
_CWG1DBRbits
_CWG1DBR
	res	1
UD_abs_pic16f1509_692	udata_ovr	0x0692
_CWG1DBFbits
_CWG1DBF
	res	1
UD_abs_pic16f1509_693	udata_ovr	0x0693
_CWG1CON0bits
_CWG1CON0
	res	1
UD_abs_pic16f1509_694	udata_ovr	0x0694
_CWG1CON1bits
_CWG1CON1
	res	1
UD_abs_pic16f1509_695	udata_ovr	0x0695
_CWG1CON2bits
_CWG1CON2
	res	1
UD_abs_pic16f1509_f0f	udata_ovr	0x0f0f
_CLCDATAbits
_CLCDATA
	res	1
UD_abs_pic16f1509_f10	udata_ovr	0x0f10
_CLC1CONbits
_CLC1CON
	res	1
UD_abs_pic16f1509_f11	udata_ovr	0x0f11
_CLC1POLbits
_CLC1POL
	res	1
UD_abs_pic16f1509_f12	udata_ovr	0x0f12
_CLC1SEL0bits
_CLC1SEL0
	res	1
UD_abs_pic16f1509_f13	udata_ovr	0x0f13
_CLC1SEL1bits
_CLC1SEL1
	res	1
UD_abs_pic16f1509_f14	udata_ovr	0x0f14
_CLC1GLS0bits
_CLC1GLS0
	res	1
UD_abs_pic16f1509_f15	udata_ovr	0x0f15
_CLC1GLS1bits
_CLC1GLS1
	res	1
UD_abs_pic16f1509_f16	udata_ovr	0x0f16
_CLC1GLS2bits
_CLC1GLS2
	res	1
UD_abs_pic16f1509_f17	udata_ovr	0x0f17
_CLC1GLS3bits
_CLC1GLS3
	res	1
UD_abs_pic16f1509_f18	udata_ovr	0x0f18
_CLC2CONbits
_CLC2CON
	res	1
UD_abs_pic16f1509_f19	udata_ovr	0x0f19
_CLC2POLbits
_CLC2POL
	res	1
UD_abs_pic16f1509_f1a	udata_ovr	0x0f1a
_CLC2SEL0bits
_CLC2SEL0
	res	1
UD_abs_pic16f1509_f1b	udata_ovr	0x0f1b
_CLC2SEL1bits
_CLC2SEL1
	res	1
UD_abs_pic16f1509_f1c	udata_ovr	0x0f1c
_CLC2GLS0bits
_CLC2GLS0
	res	1
UD_abs_pic16f1509_f1d	udata_ovr	0x0f1d
_CLC2GLS1bits
_CLC2GLS1
	res	1
UD_abs_pic16f1509_f1e	udata_ovr	0x0f1e
_CLC2GLS2bits
_CLC2GLS2
	res	1
UD_abs_pic16f1509_f1f	udata_ovr	0x0f1f
_CLC2GLS3bits
_CLC2GLS3
	res	1
UD_abs_pic16f1509_f20	udata_ovr	0x0f20
_CLC3CONbits
_CLC3CON
	res	1
UD_abs_pic16f1509_f21	udata_ovr	0x0f21
_CLC3POLbits
_CLC3POL
	res	1
UD_abs_pic16f1509_f22	udata_ovr	0x0f22
_CLC3SEL0bits
_CLC3SEL0
	res	1
UD_abs_pic16f1509_f23	udata_ovr	0x0f23
_CLC3SEL1bits
_CLC3SEL1
	res	1
UD_abs_pic16f1509_f24	udata_ovr	0x0f24
_CLC3GLS0bits
_CLC3GLS0
	res	1
UD_abs_pic16f1509_f25	udata_ovr	0x0f25
_CLC3GLS1bits
_CLC3GLS1
	res	1
UD_abs_pic16f1509_f26	udata_ovr	0x0f26
_CLC3GLS2bits
_CLC3GLS2
	res	1
UD_abs_pic16f1509_f27	udata_ovr	0x0f27
_CLC3GLS3bits
_CLC3GLS3
	res	1
UD_abs_pic16f1509_f28	udata_ovr	0x0f28
_CLC4CONbits
_CLC4CON
	res	1
UD_abs_pic16f1509_f29	udata_ovr	0x0f29
_CLC4POLbits
_CLC4POL
	res	1
UD_abs_pic16f1509_f2a	udata_ovr	0x0f2a
_CLC4SEL0bits
_CLC4SEL0
	res	1
UD_abs_pic16f1509_f2b	udata_ovr	0x0f2b
_CLC4SEL1bits
_CLC4SEL1
	res	1
UD_abs_pic16f1509_f2c	udata_ovr	0x0f2c
_CLC4GLS0bits
_CLC4GLS0
	res	1
UD_abs_pic16f1509_f2d	udata_ovr	0x0f2d
_CLC4GLS1bits
_CLC4GLS1
	res	1
UD_abs_pic16f1509_f2e	udata_ovr	0x0f2e
_CLC4GLS2bits
_CLC4GLS2
	res	1
UD_abs_pic16f1509_f2f	udata_ovr	0x0f2f
_CLC4GLS3bits
_CLC4GLS3
	res	1
UD_abs_pic16f1509_f8c	udata_ovr	0x0f8c
_ICDIObits
_ICDIO
	res	1
UD_abs_pic16f1509_f8d	udata_ovr	0x0f8d
_ICDCON0bits
_ICDCON0
	res	1
UD_abs_pic16f1509_f91	udata_ovr	0x0f91
_ICDSTATbits
_ICDSTAT
	res	1
UD_abs_pic16f1509_f95	udata_ovr	0x0f95
_DEVSELbits
_DEVSEL
	res	1
UD_abs_pic16f1509_f96	udata_ovr	0x0f96
_ICDINSTLbits
_ICDINSTL
	res	1
UD_abs_pic16f1509_f97	udata_ovr	0x0f97
_ICDINSTHbits
_ICDINSTH
	res	1
UD_abs_pic16f1509_f9c	udata_ovr	0x0f9c
_ICDBK0CONbits
_ICDBK0CON
	res	1
UD_abs_pic16f1509_f9d	udata_ovr	0x0f9d
_ICDBK0Lbits
_ICDBK0L
	res	1
UD_abs_pic16f1509_f9e	udata_ovr	0x0f9e
_ICDBK0Hbits
_ICDBK0H
	res	1
UD_abs_pic16f1509_fe3	udata_ovr	0x0fe3
_BSRICDSHAD
	res	1
UD_abs_pic16f1509_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic16f1509_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic16f1509_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic16f1509_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic16f1509_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
	res	1
UD_abs_pic16f1509_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic16f1509_fea	udata_ovr	0x0fea
_FSR1L_SHAD
	res	1
UD_abs_pic16f1509_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic16f1509_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic16f1509_fee	udata_ovr	0x0fee
_TOSL
	res	1
UD_abs_pic16f1509_fef	udata_ovr	0x0fef
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
code_pic16f1509	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
