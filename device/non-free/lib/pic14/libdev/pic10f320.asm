;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:29 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic10f320.c"
	list	p=10f320
	radix dec
	include "p10f320.inc"
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
	global	_TRISAbits
	global	_LATAbits
	global	_ANSELAbits
	global	_WPUAbits
	global	_PCLATHbits
	global	_INTCONbits
	global	_PIR1bits
	global	_PIE1bits
	global	_OPTION_REGbits
	global	_PCONbits
	global	_OSCCONbits
	global	_T2CONbits
	global	_PWM1DCLbits
	global	_PWM1DCHbits
	global	_PWM1CONbits
	global	_PWM1CON0bits
	global	_PWM2DCLbits
	global	_PWM2DCHbits
	global	_PWM2CONbits
	global	_IOCAPbits
	global	_IOCANbits
	global	_IOCAFbits
	global	_FVRCONbits
	global	_ADCONbits
	global	_PMADRHbits
	global	_PMCON1bits
	global	_CLKRCONbits
	global	_NCO1ACCLbits
	global	_NCO1ACCHbits
	global	_NCO1ACCUbits
	global	_NCO1INCLbits
	global	_NCO1INCHbits
	global	_NCO1CONbits
	global	_NCO1CLKbits
	global	_WDTCONbits
	global	_CLC1CONbits
	global	_CLC1SEL0bits
	global	_CLC1SEL1bits
	global	_CLC1POLbits
	global	_CLC1GLS0bits
	global	_CLC1GLS1bits
	global	_CLC1GLS2bits
	global	_CLC1GLS3bits
	global	_CWG1CON0bits
	global	_CWG1CON1bits
	global	_CWG1CON2bits
	global	_CWG1DBRbits
	global	_CWG1DBFbits
	global	_VREGCONbits
	global	_BORCONbits
	global	_INDF
	global	_TMR0
	global	_PCL
	global	_STATUS
	global	_FSR
	global	_PORTA
	global	_TRISA
	global	_LATA
	global	_ANSELA
	global	_WPUA
	global	_PCLATH
	global	_INTCON
	global	_PIR1
	global	_PIE1
	global	_OPTION_REG
	global	_PCON
	global	_OSCCON
	global	_TMR2
	global	_PR2
	global	_T2CON
	global	_PWM1DCL
	global	_PWM1DCH
	global	_PWM1CON
	global	_PWM1CON0
	global	_PWM2DCL
	global	_PWM2DCH
	global	_PWM2CON
	global	_IOCAP
	global	_IOCAN
	global	_IOCAF
	global	_FVRCON
	global	_ADRES
	global	_ADCON
	global	_PMADR
	global	_PMADRL
	global	_PMADRH
	global	_PMDAT
	global	_PMDATL
	global	_PMDATH
	global	_PMCON1
	global	_PMCON2
	global	_CLKRCON
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
	global	_WDTCON
	global	_CLC1CON
	global	_CLC1SEL0
	global	_CLC1SEL1
	global	_CLC1POL
	global	_CLC1GLS0
	global	_CLC1GLS1
	global	_CLC1GLS2
	global	_CLC1GLS3
	global	_CWG1CON0
	global	_CWG1CON1
	global	_CWG1CON2
	global	_CWG1DBR
	global	_CWG1DBF
	global	_VREGCON
	global	_BORCON

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic10f320_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic10f320_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic10f320_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic10f320_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic10f320_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic10f320_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic10f320_6	udata_ovr	0x0006
_TRISAbits
_TRISA
	res	1
UD_abs_pic10f320_7	udata_ovr	0x0007
_LATAbits
_LATA
	res	1
UD_abs_pic10f320_8	udata_ovr	0x0008
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic10f320_9	udata_ovr	0x0009
_WPUAbits
_WPUA
	res	1
UD_abs_pic10f320_a	udata_ovr	0x000a
_PCLATHbits
_PCLATH
	res	1
UD_abs_pic10f320_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic10f320_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic10f320_d	udata_ovr	0x000d
_PIE1bits
_PIE1
	res	1
UD_abs_pic10f320_e	udata_ovr	0x000e
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic10f320_f	udata_ovr	0x000f
_PCONbits
_PCON
	res	1
UD_abs_pic10f320_10	udata_ovr	0x0010
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic10f320_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic10f320_12	udata_ovr	0x0012
_PR2
	res	1
UD_abs_pic10f320_13	udata_ovr	0x0013
_T2CONbits
_T2CON
	res	1
UD_abs_pic10f320_14	udata_ovr	0x0014
_PWM1DCLbits
_PWM1DCL
	res	1
UD_abs_pic10f320_15	udata_ovr	0x0015
_PWM1DCHbits
_PWM1DCH
	res	1
UD_abs_pic10f320_16	udata_ovr	0x0016
_PWM1CONbits
_PWM1CON0bits
_PWM1CON
_PWM1CON0
	res	1
