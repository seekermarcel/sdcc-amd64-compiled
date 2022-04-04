;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:50 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16hv753.c"
	list	p=16hv753
	radix dec
	include "p16hv753.inc"
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
	global	_PORTCbits
	global	_IOCAFbits
	global	_IOCCFbits
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
	global	_TRISCbits
	global	_IOCAPbits
	global	_IOCCPbits
	global	_PIE1bits
	global	_PIE2bits
	global	_OSCCONbits
	global	_FVR1CON0bits
	global	_DAC1CON0bits
	global	_OPA1CONbits
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
	global	_LATCbits
	global	_IOCANbits
	global	_IOCCNbits
	global	_WPUAbits
	global	_WPUCbits
	global	_SLRCONCbits
	global	_PCONbits
	global	_T2CONbits
	global	_HLT1CON0bits
	global	_HLT1CON1bits
	global	_HLT2CON0bits
	global	_HLT2CON1bits
	global	_SLPC1CON0bits
	global	_SLPCCON0bits
	global	_SLPC1CON1bits
	global	_SLPCCON1bits
	global	_ANSELAbits
	global	_ANSELCbits
	global	_APFCONbits
	global	_OSCTUNEbits
	global	_PMCON1bits
	global	_COG1PHRbits
	global	_COG1PHFbits
	global	_COG1BKRbits
	global	_COG1BKFbits
	global	_COG1DBRbits
	global	_COG1DBFbits
	global	_COG1CON0bits
	global	_COG1CON1bits
	global	_COG1RISbits
	global	_COG1RSIMbits
	global	_COG1FISbits
	global	_COG1FSIMbits
	global	_COG1ASD0bits
	global	_COG1ASD1bits
	global	_INDF
	global	_TMR0
	global	_PCL
	global	_STATUS
	global	_FSR
	global	_PORTA
	global	_PORTC
	global	_IOCAF
	global	_IOCCF
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
	global	_TRISC
	global	_IOCAP
	global	_IOCCP
	global	_PIE1
	global	_PIE2
	global	_OSCCON
	global	_FVR1CON0
	global	_DAC1CON0
	global	_DAC1REFL
	global	_DAC1REFH
	global	_OPA1CON
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
	global	_LATC
	global	_IOCAN
	global	_IOCCN
	global	_WPUA
	global	_WPUC
	global	_SLRCONC
	global	_PCON
	global	_TMR2
	global	_PR2
	global	_T2CON
	global	_HLTMR1
	global	_HLTPR1
	global	_HLT1CON0
	global	_HLT1CON1
	global	_HLTMR2
	global	_HLTPR2
	global	_HLT2CON0
	global	_HLT2CON1
	global	_SLPC1CON0
	global	_SLPCCON0
	global	_SLPC1CON1
	global	_SLPCCON1
	global	_ANSELA
	global	_ANSELC
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
	global	_COG1PHR
	global	_COG1PHF
	global	_COG1BKR
	global	_COG1BKF
	global	_COG1DBR
	global	_COG1DBF
	global	_COG1CON0
	global	_COG1CON1
	global	_COG1RIS
	global	_COG1RSIM
	global	_COG1FIS
	global	_COG1FSIM
	global	_COG1ASD0
	global	_COG1ASD1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16hv753_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16hv753_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16hv753_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16hv753_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16hv753_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16hv753_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16hv753_7	udata_ovr	0x0007
_PORTCbits
_PORTC
	res	1
UD_abs_pic16hv753_8	udata_ovr	0x0008
_IOCAFbits
_IOCAF
	res	1
UD_abs_pic16hv753_9	udata_ovr	0x0009
_IOCCFbits
_IOCCF
	res	1
UD_abs_pic16hv753_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16hv753_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16hv753_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16hv753_d	udata_ovr	0x000d
_PIR2bits
_PIR2
	res	1
UD_abs_pic16hv753_f	udata_ovr	0x000f
_TMR1
_TMR1L
	res	1
UD_abs_pic16hv753_10	udata_ovr	0x0010
_TMR1H
	res	1
