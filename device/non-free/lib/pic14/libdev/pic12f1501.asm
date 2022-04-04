;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:29 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic12f1501.c"
	list	p=12f1501
	radix dec
	include "p12f1501.inc"
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
	global	_ANSELAbits
	global	_PMCON1bits
	global	_VREGCONbits
	global	_WPUAbits
	global	_IOCAPbits
	global	_IOCANbits
	global	_IOCAFbits
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
	global	_PWM1CON0bits
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
	global	_IOCAP
	global	_IOCAN
	global	_IOCAF
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
	global	_PWM1CON0
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
	global	_BSR_ICDSHAD
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
UD_abs_pic12f1501_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic12f1501_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic12f1501_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic12f1501_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic12f1501_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic12f1501_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic12f1501_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic12f1501_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic12f1501_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic12f1501_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic12f1501_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic12f1501_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic12f1501_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic12f1501_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic12f1501_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic12f1501_13	udata_ovr	0x0013
_PIR3bits
_PIR3
	res	1
UD_abs_pic12f1501_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic12f1501_16	udata_ovr	0x0016
_TMR1
_TMR1L
	res	1
UD_abs_pic12f1501_17	udata_ovr	0x0017
_TMR1H
	res	1
UD_abs_pic12f1501_18	udata_ovr	0x0018
_T1CONbits
_T1CON
	res	1
UD_abs_pic12f1501_19	udata_ovr	0x0019
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic12f1501_1a	udata_ovr	0x001a
_TMR2
	res	1
UD_abs_pic12f1501_1b	udata_ovr	0x001b
_PR2
	res	1
UD_abs_pic12f1501_1c	udata_ovr	0x001c
_T2CONbits
_T2CON
	res	1
UD_abs_pic12f1501_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic12f1501_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic12f1501_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic12f1501_93	udata_ovr	0x0093
_PIE3bits
_PIE3
	res	1
UD_abs_pic12f1501_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic12f1501_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic12f1501_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic12f1501_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic12f1501_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic12f1501_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic12f1501_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic12f1501_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic12f1501_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic12f1501_9f	udata_ovr	0x009f
_ADCON2bits
_ADCON2
	res	1
UD_abs_pic12f1501_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic12f1501_111	udata_ovr	0x0111
_CM1CON0bits
_CM1CON0
	res	1
UD_abs_pic12f1501_112	udata_ovr	0x0112
_CM1CON1bits
_CM1CON1
	res	1
UD_abs_pic12f1501_115	udata_ovr	0x0115
_CMOUTbits
_CMOUT
	res	1
UD_abs_pic12f1501_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic12f1501_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic12f1501_118	udata_ovr	0x0118
_DACCON0bits
_DACCON0
	res	1
UD_abs_pic12f1501_119	udata_ovr	0x0119
_DACCON1bits
_DACCON1
	res	1
UD_abs_pic12f1501_11d	udata_ovr	0x011d
_APFCONbits
_APFCON
	res	1
UD_abs_pic12f1501_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic12f1501_191	udata_ovr	0x0191
_PMADR
_PMADRL
	res	1
UD_abs_pic12f1501_192	udata_ovr	0x0192
_PMADRH
	res	1
UD_abs_pic12f1501_193	udata_ovr	0x0193
_PMDAT
_PMDATL
	res	1
UD_abs_pic12f1501_194	udata_ovr	0x0194
_PMDATH
	res	1
UD_abs_pic12f1501_195	udata_ovr	0x0195
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic12f1501_196	udata_ovr	0x0196
_PMCON2
	res	1
UD_abs_pic12f1501_197	udata_ovr	0x0197
_VREGCONbits
_VREGCON
	res	1
UD_abs_pic12f1501_20c	udata_ovr	0x020c
_WPUAbits
_WPUA
	res	1
UD_abs_pic12f1501_391	udata_ovr	0x0391
_IOCAPbits
_IOCAP
	res	1
UD_abs_pic12f1501_392	udata_ovr	0x0392
_IOCANbits
_IOCAN
	res	1
UD_abs_pic12f1501_393	udata_ovr	0x0393
_IOCAFbits
_IOCAF
	res	1
UD_abs_pic12f1501_498	udata_ovr	0x0498
_NCO1ACCLbits
_NCO1ACC
_NCO1ACCL
	res	1
UD_abs_pic12f1501_499	udata_ovr	0x0499
_NCO1ACCHbits
_NCO1ACCH
	res	1
UD_abs_pic12f1501_49a	udata_ovr	0x049a
_NCO1ACCUbits
_NCO1ACCU
	res	1
UD_abs_pic12f1501_49b	udata_ovr	0x049b
_NCO1INCLbits
_NCO1INC
_NCO1INCL
	res	1
UD_abs_pic12f1501_49c	udata_ovr	0x049c
_NCO1INCHbits
_NCO1INCH
	res	1
UD_abs_pic12f1501_49d	udata_ovr	0x049d
_NCO1INCU
	res	1
UD_abs_pic12f1501_49e	udata_ovr	0x049e
_NCO1CONbits
_NCO1CON
	res	1
UD_abs_pic12f1501_49f	udata_ovr	0x049f
_NCO1CLKbits
_NCO1CLK
	res	1
