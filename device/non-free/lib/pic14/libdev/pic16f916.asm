;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:50 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f916.c"
	list	p=16f916
	radix dec
	include "p16f916.inc"
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
	global	_PORTCbits
	global	_PORTEbits
	global	_INTCONbits
	global	_PIR1bits
	global	_PIR2bits
	global	_T1CONbits
	global	_T2CONbits
	global	_SSPCONbits
	global	_CCP1CONbits
	global	_RCSTAbits
	global	_ADCON0bits
	global	_OPTION_REGbits
	global	_TRISAbits
	global	_TRISBbits
	global	_TRISCbits
	global	_TRISEbits
	global	_PIE1bits
	global	_PIE2bits
	global	_PCONbits
	global	_OSCCONbits
	global	_OSCTUNEbits
	global	_ANSELbits
	global	_SSPSTATbits
	global	_WPUbits
	global	_WPUBbits
	global	_IOCbits
	global	_IOCBbits
	global	_CMCON1bits
	global	_TXSTAbits
	global	_CMCON0bits
	global	_VRCONbits
	global	_ADCON1bits
	global	_WDTCONbits
	global	_LCDCONbits
	global	_LCDPSbits
	global	_LVDCONbits
	global	_EEDATAbits
	global	_EEDATLbits
	global	_EEADRbits
	global	_EEADRLbits
	global	_EEDATHbits
	global	_EEADRHbits
	global	_LCDDATA0bits
	global	_LCDDATA1bits
	global	_LCDDATA3bits
	global	_LCDDATA4bits
	global	_LCDDATA6bits
	global	_LCDDATA7bits
	global	_LCDDATA9bits
	global	_LCDDATA10bits
	global	_LCDSE0bits
	global	_LCDSE1bits
	global	_EECON1bits
	global	_INDF
	global	_TMR0
	global	_PCL
	global	_STATUS
	global	_FSR
	global	_PORTA
	global	_PORTB
	global	_PORTC
	global	_PORTE
	global	_PCLATH
	global	_INTCON
	global	_PIR1
	global	_PIR2
	global	_TMR1
	global	_TMR1L
	global	_TMR1H
	global	_T1CON
	global	_TMR2
	global	_T2CON
	global	_SSPBUF
	global	_SSPCON
	global	_CCPR1
	global	_CCPR1L
	global	_CCPR1H
	global	_CCP1CON
	global	_RCSTA
	global	_TXREG
	global	_RCREG
	global	_ADRESH
	global	_ADCON0
	global	_OPTION_REG
	global	_TRISA
	global	_TRISB
	global	_TRISC
	global	_TRISE
	global	_PIE1
	global	_PIE2
	global	_PCON
	global	_OSCCON
	global	_OSCTUNE
	global	_ANSEL
	global	_PR2
	global	_SSPADD
	global	_SSPSTAT
	global	_WPU
	global	_WPUB
	global	_IOC
	global	_IOCB
	global	_CMCON1
	global	_TXSTA
	global	_SPBRG
	global	_CMCON0
	global	_VRCON
	global	_ADRESL
	global	_ADCON1
	global	_WDTCON
	global	_LCDCON
	global	_LCDPS
	global	_LVDCON
	global	_EEDATA
	global	_EEDATL
	global	_EEADR
	global	_EEADRL
	global	_EEDATH
	global	_EEADRH
	global	_LCDDATA0
	global	_LCDDATA1
	global	_LCDDATA3
	global	_LCDDATA4
	global	_LCDDATA6
	global	_LCDDATA7
	global	_LCDDATA9
	global	_LCDDATA10
	global	_LCDSE0
	global	_LCDSE1
	global	_EECON1
	global	_EECON2

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16f916_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16f916_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16f916_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f916_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f916_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16f916_5	udata_ovr	0x0005
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f916_6	udata_ovr	0x0006
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f916_7	udata_ovr	0x0007
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f916_9	udata_ovr	0x0009
_PORTEbits
_PORTE
	res	1
UD_abs_pic16f916_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f916_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f916_c	udata_ovr	0x000c
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f916_d	udata_ovr	0x000d
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f916_e	udata_ovr	0x000e
_TMR1
_TMR1L
	res	1
UD_abs_pic16f916_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16f916_10	udata_ovr	0x0010
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f916_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic16f916_12	udata_ovr	0x0012
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f916_13	udata_ovr	0x0013
_SSPBUF
	res	1
UD_abs_pic16f916_14	udata_ovr	0x0014
_SSPCONbits
_SSPCON
	res	1
UD_abs_pic16f916_15	udata_ovr	0x0015
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f916_16	udata_ovr	0x0016
_CCPR1H
	res	1
UD_abs_pic16f916_17	udata_ovr	0x0017
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16f916_18	udata_ovr	0x0018
_RCSTAbits
_RCSTA
	res	1