UD_abs_pic16hv753_11	udata_ovr	0x0011
_T1CONbits
_T1CON
	res	1
UD_abs_pic16hv753_12	udata_ovr	0x0012
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic16hv753_13	udata_ovr	0x0013
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16hv753_14	udata_ovr	0x0014
_CCPR1H
	res	1
UD_abs_pic16hv753_15	udata_ovr	0x0015
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16hv753_1c	udata_ovr	0x001c
_ADRES
_ADRESL
	res	1
UD_abs_pic16hv753_1d	udata_ovr	0x001d
_ADRESH
	res	1
UD_abs_pic16hv753_1e	udata_ovr	0x001e
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16hv753_1f	udata_ovr	0x001f
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16hv753_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16hv753_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16hv753_87	udata_ovr	0x0087
_TRISCbits
_TRISC
	res	1
UD_abs_pic16hv753_88	udata_ovr	0x0088
_IOCAPbits
_IOCAP
	res	1
UD_abs_pic16hv753_89	udata_ovr	0x0089
_IOCCPbits
_IOCCP
	res	1
UD_abs_pic16hv753_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16hv753_8d	udata_ovr	0x008d
_PIE2bits
_PIE2
	res	1
UD_abs_pic16hv753_8f	udata_ovr	0x008f
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16hv753_90	udata_ovr	0x0090
_FVR1CON0bits
_FVR1CON0
	res	1
UD_abs_pic16hv753_91	udata_ovr	0x0091
_DAC1CON0bits
_DAC1CON0
	res	1
UD_abs_pic16hv753_92	udata_ovr	0x0092
_DAC1REFL
	res	1
UD_abs_pic16hv753_93	udata_ovr	0x0093
_DAC1REFH
	res	1
UD_abs_pic16hv753_96	udata_ovr	0x0096
_OPA1CONbits
_OPA1CON
	res	1
UD_abs_pic16hv753_9b	udata_ovr	0x009b
_C2CON0bits
_CM2CON0bits
_C2CON0
_CM2CON0
	res	1
UD_abs_pic16hv753_9c	udata_ovr	0x009c
_C2CON1bits
_CM2CON1bits
_C2CON1
_CM2CON1
	res	1
UD_abs_pic16hv753_9d	udata_ovr	0x009d
_C1CON0bits
_CM1CON0bits
_C1CON0
_CM1CON0
	res	1
UD_abs_pic16hv753_9e	udata_ovr	0x009e
_C1CON1bits
_CM1CON1bits
_C1CON1
_CM1CON1
	res	1
UD_abs_pic16hv753_9f	udata_ovr	0x009f
_CMOUTbits
_MCOUTbits
_CMOUT
_MCOUT
	res	1
UD_abs_pic16hv753_105	udata_ovr	0x0105
_LATAbits
_LATA
	res	1
UD_abs_pic16hv753_107	udata_ovr	0x0107
_LATCbits
_LATC
	res	1
UD_abs_pic16hv753_108	udata_ovr	0x0108
_IOCANbits
_IOCAN
	res	1
UD_abs_pic16hv753_109	udata_ovr	0x0109
_IOCCNbits
_IOCCN
	res	1
UD_abs_pic16hv753_10c	udata_ovr	0x010c
_WPUAbits
_WPUA
	res	1
UD_abs_pic16hv753_10d	udata_ovr	0x010d
_WPUCbits
_WPUC
	res	1
UD_abs_pic16hv753_10e	udata_ovr	0x010e
_SLRCONCbits
_SLRCONC
	res	1
UD_abs_pic16hv753_10f	udata_ovr	0x010f
_PCONbits
_PCON
	res	1
UD_abs_pic16hv753_110	udata_ovr	0x0110
_TMR2
	res	1
UD_abs_pic16hv753_111	udata_ovr	0x0111
_PR2
	res	1
UD_abs_pic16hv753_112	udata_ovr	0x0112
_T2CONbits
_T2CON
	res	1
