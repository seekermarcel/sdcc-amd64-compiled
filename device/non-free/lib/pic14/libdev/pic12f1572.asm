;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:30 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic12f1572.c"
	list	p=12f1572
	radix dec
	include "p12f1572.inc"
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
	global	_T1CONbits
	global	_T1GCONbits
	global	_T2CONbits
	global	_TRISAbits
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
	global	_ADCON2bits
	global	_LATAbits
	global	_CM1CON0bits
	global	_CM1CON1bits
	global	_CMOUTbits
	global	_BORCONbits
	global	_FVRCONbits
	global	_DACCON0bits
	global	_DACCON1bits
	global	_APFCONbits
	global	_APFCON0bits
	global	_ANSELAbits
	global	_PMCON1bits
	global	_VREGCONbits
	global	_RCSTAbits
	global	_TXSTAbits
	global	_BAUDCONbits
	global	_WPUAbits
	global	_ODCONAbits
	global	_SLRCONAbits
	global	_INLVLAbits
	global	_IOCAPbits
	global	_IOCANbits
	global	_IOCAFbits
	global	_CWG1DBRbits
	global	_CWG1DBFbits
	global	_CWG1CON0bits
	global	_CWG1CON1bits
	global	_CWG1CON2bits
	global	_PWMENbits
	global	_PWMLDbits
	global	_PWMOUTbits
	global	_PWM1PHLbits
	global	_PWM1PHHbits
	global	_PWM1DCLbits
	global	_PWM1DCHbits
	global	_PWM1PRLbits
	global	_PWM1PRHbits
	global	_PWM1OFLbits
	global	_PWM1OFHbits
	global	_PWM1TMRLbits
	global	_PWM1TMRHbits
	global	_PWM1CONbits
	global	_PWM1INTCONbits
	global	_PWM1INTEbits
	global	_PWM1INTFbits
	global	_PWM1INTFLGbits
	global	_PWM1CLKCONbits
	global	_PWM1LDCONbits
	global	_PWM1OFCONbits
	global	_PWM2PHLbits
	global	_PWM2PHHbits
	global	_PWM2DCLbits
	global	_PWM2DCHbits
	global	_PWM2PRLbits
	global	_PWM2PRHbits
	global	_PWM2OFLbits
	global	_PWM2OFHbits
	global	_PWM2TMRLbits
	global	_PWM2TMRHbits
	global	_PWM2CONbits
	global	_PWM2INTEbits
	global	_PWM2INTFbits
	global	_PWM2CLKCONbits
	global	_PWM2LDCONbits
	global	_PWM2OFCONbits
	global	_PWM3PHLbits
	global	_PWM3PHHbits
	global	_PWM3DCLbits
	global	_PWM3DCHbits
	global	_PWM3PRLbits
	global	_PWM3PRHbits
	global	_PWM3OFLbits
	global	_PWM3OFHbits
	global	_PWM3TMRLbits
	global	_PWM3TMRHbits
	global	_PWM3CONbits
	global	_PWM3INTEbits
	global	_PWM3INTFbits
	global	_PWM3CLKCONbits
	global	_PWM3LDCONbits
	global	_PWM3OFCONbits
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
	global	_ADCON2
	global	_LATA
	global	_CM1CON0
	global	_CM1CON1
	global	_CMOUT
	global	_BORCON
	global	_FVRCON
	global	_DACCON0
	global	_DACCON1
	global	_APFCON
	global	_APFCON0
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
	global	_RCREG
	global	_TXREG
	global	_SPBRG
	global	_SPBRGL
	global	_SPBRGH
	global	_RCSTA
	global	_TXSTA
	global	_BAUDCON
	global	_WPUA
	global	_ODCONA
	global	_SLRCONA
	global	_INLVLA
	global	_IOCAP
	global	_IOCAN
	global	_IOCAF
	global	_CWG1DBR
	global	_CWG1DBF
	global	_CWG1CON0
	global	_CWG1CON1
	global	_CWG1CON2
	global	_PWMEN
	global	_PWMLD
	global	_PWMOUT
	global	_PWM1PH
	global	_PWM1PHL
	global	_PWM1PHH
	global	_PWM1DC
	global	_PWM1DCL
	global	_PWM1DCH
	global	_PWM1PR
	global	_PWM1PRL
	global	_PWM1PRH
	global	_PWM1OF
	global	_PWM1OFL
	global	_PWM1OFH
	global	_PWM1TMR
	global	_PWM1TMRL
	global	_PWM1TMRH
	global	_PWM1CON
	global	_PWM1INTCON
	global	_PWM1INTE
	global	_PWM1INTF
	global	_PWM1INTFLG
	global	_PWM1CLKCON
	global	_PWM1LDCON
	global	_PWM1OFCON
	global	_PWM2PH
	global	_PWM2PHL
	global	_PWM2PHH
	global	_PWM2DC
	global	_PWM2DCL
	global	_PWM2DCH
	global	_PWM2PR
	global	_PWM2PRL
	global	_PWM2PRH
	global	_PWM2OF
	global	_PWM2OFL
	global	_PWM2OFH
	global	_PWM2TMR
	global	_PWM2TMRL
	global	_PWM2TMRH
	global	_PWM2CON
	global	_PWM2INTE
	global	_PWM2INTF
	global	_PWM2CLKCON
	global	_PWM2LDCON
	global	_PWM2OFCON
	global	_PWM3PH
	global	_PWM3PHL
	global	_PWM3PHH
	global	_PWM3DC
	global	_PWM3DCL
	global	_PWM3DCH
	global	_PWM3PR
	global	_PWM3PRL
	global	_PWM3PRH
	global	_PWM3OF
	global	_PWM3OFL
	global	_PWM3OFH
	global	_PWM3TMR
	global	_PWM3TMRL
	global	_PWM3TMRH
	global	_PWM3CON
	global	_PWM3INTE
	global	_PWM3INTF
	global	_PWM3CLKCON
	global	_PWM3LDCON
	global	_PWM3OFCON
	global	_STATUS_SHAD
	global	_WREG_SHAD
	global	_BSR_SHAD
	global	_PCLATH_SHAD
	global	_FSR0L_SHAD
	global	_FSR0_SHAD
	global	_FSR0H_SHAD
	global	_FSR1L_SHAD
	global	_FSR1_SHAD
	global	_FSR1H_SHAD
	global	_STKPTR
	global	_TOS
	global	_TOSL
	global	_TOSH

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic12f1572_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic12f1572_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic12f1572_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic12f1572_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic12f1572_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic12f1572_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic12f1572_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic12f1572_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic12f1572_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic12f1572_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic12f1572_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic12f1572_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic12f1572_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic12f1572_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic12f1572_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic12f1572_13	udata_ovr	0x0013
_PIR3bits
_PIR3
	res	1