UD_abs_pic16f916_19	udata_ovr	0x0019
_TXREG
	res	1
UD_abs_pic16f916_1a	udata_ovr	0x001a
_RCREG
	res	1
UD_abs_pic16f916_1e	udata_ovr	0x001e
_ADRESH
	res	1
UD_abs_pic16f916_1f	udata_ovr	0x001f
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f916_81	udata_ovr	0x0081
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f916_85	udata_ovr	0x0085
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f916_86	udata_ovr	0x0086
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f916_87	udata_ovr	0x0087
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f916_89	udata_ovr	0x0089
_TRISEbits
_TRISE
	res	1
UD_abs_pic16f916_8c	udata_ovr	0x008c
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f916_8d	udata_ovr	0x008d
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f916_8e	udata_ovr	0x008e
_PCONbits
_PCON
	res	1
UD_abs_pic16f916_8f	udata_ovr	0x008f
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f916_90	udata_ovr	0x0090
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16f916_91	udata_ovr	0x0091
_ANSELbits
_ANSEL
	res	1
UD_abs_pic16f916_92	udata_ovr	0x0092
_PR2
	res	1
UD_abs_pic16f916_93	udata_ovr	0x0093
_SSPADD
	res	1
UD_abs_pic16f916_94	udata_ovr	0x0094
_SSPSTATbits
_SSPSTAT
	res	1
UD_abs_pic16f916_95	udata_ovr	0x0095
_WPUbits
_WPUBbits
_WPU
_WPUB
	res	1
UD_abs_pic16f916_96	udata_ovr	0x0096
_IOCbits
_IOCBbits
_IOC
_IOCB
	res	1
UD_abs_pic16f916_97	udata_ovr	0x0097
_CMCON1bits
_CMCON1
	res	1
UD_abs_pic16f916_98	udata_ovr	0x0098
_TXSTAbits
_TXSTA
	res	1
UD_abs_pic16f916_99	udata_ovr	0x0099
_SPBRG
	res	1
UD_abs_pic16f916_9c	udata_ovr	0x009c
_CMCON0bits
_CMCON0
	res	1
UD_abs_pic16f916_9d	udata_ovr	0x009d
_VRCONbits
_VRCON
	res	1
UD_abs_pic16f916_9e	udata_ovr	0x009e
_ADRESL
	res	1
UD_abs_pic16f916_9f	udata_ovr	0x009f
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f916_105	udata_ovr	0x0105
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f916_107	udata_ovr	0x0107
_LCDCONbits
_LCDCON
	res	1
UD_abs_pic16f916_108	udata_ovr	0x0108
_LCDPSbits
_LCDPS
	res	1
UD_abs_pic16f916_109	udata_ovr	0x0109
_LVDCONbits
_LVDCON
	res	1
UD_abs_pic16f916_10c	udata_ovr	0x010c
_EEDATAbits
_EEDATLbits
_EEDATA
_EEDATL
	res	1
UD_abs_pic16f916_10d	udata_ovr	0x010d
_EEADRbits
_EEADRLbits
_EEADR
_EEADRL
	res	1
UD_abs_pic16f916_10e	udata_ovr	0x010e
_EEDATHbits
_EEDATH
	res	1
UD_abs_pic16f916_10f	udata_ovr	0x010f
_EEADRHbits
_EEADRH
	res	1
UD_abs_pic16f916_110	udata_ovr	0x0110
_LCDDATA0bits
_LCDDATA0
	res	1
UD_abs_pic16f916_111	udata_ovr	0x0111
_LCDDATA1bits
_LCDDATA1
	res	1
UD_abs_pic16f916_113	udata_ovr	0x0113
_LCDDATA3bits
_LCDDATA3
	res	1
UD_abs_pic16f916_114	udata_ovr	0x0114
_LCDDATA4bits
_LCDDATA4
	res	1
UD_abs_pic16f916_116	udata_ovr	0x0116
_LCDDATA6bits
_LCDDATA6
	res	1
UD_abs_pic16f916_117	udata_ovr	0x0117
_LCDDATA7bits
_LCDDATA7
	res	1
UD_abs_pic16f916_119	udata_ovr	0x0119
_LCDDATA9bits
_LCDDATA9
	res	1
UD_abs_pic16f916_11a	udata_ovr	0x011a
_LCDDATA10bits
_LCDDATA10
	res	1
UD_abs_pic16f916_11c	udata_ovr	0x011c
_LCDSE0bits
_LCDSE0
	res	1
UD_abs_pic16f916_11d	udata_ovr	0x011d
_LCDSE1bits
_LCDSE1
	res	1
UD_abs_pic16f916_18c	udata_ovr	0x018c
_EECON1bits
_EECON1
	res	1
UD_abs_pic16f916_18d	udata_ovr	0x018d
_EECON2
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
code_pic16f916	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
