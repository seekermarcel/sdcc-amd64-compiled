;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:31 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic12f752.c"
	list	p=12f752
	radix dec
	include "p12f752.inc"
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
	global	_IOCAFbits
	global	_INTCONbits
	global	_PIR1bits
	global	_PIR2bits
	global	_T1CONbits
	global	_T1GCONbits
	global	_CCP1CONbits
	global	_ADCON0bits
	global	_ADCON1bits
	global	_OPTION_REGbits
	global	_TRISAbits
	global	_IOCAPbits
	global	_PIE1bits
	global	_PIE2bits
	global	_OSCCONbits
	global	_FVRCONbits
	global	_DACCON0bits
	global	_DACCON1bits
	global	_C2CON0bits
	global	_CM2CON0bits
	global	_C2CON1bits
	global	_CM2CON1bits
	global	_C1CON0bits
	global	_CM1CON0bits
	global	_C1CON1bits
	global	_CM1CON1bits
	global	_CMOUTbits
	global	_MCOUTbits
	global	_LATAbits
	global	_IOCANbits
	global	_WPUAbits
	global	_SLRCONAbits
	global	_PCONbits
	global	_T2CONbits
	global	_HLT1CON0bits
	global	_HLT1CON1bits
	global	_ANSELAbits
	global	_APFCONbits
	global	_OSCTUNEbits
	global	_PMCON1bits
	global	_COG1PHbits
	global	_COG1BLKbits
	global	_COG1DBbits
	global	_COG1CON0bits
	global	_COG1CON1bits
	global	_COG1ASDbits
	global	_INDF
	global	_TMR0
	global	_PCL
	global	_STATUS
	global	_FSR
	global	_PORTA
	global	_IOCAF
	global	_PCLATH
	global	_INTCON
	global	_PIR1
	global	_PIR2
	global	_TMR1
	global	_TMR1L
	global	_TMR1H
	global	_T1CON
	global	_T1GCON
	global	_CCPR1
	global	_CCPR1L
	global	_CCPR1H
	global	_CCP1CON
	global	_ADRES
	global	_ADRESL
	global	_ADRESH
	global	_ADCON0
	global	_ADCON1
	global	_OPTION_REG
	global	_TRISA
	global	_IOCAP
	global	_PIE1
	global	_PIE2
	global	_OSCCON
	global	_FVRCON
	global	_DACCON0
	global	_DACCON1
	global	_C2CON0
	global	_CM2CON0
	global	_C2CON1
	global	_CM2CON1
	global	_C1CON0
	global	_CM1CON0
	global	_C1CON1
	global	_CM1CON1
	global	_CMOUT
	global	_MCOUT
	global	_LATA
	global	_IOCAN
	global	_WPUA
	global	_SLRCONA
	global	_PCON
	global	_TMR2
	global	_PR2
	global	_T2CON
	global	_HLTMR1
	global	_HLTPR1
	global	_HLT1CON0
	global	_HLT1CON1
	global	_ANSELA
	global	_APFCON
	global	_OSCTUNE
	global	_PMCON1
	global	_PMCON2
	global	_PMADR
	global	_PMADRL
	global	_PMADRH
	global	_PMDAT
	global	_PMDATL
	global	_PMDATH
	global	_COG1PH
	global	_COG1BLK
	global	_COG1DB
	global	_COG1CON0
	global	_COG1CON1
	global	_COG1ASD

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic12f752_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic12f752_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic12f752_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic12f752_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic12f752_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic12f752_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic12f752_8	udata_ovr	0x0008
_IOCAFbits
_IOCAF
	res	1
UD_abs_pic12f752_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic12f752_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic12f752_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic12f752_d	udata_ovr	0x000d
_PIR2bits
_PIR2
	res	1
UD_abs_pic12f752_f	udata_ovr	0x000f
_TMR1
_TMR1L
	res	1
UD_abs_pic12f752_10	udata_ovr	0x0010
_TMR1H
	res	1
UD_abs_pic12f752_11	udata_ovr	0x0011
_T1CONbits
_T1CON
	res	1
UD_abs_pic12f752_12	udata_ovr	0x0012
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic12f752_13	udata_ovr	0x0013
_CCPR1
_CCPR1L
	res	1
UD_abs_pic12f752_14	udata_ovr	0x0014
_CCPR1H
	res	1
UD_abs_pic12f752_15	udata_ovr	0x0015
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic12f752_1c	udata_ovr	0x001c
_ADRES
_ADRESL
	res	1