UD_abs_pic12f1572_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic12f1572_16	udata_ovr	0x0016
_TMR1
_TMR1L
	res	1
UD_abs_pic12f1572_17	udata_ovr	0x0017
_TMR1H
	res	1
UD_abs_pic12f1572_18	udata_ovr	0x0018
_T1CONbits
_T1CON
	res	1
UD_abs_pic12f1572_19	udata_ovr	0x0019
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic12f1572_1a	udata_ovr	0x001a
_TMR2
	res	1
UD_abs_pic12f1572_1b	udata_ovr	0x001b
_PR2
	res	1
UD_abs_pic12f1572_1c	udata_ovr	0x001c
_T2CONbits
_T2CON
	res	1
UD_abs_pic12f1572_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic12f1572_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic12f1572_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic12f1572_93	udata_ovr	0x0093
_PIE3bits
_PIE3
	res	1
UD_abs_pic12f1572_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic12f1572_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic12f1572_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic12f1572_98	udata_ovr	0x0098
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic12f1572_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic12f1572_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic12f1572_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic12f1572_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic12f1572_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic12f1572_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic12f1572_9f	udata_ovr	0x009f
_ADCON2bits
_ADCON2
	res	1
UD_abs_pic12f1572_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic12f1572_111	udata_ovr	0x0111
_CM1CON0bits
_CM1CON0
	res	1
