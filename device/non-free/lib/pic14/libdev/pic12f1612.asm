;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:30 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic12f1612.c"
	list	p=12f1612
	radix dec
	include "p12f1612.inc"
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
	global	_PIR1bits
	global	_PIR2bits
	global	_PIR3bits
	global	_PIR4bits
	global	_T1CONbits
	global	_T1GCONbits
	global	_T2CONbits
	global	_T2HLTbits
	global	_T2CLKCONbits
	global	_T2RSTbits
	global	_TRISAbits
	global	_PIE1bits
	global	_PIE2bits
	global	_PIE3bits
	global	_PIE4bits
	global	_OPTION_REGbits
	global	_PCONbits
	global	_OSCTUNEbits
	global	_OSCCONbits
	global	_OSCSTATbits
	global	_ADCON0bits
	global	_ADCON1bits
	global	_ADCON2bits
	global	_LATAbits
	global	_CM1CON0bits
	global	_CM1CON1bits
	global	_CMOUTbits
	global	_BORCONbits
	global	_FVRCONbits
	global	_DAC1CON0bits
	global	_DAC1CON1bits
	global	_ZCD1CONbits
	global	_APFCONbits
	global	_ANSELAbits
	global	_PMCON1bits
	global	_VREGCONbits
	global	_WPUAbits
	global	_ODCONAbits
	global	_CCP1RLbits
	global	_CCPR1Lbits
	global	_CCP1RHbits
	global	_CCPR1Hbits
	global	_CCP1CONbits
	global	_CCP1CAPbits
	global	_CCP2RLbits
	global	_CCP2RHbits
	global	_CCP2CONbits
	global	_CCP2CAPbits
	global	_CCPTMRSbits
	global	_SLRCONAbits
	global	_INLVLAbits
	global	_T4CONbits
	global	_T4HLTbits
	global	_T4CLKCONbits
	global	_T4RSTbits
	global	_T6CONbits
	global	_T6HLTbits
	global	_T6CLKCONbits
	global	_T6RSTbits
	global	_CWG1DBRbits
	global	_CWG1DBFbits
	global	_CWG1AS0bits
	global	_CWG1AS1bits
	global	_CWG1OCON0bits
	global	_CWG1CON0bits
	global	_CWG1CON1bits
	global	_CWG1OCON1bits
	global	_CWG1CLKCONbits
	global	_CWG1ISMbits
	global	_WDTCON0bits
	global	_WDTCON1bits
	global	_WDTPSLbits
	global	_WDTPSHbits
	global	_WDTTMRbits
	global	_SCANLADRLbits
	global	_SCANLADRHbits
	global	_SCANHADRLbits
	global	_SCANHADRHbits
	global	_SCANCON0bits
	global	_SCANTRIGbits
	global	_CRCDATLbits
	global	_CRCDATHbits
	global	_CRCACCLbits
	global	_CRCACCHbits
	global	_CRCSHIFTLbits
	global	_CRCSHIFTHbits
	global	_CRCXORLbits
	global	_CRCXORHbits
	global	_CRCCON0bits
	global	_CRCCON1bits
	global	_SMT1TMRLbits
	global	_SMT1TMRHbits
	global	_SMT1TMRUbits
	global	_SMT1CPRLbits
	global	_SMT1CPRHbits
	global	_SMT1CPRUbits
	global	_SMT1CPWLbits
	global	_SMT1CPWHbits
	global	_SMT1CPWUbits
	global	_SMT1PRLbits
	global	_SMT1PRHbits
	global	_SMT1PRUbits
	global	_SMT1CON0bits
	global	_SMT1CON1bits
	global	_SMT1STATbits
	global	_SMT1CLKbits
	global	_SMT1SIGbits
	global	_SMT1WINbits
	global	_SMT2TMRLbits
	global	_SMT2TMRHbits
	global	_SMT2TMRUbits
	global	_SMT2CPRLbits
	global	_SMT2CPRHbits
	global	_SMT2CPRUbits
	global	_SMT2CPWLbits
	global	_SMT2CPWHbits
	global	_SMT2CPWUbits
	global	_SMT2PRLbits
	global	_SMT2PRHbits
	global	_SMT2PRUbits
	global	_SMT2CON0bits
	global	_SMT2CON1bits
	global	_SMT2STATbits
	global	_SMT2CLKbits
	global	_SMT2SIGbits
	global	_SMT2WINbits
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
	global	_T2TMR
	global	_T2PR
	global	_T2CON
	global	_T2HLT
	global	_T2CLKCON
	global	_T2RST
	global	_TRISA
	global	_PIE1
	global	_PIE2
	global	_PIE3
	global	_PIE4
	global	_OPTION_REG
	global	_PCON
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
	global	_CM1CON0
	global	_CM1CON1
	global	_CMOUT
	global	_BORCON
	global	_FVRCON
	global	_DAC1CON0
	global	_DAC1CON1
	global	_ZCD1CON
	global	_APFCON
	global	_ANSELA
	global	_PMADR
	global	_PMADRL
	global	_PMADRH
	global	_PMDAT
	global	_PMDATL
	global	_PMDATH
	global	_PMCON1
	global	_PMCON2
	global	_VREGCON
	global	_WPUA
	global	_ODCONA
	global	_CCP1RL
	global	_CCPR1
	global	_CCPR1L
	global	_CCP1RH
	global	_CCPR1H
	global	_CCP1CON
	global	_CCP1CAP
	global	_CCP2RL
	global	_CCPR2
	global	_CCP2RH
	global	_CCP2CON
	global	_CCP2CAP
	global	_CCPTMRS
	global	_SLRCONA
	global	_INLVLA
	global	_IOCAP
	global	_IOCAN
	global	_IOCAF
	global	_T4TMR
	global	_T4PR
	global	_T4CON
	global	_T4HLT
	global	_T4CLKCON
	global	_T4RST
	global	_T6TMR
	global	_T6PR
	global	_T6CON
	global	_T6HLT
	global	_T6CLKCON
	global	_T6RST
	global	_CWG1DBR
	global	_CWG1DBF
	global	_CWG1AS0
	global	_CWG1AS1
	global	_CWG1OCON0
	global	_CWG1CON0
	global	_CWG1CON1
	global	_CWG1OCON1
	global	_CWG1CLKCON
	global	_CWG1ISM
	global	_WDTCON0
	global	_WDTCON1
	global	_WDTPSL
	global	_WDTPSH
	global	_WDTTMR
	global	_SCANLADR
	global	_SCANLADRL
	global	_SCANLADRH
	global	_SCANHADR
	global	_SCANHADRL
	global	_SCANHADRH
	global	_SCANCON0
	global	_SCANTRIG
	global	_CRCDAT
	global	_CRCDATL
	global	_CRCDATH
	global	_CRCACC
	global	_CRCACCL
	global	_CRCACCH
	global	_CRCSHIFT
	global	_CRCSHIFTL
	global	_CRCSHIFTH
	global	_CRCXOR
	global	_CRCXORL
	global	_CRCXORH
	global	_CRCCON0
	global	_CRCCON1
	global	_SMT1TMR
	global	_SMT1TMRL
	global	_SMT1TMRH
	global	_SMT1TMRU
	global	_SMT1CPR
	global	_SMT1CPRL
	global	_SMT1CPRH
	global	_SMT1CPRU
	global	_SMT1CPW
	global	_SMT1CPWL
	global	_SMT1CPWH
	global	_SMT1CPWU
	global	_SMT1PR
	global	_SMT1PRL
	global	_SMT1PRH
	global	_SMT1PRU
	global	_SMT1CON0
	global	_SMT1CON1
	global	_SMT1STAT
	global	_SMT1CLK
	global	_SMT1SIG
	global	_SMT1WIN
	global	_SMT2TMR
	global	_SMT2TMRL
	global	_SMT2TMRH
	global	_SMT2TMRU
	global	_SMT2CPR
	global	_SMT2CPRL
	global	_SMT2CPRH
	global	_SMT2CPRU
	global	_SMT2CPW
	global	_SMT2CPWL
	global	_SMT2CPWH
	global	_SMT2CPWU
	global	_SMT2PR
	global	_SMT2PRL
	global	_SMT2PRH
	global	_SMT2PRU
	global	_SMT2CON0
	global	_SMT2CON1
	global	_SMT2STAT
	global	_SMT2CLK
	global	_SMT2SIG
	global	_SMT2WIN
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
UD_abs_pic12f1612_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic12f1612_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic12f1612_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic12f1612_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic12f1612_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic12f1612_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic12f1612_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic12f1612_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic12f1612_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic12f1612_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic12f1612_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic12f1612_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic12f1612_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic12f1612_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic12f1612_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic12f1612_13	udata_ovr	0x0013
_PIR3bits
_PIR3
	res	1