UD_abs_pic10f320_17	udata_ovr	0x0017
_PWM2DCLbits
_PWM2DCL
	res	1
UD_abs_pic10f320_18	udata_ovr	0x0018
_PWM2DCHbits
_PWM2DCH
	res	1
UD_abs_pic10f320_19	udata_ovr	0x0019
_PWM2CONbits
_PWM2CON
	res	1
UD_abs_pic10f320_1a	udata_ovr	0x001a
_IOCAPbits
_IOCAP
	res	1
UD_abs_pic10f320_1b	udata_ovr	0x001b
_IOCANbits
_IOCAN
	res	1
UD_abs_pic10f320_1c	udata_ovr	0x001c
_IOCAFbits
_IOCAF
	res	1
UD_abs_pic10f320_1d	udata_ovr	0x001d
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic10f320_1e	udata_ovr	0x001e
_ADRES
	res	1
UD_abs_pic10f320_1f	udata_ovr	0x001f
_ADCONbits
_ADCON
	res	1
UD_abs_pic10f320_20	udata_ovr	0x0020
_PMADR
_PMADRL
	res	1
UD_abs_pic10f320_21	udata_ovr	0x0021
_PMADRHbits
_PMADRH
	res	1
UD_abs_pic10f320_22	udata_ovr	0x0022
_PMDAT
_PMDATL
	res	1
UD_abs_pic10f320_23	udata_ovr	0x0023
_PMDATH
	res	1
UD_abs_pic10f320_24	udata_ovr	0x0024
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic10f320_25	udata_ovr	0x0025
_PMCON2
	res	1
UD_abs_pic10f320_26	udata_ovr	0x0026
_CLKRCONbits
_CLKRCON
	res	1
UD_abs_pic10f320_27	udata_ovr	0x0027
_NCO1ACCLbits
_NCO1ACC
_NCO1ACCL
	res	1
UD_abs_pic10f320_28	udata_ovr	0x0028
_NCO1ACCHbits
_NCO1ACCH
	res	1
UD_abs_pic10f320_29	udata_ovr	0x0029
_NCO1ACCUbits
_NCO1ACCU
	res	1
UD_abs_pic10f320_2a	udata_ovr	0x002a
_NCO1INCLbits
_NCO1INC
_NCO1INCL
	res	1
UD_abs_pic10f320_2b	udata_ovr	0x002b
_NCO1INCHbits
_NCO1INCH
	res	1
UD_abs_pic10f320_2c	udata_ovr	0x002c
_NCO1INCU
	res	1
UD_abs_pic10f320_2d	udata_ovr	0x002d
_NCO1CONbits
_NCO1CON
	res	1
UD_abs_pic10f320_2e	udata_ovr	0x002e
_NCO1CLKbits
_NCO1CLK
	res	1
UD_abs_pic10f320_30	udata_ovr	0x0030
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic10f320_31	udata_ovr	0x0031
_CLC1CONbits
_CLC1CON
	res	1
UD_abs_pic10f320_32	udata_ovr	0x0032
_CLC1SEL0bits
_CLC1SEL0
	res	1
UD_abs_pic10f320_33	udata_ovr	0x0033
_CLC1SEL1bits
_CLC1SEL1
	res	1
UD_abs_pic10f320_34	udata_ovr	0x0034
_CLC1POLbits
_CLC1POL
	res	1
UD_abs_pic10f320_35	udata_ovr	0x0035
_CLC1GLS0bits
_CLC1GLS0
	res	1
UD_abs_pic10f320_36	udata_ovr	0x0036
_CLC1GLS1bits
_CLC1GLS1
	res	1
UD_abs_pic10f320_37	udata_ovr	0x0037
_CLC1GLS2bits
_CLC1GLS2
	res	1
UD_abs_pic10f320_38	udata_ovr	0x0038
_CLC1GLS3bits
_CLC1GLS3
	res	1
UD_abs_pic10f320_39	udata_ovr	0x0039
_CWG1CON0bits
_CWG1CON0
	res	1
UD_abs_pic10f320_3a	udata_ovr	0x003a
_CWG1CON1bits
_CWG1CON1
	res	1
UD_abs_pic10f320_3b	udata_ovr	0x003b
_CWG1CON2bits
_CWG1CON2
	res	1
UD_abs_pic10f320_3c	udata_ovr	0x003c
_CWG1DBRbits
_CWG1DBR
	res	1
UD_abs_pic10f320_3d	udata_ovr	0x003d
_CWG1DBFbits
_CWG1DBF
	res	1
UD_abs_pic10f320_3e	udata_ovr	0x003e
_VREGCONbits
_VREGCON
	res	1
UD_abs_pic10f320_3f	udata_ovr	0x003f
_BORCONbits
_BORCON
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
code_pic10f320	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