UD_abs_pic12f1572_112	udata_ovr	0x0112
_CM1CON1bits
_CM1CON1
	res	1
UD_abs_pic12f1572_115	udata_ovr	0x0115
_CMOUTbits
_CMOUT
	res	1
UD_abs_pic12f1572_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic12f1572_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic12f1572_118	udata_ovr	0x0118
_DACCON0bits
_DACCON0
	res	1
UD_abs_pic12f1572_119	udata_ovr	0x0119
_DACCON1bits
_DACCON1
	res	1
UD_abs_pic12f1572_11d	udata_ovr	0x011d
_APFCONbits
_APFCON0bits
_APFCON
_APFCON0
	res	1
UD_abs_pic12f1572_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic12f1572_191	udata_ovr	0x0191
_PMADR
_PMADRL
	res	1
UD_abs_pic12f1572_192	udata_ovr	0x0192
_PMADRH
	res	1
UD_abs_pic12f1572_193	udata_ovr	0x0193
_PMDAT
_PMDATL
	res	1
UD_abs_pic12f1572_194	udata_ovr	0x0194
_PMDATH
	res	1
UD_abs_pic12f1572_195	udata_ovr	0x0195
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic12f1572_196	udata_ovr	0x0196
_PMCON2
	res	1
UD_abs_pic12f1572_197	udata_ovr	0x0197
_VREGCONbits
_VREGCON
	res	1
UD_abs_pic12f1572_199	udata_ovr	0x0199
_RCREG
	res	1
UD_abs_pic12f1572_19a	udata_ovr	0x019a
_TXREG
	res	1
UD_abs_pic12f1572_19b	udata_ovr	0x019b
_SPBRG
_SPBRGL
	res	1
UD_abs_pic12f1572_19c	udata_ovr	0x019c
_SPBRGH
	res	1
UD_abs_pic12f1572_19d	udata_ovr	0x019d
_RCSTAbits
_RCSTA
	res	1
UD_abs_pic12f1572_19e	udata_ovr	0x019e
_TXSTAbits
_TXSTA
	res	1
UD_abs_pic12f1572_19f	udata_ovr	0x019f
_BAUDCONbits
_BAUDCON
	res	1
UD_abs_pic12f1572_20c	udata_ovr	0x020c
_WPUAbits
_WPUA
	res	1
UD_abs_pic12f1572_28c	udata_ovr	0x028c
_ODCONAbits
_ODCONA
	res	1
UD_abs_pic12f1572_30c	udata_ovr	0x030c
_SLRCONAbits
_SLRCONA
	res	1
UD_abs_pic12f1572_38c	udata_ovr	0x038c
_INLVLAbits
_INLVLA
	res	1
UD_abs_pic12f1572_391	udata_ovr	0x0391
_IOCAPbits
_IOCAP
	res	1
UD_abs_pic12f1572_392	udata_ovr	0x0392
_IOCANbits
_IOCAN
	res	1
UD_abs_pic12f1572_393	udata_ovr	0x0393
_IOCAFbits
_IOCAF
	res	1
UD_abs_pic12f1572_691	udata_ovr	0x0691
_CWG1DBRbits
_CWG1DBR
	res	1
UD_abs_pic12f1572_692	udata_ovr	0x0692
_CWG1DBFbits
_CWG1DBF
	res	1
UD_abs_pic12f1572_693	udata_ovr	0x0693
_CWG1CON0bits
_CWG1CON0
	res	1
UD_abs_pic12f1572_694	udata_ovr	0x0694
_CWG1CON1bits
_CWG1CON1
	res	1
UD_abs_pic12f1572_695	udata_ovr	0x0695
_CWG1CON2bits
_CWG1CON2
	res	1