UD_abs_pic12f1612_14	udata_ovr	0x0014
_PIR4bits
_PIR4
	res	1
UD_abs_pic12f1612_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic12f1612_16	udata_ovr	0x0016
_TMR1
_TMR1L
	res	1
UD_abs_pic12f1612_17	udata_ovr	0x0017
_TMR1H
	res	1
UD_abs_pic12f1612_18	udata_ovr	0x0018
_T1CONbits
_T1CON
	res	1
UD_abs_pic12f1612_19	udata_ovr	0x0019
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic12f1612_1a	udata_ovr	0x001a
_T2TMR
	res	1
UD_abs_pic12f1612_1b	udata_ovr	0x001b
_T2PR
	res	1
UD_abs_pic12f1612_1c	udata_ovr	0x001c
_T2CONbits
_T2CON
	res	1
UD_abs_pic12f1612_1d	udata_ovr	0x001d
_T2HLTbits
_T2HLT
	res	1
UD_abs_pic12f1612_1e	udata_ovr	0x001e
_T2CLKCONbits
_T2CLKCON
	res	1
UD_abs_pic12f1612_1f	udata_ovr	0x001f
_T2RSTbits
_T2RST
	res	1
UD_abs_pic12f1612_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic12f1612_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic12f1612_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic12f1612_93	udata_ovr	0x0093
_PIE3bits
_PIE3
	res	1
