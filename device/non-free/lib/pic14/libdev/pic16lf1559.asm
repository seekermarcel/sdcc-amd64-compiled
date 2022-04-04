;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:50 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16lf1559.c"
	list	p=16lf1559
	radix dec
	include "p16lf1559.inc"
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
	global	_OSCCONbits
	global	_OSCSTATbits
	global	_ADCON0bits
	global	_ADCON1bits
	global	_ADCON2bits
	global	_LATAbits
	global	_LATBbits
	global	_LATCbits
	global	_BORCONbits
	global	_FVRCONbits
	global	_APFCONbits
	global	_ANSELAbits
	global	_ANSELBbits
	global	_ANSELCbits
	global	_PMCON1bits
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
	global	_PWM1DCLbits
	global	_PWM1DCHbits
	global	_PWM1CONbits
	global	_PWM1CON0bits
	global	_PWM2DCLbits
	global	_PWM2DCHbits
	global	_PWM2CONbits
	global	_AAD1CON0bits
	global	_AADCON0bits
	global	_AD1CON0bits
	global	_AADCON1bits
	global	_ADCOMCONbits
	global	_AAD1CON2bits
	global	_AADCON2bits
	global	_AD1CON2bits
	global	_AAD1CON3bits
	global	_AADCON3bits
	global	_AD1CON3bits
	global	_AADSTATbits
	global	_ADSTATbits
	global	_AAD1PREbits
	global	_AADPREbits
	global	_AD1PREbits
	global	_AD1PRECONbits
	global	_AAD1ACQbits
	global	_AADACQbits
	global	_AD1ACQbits
	global	_AD1ACQCONbits
	global	_AAD1GRDbits
	global	_AADGRDbits
	global	_AD1GRDbits
	global	_AAD1CAPbits
	global	_AAD1CAPCONbits
	global	_AADCAPbits
	global	_AD1CAPCONbits
	global	_AAD1CHbits
	global	_AD1CHbits
	global	_AAD2CON0bits
	global	_AD2CON0bits
	global	_AAD2CON2bits
	global	_AD2CON2bits
	global	_AAD2CON3bits
	global	_AD2CON3bits
	global	_AAD2PREbits
	global	_AD2PREbits
	global	_AD2PRECONbits
	global	_AAD2ACQbits
	global	_AD2ACQbits
	global	_AD2ACQCONbits
	global	_AAD2GRDbits
	global	_AD2GRDbits
	global	_AAD2CAPbits
	global	_AAD2CAPCONbits
	global	_AD2CAPCONbits
	global	_AAD2CHbits
	global	_AD2CHbits
	global	_ICDIObits
	global	_ICDCON0bits
	global	_ICDSTATbits
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
	global	_BORCON
	global	_FVRCON
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
	global	_PWM1DCL
	global	_PWM1DCH
	global	_PWM1CON
	global	_PWM1CON0
	global	_PWM2DCL
	global	_PWM2DCH
	global	_PWM2CON
	global	_AAD1CON0
	global	_AADCON0
	global	_AD1CON0
	global	_AADCON1
	global	_ADCOMCON
	global	_AAD1CON2
	global	_AADCON2
	global	_AD1CON2
	global	_AAD1CON3
	global	_AADCON3
	global	_AD1CON3
	global	_AADSTAT
	global	_ADSTAT
	global	_AAD1PRE
	global	_AADPRE
	global	_AD1PRE
	global	_AD1PRECON
	global	_AAD1ACQ
	global	_AADACQ
	global	_AD1ACQ
	global	_AD1ACQCON
	global	_AAD1GRD
	global	_AADGRD
	global	_AD1GRD
	global	_AAD1CAP
	global	_AAD1CAPCON
	global	_AADCAP
	global	_AD1CAPCON
	global	_AAD1RES0
	global	_AAD1RES0L
	global	_AD1RES0L
	global	_AAD1RES0H
	global	_AD1RES0H
	global	_AAD1RES1
	global	_AAD1RES1L
	global	_AD1RES1L
	global	_AAD1RES1H
	global	_AD1RES1H
	global	_AAD1CH
	global	_AD1CH
	global	_AAD2CON0
	global	_AD2CON0
	global	_AAD2CON2
	global	_AD2CON2
	global	_AAD2CON3
	global	_AD2CON3
	global	_AAD2PRE
	global	_AD2PRE
	global	_AD2PRECON
	global	_AAD2ACQ
	global	_AD2ACQ
	global	_AD2ACQCON
	global	_AAD2GRD
	global	_AD2GRD
	global	_AAD2CAP
	global	_AAD2CAPCON
	global	_AD2CAPCON
	global	_AAD2RES0
	global	_AAD2RES0L
	global	_AAD2RES0H
	global	_AAD2RES1
	global	_AAD2RES1L
	global	_AAD2RES1H
	global	_AAD2CH
	global	_AD2CH
	global	_ICDIO
	global	_ICDCON0
	global	_ICDSTAT
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
UD_abs_pic16lf1559_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic16lf1559_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic16lf1559_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16lf1559_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16lf1559_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic16lf1559_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic16lf1559_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic16lf1559_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic16lf1559_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic16lf1559_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic16lf1559_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16lf1559_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16lf1559_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic16lf1559_d	udata_ovr	0x000d
_PORTBbits
_PORTB
	res	1