UD_abs_pic16hv753_113	udata_ovr	0x0113
_HLTMR1
	res	1
UD_abs_pic16hv753_114	udata_ovr	0x0114
_HLTPR1
	res	1
UD_abs_pic16hv753_115	udata_ovr	0x0115
_HLT1CON0bits
_HLT1CON0
	res	1
UD_abs_pic16hv753_116	udata_ovr	0x0116
_HLT1CON1bits
_HLT1CON1
	res	1
UD_abs_pic16hv753_117	udata_ovr	0x0117
_HLTMR2
	res	1
UD_abs_pic16hv753_118	udata_ovr	0x0118
_HLTPR2
	res	1
UD_abs_pic16hv753_119	udata_ovr	0x0119
_HLT2CON0bits
_HLT2CON0
	res	1
UD_abs_pic16hv753_11a	udata_ovr	0x011a
_HLT2CON1bits
_HLT2CON1
	res	1
UD_abs_pic16hv753_11e	udata_ovr	0x011e
_SLPC1CON0bits
_SLPCCON0bits
_SLPC1CON0
_SLPCCON0
	res	1
UD_abs_pic16hv753_11f	udata_ovr	0x011f
_SLPC1CON1bits
_SLPCCON1bits
_SLPC1CON1
_SLPCCON1
	res	1
UD_abs_pic16hv753_185	udata_ovr	0x0185
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic16hv753_187	udata_ovr	0x0187
_ANSELCbits
_ANSELC
	res	1
UD_abs_pic16hv753_188	udata_ovr	0x0188
_APFCONbits
_APFCON
	res	1
UD_abs_pic16hv753_189	udata_ovr	0x0189
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16hv753_18c	udata_ovr	0x018c
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic16hv753_18d	udata_ovr	0x018d
_PMCON2
	res	1
UD_abs_pic16hv753_18e	udata_ovr	0x018e
_PMADR
_PMADRL
	res	1
UD_abs_pic16hv753_18f	udata_ovr	0x018f
_PMADRH
	res	1
UD_abs_pic16hv753_190	udata_ovr	0x0190
_PMDAT
_PMDATL
	res	1
UD_abs_pic16hv753_191	udata_ovr	0x0191
_PMDATH
	res	1
UD_abs_pic16hv753_192	udata_ovr	0x0192
_COG1PHRbits
_COG1PHR
	res	1
UD_abs_pic16hv753_193	udata_ovr	0x0193
_COG1PHFbits
_COG1PHF
	res	1
UD_abs_pic16hv753_194	udata_ovr	0x0194
_COG1BKRbits
_COG1BKR
	res	1
UD_abs_pic16hv753_195	udata_ovr	0x0195
_COG1BKFbits
_COG1BKF
	res	1
UD_abs_pic16hv753_196	udata_ovr	0x0196
_COG1DBRbits
_COG1DBR
	res	1
UD_abs_pic16hv753_197	udata_ovr	0x0197
_COG1DBFbits
_COG1DBF
	res	1
UD_abs_pic16hv753_198	udata_ovr	0x0198
_COG1CON0bits
_COG1CON0
	res	1
UD_abs_pic16hv753_199	udata_ovr	0x0199
_COG1CON1bits
_COG1CON1
	res	1
UD_abs_pic16hv753_19a	udata_ovr	0x019a
_COG1RISbits
_COG1RIS
	res	1
UD_abs_pic16hv753_19b	udata_ovr	0x019b
_COG1RSIMbits
_COG1RSIM
	res	1
UD_abs_pic16hv753_19c	udata_ovr	0x019c
_COG1FISbits
_COG1FIS
	res	1
UD_abs_pic16hv753_19d	udata_ovr	0x019d
_COG1FSIMbits
_COG1FSIM
	res	1
UD_abs_pic16hv753_19e	udata_ovr	0x019e
_COG1ASD0bits
_COG1ASD0
	res	1
UD_abs_pic16hv753_19f	udata_ovr	0x019f
_COG1ASD1bits
_COG1ASD1
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
code_pic16hv753	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