UD_abs_pic12f1612_94	udata_ovr	0x0094
_PIE4bits
_PIE4
	res	1
UD_abs_pic12f1612_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic12f1612_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic12f1612_98	udata_ovr	0x0098
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic12f1612_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic12f1612_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic12f1612_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic12f1612_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic12f1612_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic12f1612_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic12f1612_9f	udata_ovr	0x009f
_ADCON2bits
_ADCON2
	res	1
UD_abs_pic12f1612_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic12f1612_111	udata_ovr	0x0111
_CM1CON0bits
_CM1CON0
	res	1
UD_abs_pic12f1612_112	udata_ovr	0x0112
_CM1CON1bits
_CM1CON1
	res	1
UD_abs_pic12f1612_115	udata_ovr	0x0115
_CMOUTbits
_CMOUT
	res	1
UD_abs_pic12f1612_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic12f1612_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic12f1612_118	udata_ovr	0x0118
_DAC1CON0bits
_DAC1CON0
	res	1
UD_abs_pic12f1612_119	udata_ovr	0x0119
_DAC1CON1bits
_DAC1CON1
	res	1
UD_abs_pic12f1612_11c	udata_ovr	0x011c
_ZCD1CONbits
_ZCD1CON
	res	1
UD_abs_pic12f1612_11d	udata_ovr	0x011d
_APFCONbits
_APFCON
	res	1
UD_abs_pic12f1612_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic12f1612_191	udata_ovr	0x0191
_PMADR
_PMADRL
	res	1
UD_abs_pic12f1612_192	udata_ovr	0x0192
_PMADRH
	res	1
UD_abs_pic12f1612_193	udata_ovr	0x0193
_PMDAT
_PMDATL
	res	1
UD_abs_pic12f1612_194	udata_ovr	0x0194
_PMDATH
	res	1
UD_abs_pic12f1612_195	udata_ovr	0x0195
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic12f1612_196	udata_ovr	0x0196
_PMCON2
	res	1
UD_abs_pic12f1612_197	udata_ovr	0x0197
_VREGCONbits
_VREGCON
	res	1
UD_abs_pic12f1612_20c	udata_ovr	0x020c
_WPUAbits
_WPUA
	res	1
UD_abs_pic12f1612_28c	udata_ovr	0x028c
_ODCONAbits
_ODCONA
	res	1
UD_abs_pic12f1612_291	udata_ovr	0x0291
_CCP1RLbits
_CCPR1Lbits
_CCP1RL
_CCPR1
_CCPR1L
	res	1
UD_abs_pic12f1612_292	udata_ovr	0x0292
_CCP1RHbits
_CCPR1Hbits
_CCP1RH
_CCPR1H
	res	1
UD_abs_pic12f1612_293	udata_ovr	0x0293
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic12f1612_294	udata_ovr	0x0294
_CCP1CAPbits
_CCP1CAP
	res	1
UD_abs_pic12f1612_298	udata_ovr	0x0298
_CCP2RLbits
_CCP2RL
_CCPR2
	res	1
UD_abs_pic12f1612_299	udata_ovr	0x0299
_CCP2RHbits
_CCP2RH
	res	1