UD_abs_pic16lf1559_e	udata_ovr	0x000e
_PORTCbits
_PORTC
	res	1
UD_abs_pic16lf1559_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic16lf1559_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic16lf1559_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic16lf1559_16	udata_ovr	0x0016
_TMR1
_TMR1L
	res	1
UD_abs_pic16lf1559_17	udata_ovr	0x0017
_TMR1H
	res	1
UD_abs_pic16lf1559_18	udata_ovr	0x0018
_T1CONbits
_T1CON
	res	1
UD_abs_pic16lf1559_19	udata_ovr	0x0019
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic16lf1559_1a	udata_ovr	0x001a
_TMR2
	res	1
UD_abs_pic16lf1559_1b	udata_ovr	0x001b
_PR2
	res	1
UD_abs_pic16lf1559_1c	udata_ovr	0x001c
_T2CONbits
_T2CON
	res	1
UD_abs_pic16lf1559_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic16lf1559_8d	udata_ovr	0x008d
_TRISBbits
_TRISB
	res	1
UD_abs_pic16lf1559_8e	udata_ovr	0x008e
_TRISCbits
_TRISC
	res	1
UD_abs_pic16lf1559_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic16lf1559_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic16lf1559_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16lf1559_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic16lf1559_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16lf1559_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16lf1559_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic16lf1559_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic16lf1559_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic16lf1559_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16lf1559_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16lf1559_9f	udata_ovr	0x009f
_ADCON2bits
_ADCON2
	res	1
UD_abs_pic16lf1559_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic16lf1559_10d	udata_ovr	0x010d
_LATBbits
_LATB
	res	1
UD_abs_pic16lf1559_10e	udata_ovr	0x010e
_LATCbits
_LATC
	res	1
UD_abs_pic16lf1559_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic16lf1559_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic16lf1559_11d	udata_ovr	0x011d
_APFCONbits
_APFCON
	res	1
UD_abs_pic16lf1559_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic16lf1559_18d	udata_ovr	0x018d
_ANSELBbits
_ANSELB
	res	1
UD_abs_pic16lf1559_18e	udata_ovr	0x018e
_ANSELCbits
_ANSELC
	res	1
UD_abs_pic16lf1559_191	udata_ovr	0x0191
_PMADR
_PMADRL
	res	1
UD_abs_pic16lf1559_192	udata_ovr	0x0192
_PMADRH
	res	1
UD_abs_pic16lf1559_193	udata_ovr	0x0193
_PMDAT
_PMDATL
	res	1
UD_abs_pic16lf1559_194	udata_ovr	0x0194
_PMDATH
	res	1
UD_abs_pic16lf1559_195	udata_ovr	0x0195
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic16lf1559_196	udata_ovr	0x0196
_PMCON2
	res	1
UD_abs_pic16lf1559_199	udata_ovr	0x0199
_RCREG
	res	1
UD_abs_pic16lf1559_19a	udata_ovr	0x019a
_TXREG
	res	1
UD_abs_pic16lf1559_19b	udata_ovr	0x019b
_SPBRG
_SPBRGL
	res	1
UD_abs_pic16lf1559_19c	udata_ovr	0x019c
_SPBRGH
	res	1
UD_abs_pic16lf1559_19d	udata_ovr	0x019d
_RCSTAbits
_RCSTA
	res	1
UD_abs_pic16lf1559_19e	udata_ovr	0x019e
_TXSTAbits
_TXSTA
	res	1
UD_abs_pic16lf1559_19f	udata_ovr	0x019f
_BAUDCONbits
_BAUDCON
	res	1
UD_abs_pic16lf1559_20c	udata_ovr	0x020c
_WPUAbits
_WPUA
	res	1
UD_abs_pic16lf1559_20d	udata_ovr	0x020d
_WPUBbits
_WPUB
	res	1
UD_abs_pic16lf1559_211	udata_ovr	0x0211
_SSP1BUF
_SSPBUF
	res	1