UD_abs_pic12f1572_d8e	udata_ovr	0x0d8e
_PWMENbits
_PWMEN
	res	1
UD_abs_pic12f1572_d8f	udata_ovr	0x0d8f
_PWMLDbits
_PWMLD
	res	1
UD_abs_pic12f1572_d90	udata_ovr	0x0d90
_PWMOUTbits
_PWMOUT
	res	1
UD_abs_pic12f1572_d91	udata_ovr	0x0d91
_PWM1PHLbits
_PWM1PH
_PWM1PHL
	res	1
UD_abs_pic12f1572_d92	udata_ovr	0x0d92
_PWM1PHHbits
_PWM1PHH
	res	1
UD_abs_pic12f1572_d93	udata_ovr	0x0d93
_PWM1DCLbits
_PWM1DC
_PWM1DCL
	res	1
UD_abs_pic12f1572_d94	udata_ovr	0x0d94
_PWM1DCHbits
_PWM1DCH
	res	1
UD_abs_pic12f1572_d95	udata_ovr	0x0d95
_PWM1PRLbits
_PWM1PR
_PWM1PRL
	res	1
UD_abs_pic12f1572_d96	udata_ovr	0x0d96
_PWM1PRHbits
_PWM1PRH
	res	1
UD_abs_pic12f1572_d97	udata_ovr	0x0d97
_PWM1OFLbits
_PWM1OF
_PWM1OFL
	res	1
UD_abs_pic12f1572_d98	udata_ovr	0x0d98
_PWM1OFHbits
_PWM1OFH
	res	1
UD_abs_pic12f1572_d99	udata_ovr	0x0d99
_PWM1TMRLbits
_PWM1TMR
_PWM1TMRL
	res	1
UD_abs_pic12f1572_d9a	udata_ovr	0x0d9a
_PWM1TMRHbits
_PWM1TMRH
	res	1
UD_abs_pic12f1572_d9b	udata_ovr	0x0d9b
_PWM1CONbits
_PWM1CON
	res	1
UD_abs_pic12f1572_d9c	udata_ovr	0x0d9c
_PWM1INTCONbits
_PWM1INTEbits
_PWM1INTCON
_PWM1INTE
	res	1
UD_abs_pic12f1572_d9d	udata_ovr	0x0d9d
_PWM1INTFbits
_PWM1INTFLGbits
_PWM1INTF
_PWM1INTFLG
	res	1
UD_abs_pic12f1572_d9e	udata_ovr	0x0d9e
_PWM1CLKCONbits
_PWM1CLKCON
	res	1
UD_abs_pic12f1572_d9f	udata_ovr	0x0d9f
_PWM1LDCONbits
_PWM1LDCON
	res	1
UD_abs_pic12f1572_da0	udata_ovr	0x0da0
_PWM1OFCONbits
_PWM1OFCON
	res	1
UD_abs_pic12f1572_da1	udata_ovr	0x0da1
_PWM2PHLbits
_PWM2PH
_PWM2PHL
	res	1
UD_abs_pic12f1572_da2	udata_ovr	0x0da2
_PWM2PHHbits
_PWM2PHH
	res	1
UD_abs_pic12f1572_da3	udata_ovr	0x0da3
_PWM2DCLbits
_PWM2DC
_PWM2DCL
	res	1
UD_abs_pic12f1572_da4	udata_ovr	0x0da4
_PWM2DCHbits
_PWM2DCH
	res	1
UD_abs_pic12f1572_da5	udata_ovr	0x0da5
_PWM2PRLbits
_PWM2PR
_PWM2PRL
	res	1
UD_abs_pic12f1572_da6	udata_ovr	0x0da6
_PWM2PRHbits
_PWM2PRH
	res	1
UD_abs_pic12f1572_da7	udata_ovr	0x0da7
_PWM2OFLbits
_PWM2OF
_PWM2OFL
	res	1
UD_abs_pic12f1572_da8	udata_ovr	0x0da8
_PWM2OFHbits
_PWM2OFH
	res	1