UD_abs_pic12f1501_611	udata_ovr	0x0611
_PWM1DCLbits
_PWM1DCL
	res	1
UD_abs_pic12f1501_612	udata_ovr	0x0612
_PWM1DCHbits
_PWM1DCH
	res	1
UD_abs_pic12f1501_613	udata_ovr	0x0613
_PWM1CONbits
_PWM1CON0bits
_PWM1CON
_PWM1CON0
	res	1
UD_abs_pic12f1501_614	udata_ovr	0x0614
_PWM2DCLbits
_PWM2DCL
	res	1
UD_abs_pic12f1501_615	udata_ovr	0x0615
_PWM2DCHbits
_PWM2DCH
	res	1
UD_abs_pic12f1501_616	udata_ovr	0x0616
_PWM2CONbits
_PWM2CON
	res	1
UD_abs_pic12f1501_617	udata_ovr	0x0617
_PWM3DCLbits
_PWM3DCL
	res	1
UD_abs_pic12f1501_618	udata_ovr	0x0618
_PWM3DCHbits
_PWM3DCH
	res	1
UD_abs_pic12f1501_619	udata_ovr	0x0619
_PWM3CONbits
_PWM3CON
	res	1
UD_abs_pic12f1501_61a	udata_ovr	0x061a
_PWM4DCLbits
_PWM4DCL
	res	1
UD_abs_pic12f1501_61b	udata_ovr	0x061b
_PWM4DCHbits
_PWM4DCH
	res	1
UD_abs_pic12f1501_61c	udata_ovr	0x061c
_PWM4CONbits
_PWM4CON
	res	1
UD_abs_pic12f1501_691	udata_ovr	0x0691
_CWG1DBRbits
_CWG1DBR
	res	1
UD_abs_pic12f1501_692	udata_ovr	0x0692
_CWG1DBFbits
_CWG1DBF
	res	1
UD_abs_pic12f1501_693	udata_ovr	0x0693
_CWG1CON0bits
_CWG1CON0
	res	1
UD_abs_pic12f1501_694	udata_ovr	0x0694
_CWG1CON1bits
_CWG1CON1
	res	1
UD_abs_pic12f1501_695	udata_ovr	0x0695
_CWG1CON2bits
_CWG1CON2
	res	1
UD_abs_pic12f1501_f0f	udata_ovr	0x0f0f
_CLCDATAbits
_CLCDATA
	res	1
UD_abs_pic12f1501_f10	udata_ovr	0x0f10
_CLC1CONbits
_CLC1CON
	res	1
UD_abs_pic12f1501_f11	udata_ovr	0x0f11
_CLC1POLbits
_CLC1POL
	res	1
UD_abs_pic12f1501_f12	udata_ovr	0x0f12
_CLC1SEL0bits
_CLC1SEL0
	res	1
UD_abs_pic12f1501_f13	udata_ovr	0x0f13
_CLC1SEL1bits
_CLC1SEL1
	res	1
UD_abs_pic12f1501_f14	udata_ovr	0x0f14
_CLC1GLS0bits
_CLC1GLS0
	res	1
UD_abs_pic12f1501_f15	udata_ovr	0x0f15
_CLC1GLS1bits
_CLC1GLS1
	res	1
UD_abs_pic12f1501_f16	udata_ovr	0x0f16
_CLC1GLS2bits
_CLC1GLS2
	res	1
UD_abs_pic12f1501_f17	udata_ovr	0x0f17
_CLC1GLS3bits
_CLC1GLS3
	res	1
UD_abs_pic12f1501_f18	udata_ovr	0x0f18
_CLC2CONbits
_CLC2CON
	res	1
UD_abs_pic12f1501_f19	udata_ovr	0x0f19
_CLC2POLbits
_CLC2POL
	res	1
UD_abs_pic12f1501_f1a	udata_ovr	0x0f1a
_CLC2SEL0bits
_CLC2SEL0
	res	1
UD_abs_pic12f1501_f1b	udata_ovr	0x0f1b
_CLC2SEL1bits
_CLC2SEL1
	res	1
UD_abs_pic12f1501_f1c	udata_ovr	0x0f1c
_CLC2GLS0bits
_CLC2GLS0
	res	1
UD_abs_pic12f1501_f1d	udata_ovr	0x0f1d
_CLC2GLS1bits
_CLC2GLS1
	res	1
UD_abs_pic12f1501_f1e	udata_ovr	0x0f1e
_CLC2GLS2bits
_CLC2GLS2
	res	1
UD_abs_pic12f1501_f1f	udata_ovr	0x0f1f
_CLC2GLS3bits
_CLC2GLS3
	res	1
UD_abs_pic12f1501_fe3	udata_ovr	0x0fe3
_BSR_ICDSHAD
	res	1
UD_abs_pic12f1501_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic12f1501_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic12f1501_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic12f1501_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic12f1501_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
	res	1
UD_abs_pic12f1501_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic12f1501_fea	udata_ovr	0x0fea
_FSR1L_SHAD
	res	1
UD_abs_pic12f1501_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic12f1501_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic12f1501_fee	udata_ovr	0x0fee
_TOSL
	res	1
UD_abs_pic12f1501_fef	udata_ovr	0x0fef
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
code_pic12f1501	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