UD_abs_pic16lf1559_212	udata_ovr	0x0212
_SSP1ADD
_SSPADD
	res	1
UD_abs_pic16lf1559_213	udata_ovr	0x0213
_SSP1MSK
_SSPMSK
	res	1
UD_abs_pic16lf1559_214	udata_ovr	0x0214
_SSP1STATbits
_SSPSTATbits
_SSP1STAT
_SSPSTAT
	res	1
UD_abs_pic16lf1559_215	udata_ovr	0x0215
_SSP1CON1bits
_SSPCONbits
_SSPCON1bits
_SSP1CON1
_SSPCON
_SSPCON1
	res	1
UD_abs_pic16lf1559_216	udata_ovr	0x0216
_SSP1CON2bits
_SSPCON2bits
_SSP1CON2
_SSPCON2
	res	1
UD_abs_pic16lf1559_217	udata_ovr	0x0217
_SSP1CON3bits
_SSPCON3bits
_SSP1CON3
_SSPCON3
	res	1
UD_abs_pic16lf1559_391	udata_ovr	0x0391
_IOCAPbits
_IOCAP
	res	1
UD_abs_pic16lf1559_392	udata_ovr	0x0392
_IOCANbits
_IOCAN
	res	1
UD_abs_pic16lf1559_393	udata_ovr	0x0393
_IOCAFbits
_IOCAF
	res	1
UD_abs_pic16lf1559_394	udata_ovr	0x0394
_IOCBPbits
_IOCBP
	res	1
UD_abs_pic16lf1559_395	udata_ovr	0x0395
_IOCBNbits
_IOCBN
	res	1
UD_abs_pic16lf1559_396	udata_ovr	0x0396
_IOCBFbits
_IOCBF
	res	1
UD_abs_pic16lf1559_611	udata_ovr	0x0611
_PWM1DCLbits
_PWM1DCL
	res	1
UD_abs_pic16lf1559_612	udata_ovr	0x0612
_PWM1DCHbits
_PWM1DCH
	res	1
UD_abs_pic16lf1559_613	udata_ovr	0x0613
_PWM1CONbits
_PWM1CON0bits
_PWM1CON
_PWM1CON0
	res	1
UD_abs_pic16lf1559_614	udata_ovr	0x0614
_PWM2DCLbits
_PWM2DCL
	res	1
UD_abs_pic16lf1559_615	udata_ovr	0x0615
_PWM2DCHbits
_PWM2DCH
	res	1
UD_abs_pic16lf1559_616	udata_ovr	0x0616
_PWM2CONbits
_PWM2CON
	res	1
UD_abs_pic16lf1559_711	udata_ovr	0x0711
_AAD1CON0bits
_AADCON0bits
_AD1CON0bits
_AAD1CON0
_AADCON0
_AD1CON0
	res	1
UD_abs_pic16lf1559_712	udata_ovr	0x0712
_AADCON1bits
_ADCOMCONbits
_AADCON1
_ADCOMCON
	res	1
UD_abs_pic16lf1559_713	udata_ovr	0x0713
_AAD1CON2bits
_AADCON2bits
_AD1CON2bits
_AAD1CON2
_AADCON2
_AD1CON2
	res	1
UD_abs_pic16lf1559_714	udata_ovr	0x0714
_AAD1CON3bits
_AADCON3bits
_AD1CON3bits
_AAD1CON3
_AADCON3
_AD1CON3
	res	1
UD_abs_pic16lf1559_715	udata_ovr	0x0715
_AADSTATbits
_ADSTATbits
_AADSTAT
_ADSTAT
	res	1
UD_abs_pic16lf1559_716	udata_ovr	0x0716
_AAD1PREbits
_AADPREbits
_AD1PREbits
_AD1PRECONbits
_AAD1PRE
_AADPRE
_AD1PRE
_AD1PRECON
	res	1
UD_abs_pic16lf1559_717	udata_ovr	0x0717
_AAD1ACQbits
_AADACQbits
_AD1ACQbits
_AD1ACQCONbits
_AAD1ACQ
_AADACQ
_AD1ACQ
_AD1ACQCON
	res	1
UD_abs_pic16lf1559_718	udata_ovr	0x0718
_AAD1GRDbits
_AADGRDbits
_AD1GRDbits
_AAD1GRD
_AADGRD
_AD1GRD
	res	1
UD_abs_pic16lf1559_719	udata_ovr	0x0719
_AAD1CAPbits
_AAD1CAPCONbits
_AADCAPbits
_AD1CAPCONbits
_AAD1CAP
_AAD1CAPCON
_AADCAP
_AD1CAPCON
	res	1