UD_abs_pic12f1572_da9	udata_ovr	0x0da9
_PWM2TMRLbits
_PWM2TMR
_PWM2TMRL
	res	1
UD_abs_pic12f1572_daa	udata_ovr	0x0daa
_PWM2TMRHbits
_PWM2TMRH
	res	1
UD_abs_pic12f1572_dab	udata_ovr	0x0dab
_PWM2CONbits
_PWM2CON
	res	1
UD_abs_pic12f1572_dac	udata_ovr	0x0dac
_PWM2INTEbits
_PWM2INTE
	res	1
UD_abs_pic12f1572_dad	udata_ovr	0x0dad
_PWM2INTFbits
_PWM2INTF
	res	1
UD_abs_pic12f1572_dae	udata_ovr	0x0dae
_PWM2CLKCONbits
_PWM2CLKCON
	res	1
UD_abs_pic12f1572_daf	udata_ovr	0x0daf
_PWM2LDCONbits
_PWM2LDCON
	res	1
UD_abs_pic12f1572_db0	udata_ovr	0x0db0
_PWM2OFCONbits
_PWM2OFCON
	res	1
UD_abs_pic12f1572_db1	udata_ovr	0x0db1
_PWM3PHLbits
_PWM3PH
_PWM3PHL
	res	1
UD_abs_pic12f1572_db2	udata_ovr	0x0db2
_PWM3PHHbits
_PWM3PHH
	res	1
UD_abs_pic12f1572_db3	udata_ovr	0x0db3
_PWM3DCLbits
_PWM3DC
_PWM3DCL
	res	1
UD_abs_pic12f1572_db4	udata_ovr	0x0db4
_PWM3DCHbits
_PWM3DCH
	res	1
UD_abs_pic12f1572_db5	udata_ovr	0x0db5
_PWM3PRLbits
_PWM3PR
_PWM3PRL
	res	1
UD_abs_pic12f1572_db6	udata_ovr	0x0db6
_PWM3PRHbits
_PWM3PRH
	res	1
UD_abs_pic12f1572_db7	udata_ovr	0x0db7
_PWM3OFLbits
_PWM3OF
_PWM3OFL
	res	1
UD_abs_pic12f1572_db8	udata_ovr	0x0db8
_PWM3OFHbits
_PWM3OFH
	res	1
UD_abs_pic12f1572_db9	udata_ovr	0x0db9
_PWM3TMRLbits
_PWM3TMR
_PWM3TMRL
	res	1
UD_abs_pic12f1572_dba	udata_ovr	0x0dba
_PWM3TMRHbits
_PWM3TMRH
	res	1
UD_abs_pic12f1572_dbb	udata_ovr	0x0dbb
_PWM3CONbits
_PWM3CON
	res	1
UD_abs_pic12f1572_dbc	udata_ovr	0x0dbc
_PWM3INTEbits
_PWM3INTE
	res	1
UD_abs_pic12f1572_dbd	udata_ovr	0x0dbd
_PWM3INTFbits
_PWM3INTF
	res	1
UD_abs_pic12f1572_dbe	udata_ovr	0x0dbe
_PWM3CLKCONbits
_PWM3CLKCON
	res	1
UD_abs_pic12f1572_dbf	udata_ovr	0x0dbf
_PWM3LDCONbits
_PWM3LDCON
	res	1
UD_abs_pic12f1572_dc0	udata_ovr	0x0dc0
_PWM3OFCONbits
_PWM3OFCON
	res	1
UD_abs_pic12f1572_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic12f1572_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic12f1572_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic12f1572_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic12f1572_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
_FSR0_SHAD
	res	1
UD_abs_pic12f1572_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic12f1572_fea	udata_ovr	0x0fea
_FSR1L_SHAD
_FSR1_SHAD
	res	1
UD_abs_pic12f1572_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic12f1572_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic12f1572_fee	udata_ovr	0x0fee
_TOS
_TOSL
	res	1
UD_abs_pic12f1572_fef	udata_ovr	0x0fef
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
code_pic12f1572	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
