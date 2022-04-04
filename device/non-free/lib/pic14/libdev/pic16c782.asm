;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:33 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16c782.c"
	list	p=16c782
	radix dec
	include "p16c782.inc"
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
	global	_PORTBbits
	global	_INTCONbits
	global	_PIR1bits
	global	_T1CONbits
	global	_ADCON0bits
	global	_OPTION_REGbits
	global	_TRISAbits
	global	_TRISBbits
	global	_PIE1bits
	global	_PCONbits
	global	_WPUBbits
	global	_IOCBbits
	global	_REFCONbits
	global	_LVDCONbits
	global	_ANSELbits
	global	_ADCON1bits
	global	_CALCONbits
	global	_PSMCCON0bits
	global	_PSMCCON1bits
	global	_CM1CON0bits
	global	_CM2CON0bits
	global	_CM2CON1bits
	global	_OPACONbits
	global	_DACbits
	global	_DACON0bits
	global	_PMCON1bits
	global	_INDF
	global	_TMR0
	global	_PCL
	global	_STATUS
	global	_FSR
	global	_PORTA
	global	_PORTB
	global	_PCLATH
	global	_INTCON
	global	_PIR1
	global	_TMR1
	global	_TMR1L
	global	_TMR1H
	global	_T1CON
	global	_ADRES
	global	_ADCON0
	global	_OPTION_REG
	global	_TRISA
	global	_TRISB
	global	_PIE1
	global	_PCON
	global	_WPUB
	global	_IOCB
	global	_REFCON
	global	_LVDCON
	global	_ANSEL
	global	_ADCON1
	global	_PMDATL
	global	_PMADRL
	global	_PMDATH
	global	_PMADRH
	global	_CALCON
	global	_PSMCCON0
	global	_PSMCCON1
	global	_CM1CON0
	global	_CM2CON0
	global	_CM2CON1
	global	_OPACON
	global	_DAC
	global	_DACON0
	global	_PMCON1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16c782_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16c782_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16c782_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16c782_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16c782_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16c782_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16c782_6	udata_ovr	0x0006
_PORTBbits
_PORTB
	res	1
UD_abs_pic16c782_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16c782_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16c782_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16c782_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic16c782_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16c782_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic16c782_1e	udata_ovr	0x001e
_ADRES
	res	1
UD_abs_pic16c782_1f	udata_ovr	0x001f
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16c782_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16c782_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16c782_86	udata_ovr	0x0086
_TRISBbits
_TRISB
	res	1
UD_abs_pic16c782_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16c782_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16c782_95	udata_ovr	0x0095
_WPUBbits
_WPUB
	res	1
UD_abs_pic16c782_96	udata_ovr	0x0096
_IOCBbits
_IOCB
	res	1
UD_abs_pic16c782_9b	udata_ovr	0x009b
_REFCONbits
_REFCON
	res	1
UD_abs_pic16c782_9c	udata_ovr	0x009c
_LVDCONbits
_LVDCON
	res	1
UD_abs_pic16c782_9d	udata_ovr	0x009d
_ANSELbits
_ANSEL
	res	1
UD_abs_pic16c782_9f	udata_ovr	0x009f
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16c782_10c	udata_ovr	0x010c
_PMDATL
	res	1
UD_abs_pic16c782_10d	udata_ovr	0x010d
_PMADRL
	res	1
UD_abs_pic16c782_10e	udata_ovr	0x010e
_PMDATH
	res	1
UD_abs_pic16c782_10f	udata_ovr	0x010f
_PMADRH
	res	1
UD_abs_pic16c782_110	udata_ovr	0x0110
_CALCONbits
_CALCON
	res	1
UD_abs_pic16c782_111	udata_ovr	0x0111
_PSMCCON0bits
_PSMCCON0
	res	1
UD_abs_pic16c782_112	udata_ovr	0x0112
_PSMCCON1bits
_PSMCCON1
	res	1
UD_abs_pic16c782_119	udata_ovr	0x0119
_CM1CON0bits
_CM1CON0
	res	1
UD_abs_pic16c782_11a	udata_ovr	0x011a
_CM2CON0bits
_CM2CON0
	res	1
UD_abs_pic16c782_11b	udata_ovr	0x011b
_CM2CON1bits
_CM2CON1
	res	1
UD_abs_pic16c782_11c	udata_ovr	0x011c
_OPACONbits
_OPACON
	res	1
UD_abs_pic16c782_11e	udata_ovr	0x011e
_DACbits
_DAC
	res	1
UD_abs_pic16c782_11f	udata_ovr	0x011f
_DACON0bits
_DACON0
	res	1
UD_abs_pic16c782_18c	udata_ovr	0x018c
_PMCON1bits
_PMCON1
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
code_pic16c782	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