UD_abs_pic16lf1559_71a	udata_ovr	0x071a
_AAD1RES0
_AAD1RES0L
_AD1RES0L
	res	1
UD_abs_pic16lf1559_71b	udata_ovr	0x071b
_AAD1RES0H
_AD1RES0H
	res	1
UD_abs_pic16lf1559_71c	udata_ovr	0x071c
_AAD1RES1
_AAD1RES1L
_AD1RES1L
	res	1
UD_abs_pic16lf1559_71d	udata_ovr	0x071d
_AAD1RES1H
_AD1RES1H
	res	1
UD_abs_pic16lf1559_71e	udata_ovr	0x071e
_AAD1CHbits
_AD1CHbits
_AAD1CH
_AD1CH
	res	1
UD_abs_pic16lf1559_791	udata_ovr	0x0791
_AAD2CON0bits
_AD2CON0bits
_AAD2CON0
_AD2CON0
	res	1
UD_abs_pic16lf1559_793	udata_ovr	0x0793
_AAD2CON2bits
_AD2CON2bits
_AAD2CON2
_AD2CON2
	res	1
UD_abs_pic16lf1559_794	udata_ovr	0x0794
_AAD2CON3bits
_AD2CON3bits
_AAD2CON3
_AD2CON3
	res	1
UD_abs_pic16lf1559_796	udata_ovr	0x0796
_AAD2PREbits
_AD2PREbits
_AD2PRECONbits
_AAD2PRE
_AD2PRE
_AD2PRECON
	res	1
UD_abs_pic16lf1559_797	udata_ovr	0x0797
_AAD2ACQbits
_AD2ACQbits
_AD2ACQCONbits
_AAD2ACQ
_AD2ACQ
_AD2ACQCON
	res	1
UD_abs_pic16lf1559_798	udata_ovr	0x0798
_AAD2GRDbits
_AD2GRDbits
_AAD2GRD
_AD2GRD
	res	1
UD_abs_pic16lf1559_799	udata_ovr	0x0799
_AAD2CAPbits
_AAD2CAPCONbits
_AD2CAPCONbits
_AAD2CAP
_AAD2CAPCON
_AD2CAPCON
	res	1
UD_abs_pic16lf1559_79a	udata_ovr	0x079a
_AAD2RES0
_AAD2RES0L
	res	1
UD_abs_pic16lf1559_79b	udata_ovr	0x079b
_AAD2RES0H
	res	1
UD_abs_pic16lf1559_79c	udata_ovr	0x079c
_AAD2RES1
_AAD2RES1L
	res	1
UD_abs_pic16lf1559_79d	udata_ovr	0x079d
_AAD2RES1H
	res	1
UD_abs_pic16lf1559_79e	udata_ovr	0x079e
_AAD2CHbits
_AD2CHbits
_AAD2CH
_AD2CH
	res	1
UD_abs_pic16lf1559_f8c	udata_ovr	0x0f8c
_ICDIObits
_ICDIO
	res	1
UD_abs_pic16lf1559_f8d	udata_ovr	0x0f8d
_ICDCON0bits
_ICDCON0
	res	1
UD_abs_pic16lf1559_f91	udata_ovr	0x0f91
_ICDSTATbits
_ICDSTAT
	res	1
UD_abs_pic16lf1559_f96	udata_ovr	0x0f96
_ICDINSTLbits
_ICDINSTL
	res	1
UD_abs_pic16lf1559_f97	udata_ovr	0x0f97
_ICDINSTHbits
_ICDINSTH
	res	1
UD_abs_pic16lf1559_f9c	udata_ovr	0x0f9c
_ICDBK0CONbits
_ICDBK0CON
	res	1
UD_abs_pic16lf1559_f9d	udata_ovr	0x0f9d
_ICDBK0Lbits
_ICDBK0L
	res	1
UD_abs_pic16lf1559_f9e	udata_ovr	0x0f9e
_ICDBK0Hbits
_ICDBK0H
	res	1
UD_abs_pic16lf1559_fe3	udata_ovr	0x0fe3
_BSRICDSHAD
	res	1
UD_abs_pic16lf1559_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic16lf1559_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic16lf1559_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic16lf1559_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic16lf1559_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
	res	1
UD_abs_pic16lf1559_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic16lf1559_fea	udata_ovr	0x0fea
_FSR1L_SHAD
	res	1
UD_abs_pic16lf1559_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic16lf1559_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic16lf1559_fee	udata_ovr	0x0fee
_TOSL
	res	1
UD_abs_pic16lf1559_fef	udata_ovr	0x0fef
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
code_pic16lf1559	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