UD_abs_pic12f752_1d	udata_ovr	0x001d
_ADRESH
	res	1
UD_abs_pic12f752_1e	udata_ovr	0x001e
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic12f752_1f	udata_ovr	0x001f
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic12f752_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic12f752_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic12f752_88	udata_ovr	0x0088
_IOCAPbits
_IOCAP
	res	1
UD_abs_pic12f752_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic12f752_8d	udata_ovr	0x008d
_PIE2bits
_PIE2
	res	1
UD_abs_pic12f752_8f	udata_ovr	0x008f
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic12f752_90	udata_ovr	0x0090
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic12f752_91	udata_ovr	0x0091
_DACCON0bits
_DACCON0
	res	1
UD_abs_pic12f752_92	udata_ovr	0x0092
_DACCON1bits
_DACCON1
	res	1
UD_abs_pic12f752_9b	udata_ovr	0x009b
_C2CON0bits
_CM2CON0bits
_C2CON0
_CM2CON0
	res	1
UD_abs_pic12f752_9c	udata_ovr	0x009c
_C2CON1bits
_CM2CON1bits
_C2CON1
_CM2CON1
	res	1
UD_abs_pic12f752_9d	udata_ovr	0x009d
_C1CON0bits
_CM1CON0bits
_C1CON0
_CM1CON0
	res	1
UD_abs_pic12f752_9e	udata_ovr	0x009e
_C1CON1bits
_CM1CON1bits
_C1CON1
_CM1CON1
	res	1
UD_abs_pic12f752_9f	udata_ovr	0x009f
_CMOUTbits
_MCOUTbits
_CMOUT
_MCOUT
	res	1
UD_abs_pic12f752_105	udata_ovr	0x0105
_LATAbits
_LATA
	res	1
UD_abs_pic12f752_108	udata_ovr	0x0108
_IOCANbits
_IOCAN
	res	1
UD_abs_pic12f752_10c	udata_ovr	0x010c
_WPUAbits
_WPUA
	res	1
UD_abs_pic12f752_10d	udata_ovr	0x010d
_SLRCONAbits
_SLRCONA
	res	1
UD_abs_pic12f752_10f	udata_ovr	0x010f
_PCONbits
_PCON
	res	1
UD_abs_pic12f752_110	udata_ovr	0x0110
_TMR2
	res	1
UD_abs_pic12f752_111	udata_ovr	0x0111
_PR2
	res	1
UD_abs_pic12f752_112	udata_ovr	0x0112
_T2CONbits
_T2CON
	res	1
UD_abs_pic12f752_113	udata_ovr	0x0113
_HLTMR1
	res	1
UD_abs_pic12f752_114	udata_ovr	0x0114
_HLTPR1
	res	1
UD_abs_pic12f752_115	udata_ovr	0x0115
_HLT1CON0bits
_HLT1CON0
	res	1
UD_abs_pic12f752_116	udata_ovr	0x0116
_HLT1CON1bits
_HLT1CON1
	res	1
UD_abs_pic12f752_185	udata_ovr	0x0185
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic12f752_188	udata_ovr	0x0188
_APFCONbits
_APFCON
	res	1
UD_abs_pic12f752_189	udata_ovr	0x0189
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic12f752_18c	udata_ovr	0x018c
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic12f752_18d	udata_ovr	0x018d
_PMCON2
	res	1
UD_abs_pic12f752_18e	udata_ovr	0x018e
_PMADR
_PMADRL
	res	1
UD_abs_pic12f752_18f	udata_ovr	0x018f
_PMADRH
	res	1
UD_abs_pic12f752_190	udata_ovr	0x0190
_PMDAT
_PMDATL
	res	1
UD_abs_pic12f752_191	udata_ovr	0x0191
_PMDATH
	res	1
UD_abs_pic12f752_192	udata_ovr	0x0192
_COG1PHbits
_COG1PH
	res	1
UD_abs_pic12f752_193	udata_ovr	0x0193
_COG1BLKbits
_COG1BLK
	res	1
UD_abs_pic12f752_194	udata_ovr	0x0194
_COG1DBbits
_COG1DB
	res	1
UD_abs_pic12f752_195	udata_ovr	0x0195
_COG1CON0bits
_COG1CON0
	res	1
UD_abs_pic12f752_196	udata_ovr	0x0196
_COG1CON1bits
_COG1CON1
	res	1
UD_abs_pic12f752_197	udata_ovr	0x0197
_COG1ASDbits
_COG1ASD
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
code_pic12f752	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