UD_abs_pic12f1612_29a	udata_ovr	0x029a
_CCP2CONbits
_CCP2CON
	res	1
UD_abs_pic12f1612_29b	udata_ovr	0x029b
_CCP2CAPbits
_CCP2CAP
	res	1
UD_abs_pic12f1612_29e	udata_ovr	0x029e
_CCPTMRSbits
_CCPTMRS
	res	1
UD_abs_pic12f1612_30c	udata_ovr	0x030c
_SLRCONAbits
_SLRCONA
	res	1
UD_abs_pic12f1612_38c	udata_ovr	0x038c
_INLVLAbits
_INLVLA
	res	1
UD_abs_pic12f1612_391	udata_ovr	0x0391
_IOCAP
	res	1
UD_abs_pic12f1612_392	udata_ovr	0x0392
_IOCAN
	res	1
UD_abs_pic12f1612_393	udata_ovr	0x0393
_IOCAF
	res	1
UD_abs_pic12f1612_413	udata_ovr	0x0413
_T4TMR
	res	1
UD_abs_pic12f1612_414	udata_ovr	0x0414
_T4PR
	res	1
UD_abs_pic12f1612_415	udata_ovr	0x0415
_T4CONbits
_T4CON
	res	1
UD_abs_pic12f1612_416	udata_ovr	0x0416
_T4HLTbits
_T4HLT
	res	1
UD_abs_pic12f1612_417	udata_ovr	0x0417
_T4CLKCONbits
_T4CLKCON
	res	1
UD_abs_pic12f1612_418	udata_ovr	0x0418
_T4RSTbits
_T4RST
	res	1
UD_abs_pic12f1612_41a	udata_ovr	0x041a
_T6TMR
	res	1
UD_abs_pic12f1612_41b	udata_ovr	0x041b
_T6PR
	res	1
UD_abs_pic12f1612_41c	udata_ovr	0x041c
_T6CONbits
_T6CON
	res	1
UD_abs_pic12f1612_41d	udata_ovr	0x041d
_T6HLTbits
_T6HLT
	res	1
UD_abs_pic12f1612_41e	udata_ovr	0x041e
_T6CLKCONbits
_T6CLKCON
	res	1
UD_abs_pic12f1612_41f	udata_ovr	0x041f
_T6RSTbits
_T6RST
	res	1
UD_abs_pic12f1612_691	udata_ovr	0x0691
_CWG1DBRbits
_CWG1DBR
	res	1
UD_abs_pic12f1612_692	udata_ovr	0x0692
_CWG1DBFbits
_CWG1DBF
	res	1
UD_abs_pic12f1612_693	udata_ovr	0x0693
_CWG1AS0bits
_CWG1AS0
	res	1
UD_abs_pic12f1612_694	udata_ovr	0x0694
_CWG1AS1bits
_CWG1AS1
	res	1
UD_abs_pic12f1612_695	udata_ovr	0x0695
_CWG1OCON0bits
_CWG1OCON0
	res	1
UD_abs_pic12f1612_696	udata_ovr	0x0696
_CWG1CON0bits
_CWG1CON0
	res	1
UD_abs_pic12f1612_697	udata_ovr	0x0697
_CWG1CON1bits
_CWG1CON1
	res	1
UD_abs_pic12f1612_698	udata_ovr	0x0698
_CWG1OCON1bits
_CWG1OCON1
	res	1
UD_abs_pic12f1612_699	udata_ovr	0x0699
_CWG1CLKCONbits
_CWG1CLKCON
	res	1
UD_abs_pic12f1612_69a	udata_ovr	0x069a
_CWG1ISMbits
_CWG1ISM
	res	1
UD_abs_pic12f1612_711	udata_ovr	0x0711
_WDTCON0bits
_WDTCON0
	res	1
UD_abs_pic12f1612_712	udata_ovr	0x0712
_WDTCON1bits
_WDTCON1
	res	1
UD_abs_pic12f1612_713	udata_ovr	0x0713
_WDTPSLbits
_WDTPSL
	res	1
UD_abs_pic12f1612_714	udata_ovr	0x0714
_WDTPSHbits
_WDTPSH
	res	1
UD_abs_pic12f1612_715	udata_ovr	0x0715
_WDTTMRbits
_WDTTMR
	res	1
UD_abs_pic12f1612_718	udata_ovr	0x0718
_SCANLADRLbits
_SCANLADR
_SCANLADRL
	res	1
UD_abs_pic12f1612_719	udata_ovr	0x0719
_SCANLADRHbits
_SCANLADRH
	res	1
UD_abs_pic12f1612_71a	udata_ovr	0x071a
_SCANHADRLbits
_SCANHADR
_SCANHADRL
	res	1
UD_abs_pic12f1612_71b	udata_ovr	0x071b
_SCANHADRHbits
_SCANHADRH
	res	1
UD_abs_pic12f1612_71c	udata_ovr	0x071c
_SCANCON0bits
_SCANCON0
	res	1
UD_abs_pic12f1612_71d	udata_ovr	0x071d
_SCANTRIGbits
_SCANTRIG
	res	1
UD_abs_pic12f1612_791	udata_ovr	0x0791
_CRCDATLbits
_CRCDAT
_CRCDATL
	res	1
UD_abs_pic12f1612_792	udata_ovr	0x0792
_CRCDATHbits
_CRCDATH
	res	1
UD_abs_pic12f1612_793	udata_ovr	0x0793
_CRCACCLbits
_CRCACC
_CRCACCL
	res	1
UD_abs_pic12f1612_794	udata_ovr	0x0794
_CRCACCHbits
_CRCACCH
	res	1
UD_abs_pic12f1612_795	udata_ovr	0x0795
_CRCSHIFTLbits
_CRCSHIFT
_CRCSHIFTL
	res	1
UD_abs_pic12f1612_796	udata_ovr	0x0796
_CRCSHIFTHbits
_CRCSHIFTH
	res	1
UD_abs_pic12f1612_797	udata_ovr	0x0797
_CRCXORLbits
_CRCXOR
_CRCXORL
	res	1
UD_abs_pic12f1612_798	udata_ovr	0x0798
_CRCXORHbits
_CRCXORH
	res	1
UD_abs_pic12f1612_799	udata_ovr	0x0799
_CRCCON0bits
_CRCCON0
	res	1
UD_abs_pic12f1612_79a	udata_ovr	0x079a
_CRCCON1bits
_CRCCON1
	res	1
UD_abs_pic12f1612_d8c	udata_ovr	0x0d8c
_SMT1TMRLbits
_SMT1TMR
_SMT1TMRL
	res	1
UD_abs_pic12f1612_d8d	udata_ovr	0x0d8d
_SMT1TMRHbits
_SMT1TMRH
	res	1
UD_abs_pic12f1612_d8e	udata_ovr	0x0d8e
_SMT1TMRUbits
_SMT1TMRU
	res	1
UD_abs_pic12f1612_d8f	udata_ovr	0x0d8f
_SMT1CPRLbits
_SMT1CPR
_SMT1CPRL
	res	1
UD_abs_pic12f1612_d90	udata_ovr	0x0d90
_SMT1CPRHbits
_SMT1CPRH
	res	1
UD_abs_pic12f1612_d91	udata_ovr	0x0d91
_SMT1CPRUbits
_SMT1CPRU
	res	1
UD_abs_pic12f1612_d92	udata_ovr	0x0d92
_SMT1CPWLbits
_SMT1CPW
_SMT1CPWL
	res	1
UD_abs_pic12f1612_d93	udata_ovr	0x0d93
_SMT1CPWHbits
_SMT1CPWH
	res	1
UD_abs_pic12f1612_d94	udata_ovr	0x0d94
_SMT1CPWUbits
_SMT1CPWU
	res	1
UD_abs_pic12f1612_d95	udata_ovr	0x0d95
_SMT1PRLbits
_SMT1PR
_SMT1PRL
	res	1
UD_abs_pic12f1612_d96	udata_ovr	0x0d96
_SMT1PRHbits
_SMT1PRH
	res	1
UD_abs_pic12f1612_d97	udata_ovr	0x0d97
_SMT1PRUbits
_SMT1PRU
	res	1
UD_abs_pic12f1612_d98	udata_ovr	0x0d98
_SMT1CON0bits
_SMT1CON0
	res	1
UD_abs_pic12f1612_d99	udata_ovr	0x0d99
_SMT1CON1bits
_SMT1CON1
	res	1
UD_abs_pic12f1612_d9a	udata_ovr	0x0d9a
_SMT1STATbits
_SMT1STAT
	res	1
UD_abs_pic12f1612_d9b	udata_ovr	0x0d9b
_SMT1CLKbits
_SMT1CLK
	res	1
UD_abs_pic12f1612_d9c	udata_ovr	0x0d9c
_SMT1SIGbits
_SMT1SIG
	res	1
UD_abs_pic12f1612_d9d	udata_ovr	0x0d9d
_SMT1WINbits
_SMT1WIN
	res	1
UD_abs_pic12f1612_d9e	udata_ovr	0x0d9e
_SMT2TMRLbits
_SMT2TMR
_SMT2TMRL
	res	1
UD_abs_pic12f1612_d9f	udata_ovr	0x0d9f
_SMT2TMRHbits
_SMT2TMRH
	res	1
UD_abs_pic12f1612_da0	udata_ovr	0x0da0
_SMT2TMRUbits
_SMT2TMRU
	res	1
UD_abs_pic12f1612_da1	udata_ovr	0x0da1
_SMT2CPRLbits
_SMT2CPR
_SMT2CPRL
	res	1
UD_abs_pic12f1612_da2	udata_ovr	0x0da2
_SMT2CPRHbits
_SMT2CPRH
	res	1
UD_abs_pic12f1612_da3	udata_ovr	0x0da3
_SMT2CPRUbits
_SMT2CPRU
	res	1
UD_abs_pic12f1612_da4	udata_ovr	0x0da4
_SMT2CPWLbits
_SMT2CPW
_SMT2CPWL
	res	1
UD_abs_pic12f1612_da5	udata_ovr	0x0da5
_SMT2CPWHbits
_SMT2CPWH
	res	1
UD_abs_pic12f1612_da6	udata_ovr	0x0da6
_SMT2CPWUbits
_SMT2CPWU
	res	1
UD_abs_pic12f1612_da7	udata_ovr	0x0da7
_SMT2PRLbits
_SMT2PR
_SMT2PRL
	res	1
UD_abs_pic12f1612_da8	udata_ovr	0x0da8
_SMT2PRHbits
_SMT2PRH
	res	1
UD_abs_pic12f1612_da9	udata_ovr	0x0da9
_SMT2PRUbits
_SMT2PRU
	res	1
UD_abs_pic12f1612_daa	udata_ovr	0x0daa
_SMT2CON0bits
_SMT2CON0
	res	1
UD_abs_pic12f1612_dab	udata_ovr	0x0dab
_SMT2CON1bits
_SMT2CON1
	res	1
UD_abs_pic12f1612_dac	udata_ovr	0x0dac
_SMT2STATbits
_SMT2STAT
	res	1
UD_abs_pic12f1612_dad	udata_ovr	0x0dad
_SMT2CLKbits
_SMT2CLK
	res	1
UD_abs_pic12f1612_dae	udata_ovr	0x0dae
_SMT2SIGbits
_SMT2SIG
	res	1
UD_abs_pic12f1612_daf	udata_ovr	0x0daf
_SMT2WINbits
_SMT2WIN
	res	1
UD_abs_pic12f1612_f8c	udata_ovr	0x0f8c
_ICDIObits
_ICDIO
	res	1
UD_abs_pic12f1612_f8d	udata_ovr	0x0f8d
_ICDCON0bits
_ICDCON0
	res	1
UD_abs_pic12f1612_f91	udata_ovr	0x0f91
_ICDSTATbits
_ICDSTAT
	res	1
UD_abs_pic12f1612_f96	udata_ovr	0x0f96
_ICDINSTLbits
_ICDINSTL
	res	1
UD_abs_pic12f1612_f97	udata_ovr	0x0f97
_ICDINSTHbits
_ICDINSTH
	res	1
UD_abs_pic12f1612_f9c	udata_ovr	0x0f9c
_ICDBK0CONbits
_ICDBK0CON
	res	1
UD_abs_pic12f1612_f9d	udata_ovr	0x0f9d
_ICDBK0Lbits
_ICDBK0L
	res	1
UD_abs_pic12f1612_f9e	udata_ovr	0x0f9e
_ICDBK0Hbits
_ICDBK0H
	res	1
UD_abs_pic12f1612_fe3	udata_ovr	0x0fe3
_BSRICDSHAD
	res	1
UD_abs_pic12f1612_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic12f1612_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic12f1612_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic12f1612_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic12f1612_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
	res	1
UD_abs_pic12f1612_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic12f1612_fea	udata_ovr	0x0fea
_FSR1L_SHAD
	res	1
UD_abs_pic12f1612_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic12f1612_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic12f1612_fee	udata_ovr	0x0fee
_TOSL
	res	1
UD_abs_pic12f1612_fef	udata_ovr	0x0fef
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
code_pic12f1612	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
