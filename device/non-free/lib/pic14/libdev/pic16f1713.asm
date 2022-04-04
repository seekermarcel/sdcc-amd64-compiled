;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:37 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f1713.c"
	list	p=16f1713
	radix dec
	include "p16f1713.inc"
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
	global	_PORTEbits
	global	_PIR1bits
	global	_PIR2bits
	global	_PIR3bits
	global	_T1CONbits
	global	_T1GCONbits
	global	_T2CONbits
	global	_TRISAbits
	global	_TRISBbits
	global	_TRISCbits
	global	_TRISEbits
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
	global	_LATBbits
	global	_LATCbits
	global	_CM1CON0bits
	global	_CM1CON1bits
	global	_CM2CON0bits
	global	_CM2CON1bits
	global	_CMOUTbits
	global	_BORCONbits
	global	_FVRCONbits
	global	_DAC1CON0bits
	global	_DAC1CON1bits
	global	_DAC2CON0bits
	global	_DAC2REFbits
	global	_ZCD1CONbits
	global	_ANSELAbits
	global	_ANSELBbits
	global	_ANSELCbits
	global	_PMCON1bits
	global	_VREGCONbits
	global	_RC1STAbits
	global	_RCSTAbits
	global	_RCSTA1bits
	global	_TX1STAbits
	global	_TXSTAbits
	global	_TXSTA1bits
	global	_BAUD1CONbits
	global	_BAUDCONbits
	global	_BAUDCON1bits
	global	_BAUDCTLbits
	global	_BAUDCTL1bits
	global	_WPUAbits
	global	_WPUBbits
	global	_WPUCbits
	global	_WPUEbits
	global	_SSP1BUFbits
	global	_SSPBUFbits
	global	_SSP1ADDbits
	global	_SSPADDbits
	global	_SSP1MSKbits
	global	_SSPMSKbits
	global	_SSP1STATbits
	global	_SSPSTATbits
	global	_SSP1CONbits
	global	_SSP1CON1bits
	global	_SSPCONbits
	global	_SSPCON1bits
	global	_SSP1CON2bits
	global	_SSPCON2bits
	global	_SSP1CON3bits
	global	_SSPCON3bits
	global	_ODCONAbits
	global	_ODCONBbits
	global	_ODCONCbits
	global	_CCP1CONbits
	global	_ECCP1CONbits
	global	_CCP2CONbits
	global	_CCPTMRSbits
	global	_SLRCONAbits
	global	_SLRCONBbits
	global	_SLRCONCbits
	global	_INLVLAbits
	global	_INLVLBbits
	global	_INLVLCbits
	global	_INLVLEbits
	global	_IOCAPbits
	global	_IOCANbits
	global	_IOCAFbits
	global	_IOCBPbits
	global	_IOCBNbits
	global	_IOCBFbits
	global	_IOCCPbits
	global	_IOCCNbits
	global	_IOCCFbits
	global	_IOCEPbits
	global	_IOCENbits
	global	_IOCEFbits
	global	_T4CONbits
	global	_T6CONbits
	global	_NCO1ACCLbits
	global	_NCO1ACCHbits
	global	_NCO1ACCUbits
	global	_NCO1INCLbits
	global	_NCO1INCHbits
	global	_NCO1INCUbits
	global	_NCO1CONbits
	global	_NCO1CLKbits
	global	_OPA1CONbits
	global	_OPA2CONbits
	global	_PWM3DCLbits
	global	_PWM3DCHbits
	global	_PWM3CONbits
	global	_PWM4DCLbits
	global	_PWM4DCHbits
	global	_PWM4CONbits
	global	_COG1PHRbits
	global	_COG1PHFbits
	global	_COG1BLKRbits
	global	_COG1BLKFbits
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
	global	_COG1STRbits
	global	_PPSLOCKbits
	global	_CLCDATAbits
	global	_CLC1CONbits
	global	_CLC1POLbits
	global	_CLC1SEL0bits
	global	_CLC1SEL1bits
	global	_CLC1SEL2bits
	global	_CLC1SEL3bits
	global	_CLC1GLS0bits
	global	_CLC1GLS1bits
	global	_CLC1GLS2bits
	global	_CLC1GLS3bits
	global	_CLC2CONbits
	global	_CLC2POLbits
	global	_CLC2SEL0bits
	global	_CLC2SEL1bits
	global	_CLC2SEL2bits
	global	_CLC2SEL3bits
	global	_CLC2GLS0bits
	global	_CLC2GLS1bits
	global	_CLC2GLS2bits
	global	_CLC2GLS3bits
	global	_CLC3CONbits
	global	_CLC3POLbits
	global	_CLC3SEL0bits
	global	_CLC3SEL1bits
	global	_CLC3SEL2bits
	global	_CLC3SEL3bits
	global	_CLC3GLS0bits
	global	_CLC3GLS1bits
	global	_CLC3GLS2bits
	global	_CLC3GLS3bits
	global	_CLC4CONbits
	global	_CLC4POLbits
	global	_CLC4SEL0bits
	global	_CLC4SEL1bits
	global	_CLC4SEL2bits
	global	_CLC4SEL3bits
	global	_CLC4GLS0bits
	global	_CLC4GLS1bits
	global	_CLC4GLS2bits
	global	_CLC4GLS3bits
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
	global	_PORTE
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
	global	_TRISE
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
	global	_LATB
	global	_LATC
	global	_CM1CON0
	global	_CM1CON1
	global	_CM2CON0
	global	_CM2CON1
	global	_CMOUT
	global	_BORCON
	global	_FVRCON
	global	_DAC1CON0
	global	_DAC1CON1
	global	_DAC2CON0
	global	_DAC2REF
	global	_ZCD1CON
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
	global	_RC1REG
	global	_RCREG
	global	_RCREG1
	global	_TX1REG
	global	_TXREG
	global	_TXREG1
	global	_SP1BRG
	global	_SP1BRGL
	global	_SPBRG
	global	_SPBRG1
	global	_SPBRGL
	global	_SP1BRGH
	global	_SPBRGH
	global	_SPBRGH1
	global	_RC1STA
	global	_RCSTA
	global	_RCSTA1
	global	_TX1STA
	global	_TXSTA
	global	_TXSTA1
	global	_BAUD1CON
	global	_BAUDCON
	global	_BAUDCON1
	global	_BAUDCTL
	global	_BAUDCTL1
	global	_WPUA
	global	_WPUB
	global	_WPUC
	global	_WPUE
	global	_SSP1BUF
	global	_SSPBUF
	global	_SSP1ADD
	global	_SSPADD
	global	_SSP1MSK
	global	_SSPMSK
	global	_SSP1STAT
	global	_SSPSTAT
	global	_SSP1CON
	global	_SSP1CON1
	global	_SSPCON
	global	_SSPCON1
	global	_SSP1CON2
	global	_SSPCON2
	global	_SSP1CON3
	global	_SSPCON3
	global	_ODCONA
	global	_ODCONB
	global	_ODCONC
	global	_CCPR1
	global	_CCPR1L
	global	_CCPR1H
	global	_CCP1CON
	global	_ECCP1CON
	global	_CCPR2
	global	_CCPR2L
	global	_CCPR2H
	global	_CCP2CON
	global	_CCPTMRS
	global	_SLRCONA
	global	_SLRCONB
	global	_SLRCONC
	global	_INLVLA
	global	_INLVLB
	global	_INLVLC
	global	_INLVLE
	global	_IOCAP
	global	_IOCAN
	global	_IOCAF
	global	_IOCBP
	global	_IOCBN
	global	_IOCBF
	global	_IOCCP
	global	_IOCCN
	global	_IOCCF
	global	_IOCEP
	global	_IOCEN
	global	_IOCEF
	global	_TMR4
	global	_PR4
	global	_T4CON
	global	_TMR6
	global	_PR6
	global	_T6CON
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
	global	_OPA1CON
	global	_OPA2CON
	global	_PWM3DCL
	global	_PWM3DCH
	global	_PWM3CON
	global	_PWM4DCL
	global	_PWM4DCH
	global	_PWM4CON
	global	_COG1PHR
	global	_COG1PHF
	global	_COG1BLKR
	global	_COG1BLKF
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
	global	_COG1STR
	global	_PPSLOCK
	global	_INTPPS
	global	_T0CKIPPS
	global	_T1CKIPPS
	global	_T1GPPS
	global	_CCP1PPS
	global	_CCP2PPS
	global	_COGINPPS
	global	_SSPCLKPPS
	global	_SSPDATPPS
	global	_SSPSSPPS
	global	_RXPPS
	global	_CKPPS
	global	_CLCIN0PPS
	global	_CLCIN1PPS
	global	_CLCIN2PPS
	global	_CLCIN3PPS
	global	_RA0PPS
	global	_RA1PPS
	global	_RA2PPS
	global	_RA3PPS
	global	_RA4PPS
	global	_RA5PPS
	global	_RA6PPS
	global	_RA7PPS
	global	_RB0PPS
	global	_RB1PPS
	global	_RB2PPS
	global	_RB3PPS
	global	_RB4PPS
	global	_RB5PPS
	global	_RB6PPS
	global	_RB7PPS
	global	_RC0PPS
	global	_RC1PPS
	global	_RC2PPS
	global	_RC3PPS
	global	_RC4PPS
	global	_RC5PPS
	global	_RC6PPS
	global	_RC7PPS
	global	_CLCDATA
	global	_CLC1CON
	global	_CLC1POL
	global	_CLC1SEL0
	global	_CLC1SEL1
	global	_CLC1SEL2
	global	_CLC1SEL3
	global	_CLC1GLS0
	global	_CLC1GLS1
	global	_CLC1GLS2
	global	_CLC1GLS3
	global	_CLC2CON
	global	_CLC2POL
	global	_CLC2SEL0
	global	_CLC2SEL1
	global	_CLC2SEL2
	global	_CLC2SEL3
	global	_CLC2GLS0
	global	_CLC2GLS1
	global	_CLC2GLS2
	global	_CLC2GLS3
	global	_CLC3CON
	global	_CLC3POL
	global	_CLC3SEL0
	global	_CLC3SEL1
	global	_CLC3SEL2
	global	_CLC3SEL3
	global	_CLC3GLS0
	global	_CLC3GLS1
	global	_CLC3GLS2
	global	_CLC3GLS3
	global	_CLC4CON
	global	_CLC4POL
	global	_CLC4SEL0
	global	_CLC4SEL1
	global	_CLC4SEL2
	global	_CLC4SEL3
	global	_CLC4GLS0
	global	_CLC4GLS1
	global	_CLC4GLS2
	global	_CLC4GLS3
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
UD_abs_pic16f1713_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic16f1713_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic16f1713_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f1713_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f1713_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic16f1713_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic16f1713_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic16f1713_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic16f1713_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic16f1713_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic16f1713_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f1713_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f1713_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f1713_d	udata_ovr	0x000d
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f1713_e	udata_ovr	0x000e
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f1713_10	udata_ovr	0x0010
_PORTEbits
_PORTE
	res	1
UD_abs_pic16f1713_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f1713_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f1713_13	udata_ovr	0x0013
_PIR3bits
_PIR3
	res	1
UD_abs_pic16f1713_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic16f1713_16	udata_ovr	0x0016
_TMR1
_TMR1L
	res	1
UD_abs_pic16f1713_17	udata_ovr	0x0017
_TMR1H
	res	1
UD_abs_pic16f1713_18	udata_ovr	0x0018
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f1713_19	udata_ovr	0x0019
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic16f1713_1a	udata_ovr	0x001a
_TMR2
	res	1
UD_abs_pic16f1713_1b	udata_ovr	0x001b
_PR2
	res	1
UD_abs_pic16f1713_1c	udata_ovr	0x001c
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f1713_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f1713_8d	udata_ovr	0x008d
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f1713_8e	udata_ovr	0x008e
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f1713_90	udata_ovr	0x0090
_TRISEbits
_TRISE
	res	1
UD_abs_pic16f1713_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f1713_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f1713_93	udata_ovr	0x0093
_PIE3bits
_PIE3
	res	1
UD_abs_pic16f1713_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f1713_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic16f1713_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f1713_98	udata_ovr	0x0098
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16f1713_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f1713_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic16f1713_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic16f1713_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic16f1713_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f1713_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f1713_9f	udata_ovr	0x009f
_ADCON2bits
_ADCON2
	res	1
UD_abs_pic16f1713_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic16f1713_10d	udata_ovr	0x010d
_LATBbits
_LATB
	res	1
UD_abs_pic16f1713_10e	udata_ovr	0x010e
_LATCbits
_LATC
	res	1
UD_abs_pic16f1713_111	udata_ovr	0x0111
_CM1CON0bits
_CM1CON0
	res	1
UD_abs_pic16f1713_112	udata_ovr	0x0112
_CM1CON1bits
_CM1CON1
	res	1
UD_abs_pic16f1713_113	udata_ovr	0x0113
_CM2CON0bits
_CM2CON0
	res	1
UD_abs_pic16f1713_114	udata_ovr	0x0114
_CM2CON1bits
_CM2CON1
	res	1
UD_abs_pic16f1713_115	udata_ovr	0x0115
_CMOUTbits
_CMOUT
	res	1
UD_abs_pic16f1713_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic16f1713_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic16f1713_118	udata_ovr	0x0118
_DAC1CON0bits
_DAC1CON0
	res	1
UD_abs_pic16f1713_119	udata_ovr	0x0119
_DAC1CON1bits
_DAC1CON1
	res	1
UD_abs_pic16f1713_11a	udata_ovr	0x011a
_DAC2CON0bits
_DAC2CON0
	res	1
UD_abs_pic16f1713_11b	udata_ovr	0x011b
_DAC2REFbits
_DAC2REF
	res	1
UD_abs_pic16f1713_11c	udata_ovr	0x011c
_ZCD1CONbits
_ZCD1CON
	res	1
UD_abs_pic16f1713_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic16f1713_18d	udata_ovr	0x018d
_ANSELBbits
_ANSELB
	res	1
UD_abs_pic16f1713_18e	udata_ovr	0x018e
_ANSELCbits
_ANSELC
	res	1
UD_abs_pic16f1713_191	udata_ovr	0x0191
_PMADR
_PMADRL
	res	1
UD_abs_pic16f1713_192	udata_ovr	0x0192
_PMADRH
	res	1
UD_abs_pic16f1713_193	udata_ovr	0x0193
_PMDAT
_PMDATL
	res	1
UD_abs_pic16f1713_194	udata_ovr	0x0194
_PMDATH
	res	1
UD_abs_pic16f1713_195	udata_ovr	0x0195
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic16f1713_196	udata_ovr	0x0196
_PMCON2
	res	1
UD_abs_pic16f1713_197	udata_ovr	0x0197
_VREGCONbits
_VREGCON
	res	1
UD_abs_pic16f1713_199	udata_ovr	0x0199
_RC1REG
_RCREG
_RCREG1
	res	1
UD_abs_pic16f1713_19a	udata_ovr	0x019a
_TX1REG
_TXREG
_TXREG1
	res	1
UD_abs_pic16f1713_19b	udata_ovr	0x019b
_SP1BRG
_SP1BRGL
_SPBRG
_SPBRG1
_SPBRGL
	res	1
UD_abs_pic16f1713_19c	udata_ovr	0x019c
_SP1BRGH
_SPBRGH
_SPBRGH1
	res	1
UD_abs_pic16f1713_19d	udata_ovr	0x019d
_RC1STAbits
_RCSTAbits
_RCSTA1bits
_RC1STA
_RCSTA
_RCSTA1
	res	1
UD_abs_pic16f1713_19e	udata_ovr	0x019e
_TX1STAbits
_TXSTAbits
_TXSTA1bits
_TX1STA
_TXSTA
_TXSTA1
	res	1
UD_abs_pic16f1713_19f	udata_ovr	0x019f
_BAUD1CONbits
_BAUDCONbits
_BAUDCON1bits
_BAUDCTLbits
_BAUDCTL1bits
_BAUD1CON
_BAUDCON
_BAUDCON1
_BAUDCTL
_BAUDCTL1
	res	1
UD_abs_pic16f1713_20c	udata_ovr	0x020c
_WPUAbits
_WPUA
	res	1
UD_abs_pic16f1713_20d	udata_ovr	0x020d
_WPUBbits
_WPUB
	res	1
UD_abs_pic16f1713_20e	udata_ovr	0x020e
_WPUCbits
_WPUC
	res	1
UD_abs_pic16f1713_210	udata_ovr	0x0210
_WPUEbits
_WPUE
	res	1
UD_abs_pic16f1713_211	udata_ovr	0x0211
_SSP1BUFbits
_SSPBUFbits
_SSP1BUF
_SSPBUF
	res	1
UD_abs_pic16f1713_212	udata_ovr	0x0212
_SSP1ADDbits
_SSPADDbits
_SSP1ADD
_SSPADD
	res	1
UD_abs_pic16f1713_213	udata_ovr	0x0213
_SSP1MSKbits
_SSPMSKbits
_SSP1MSK
_SSPMSK
	res	1
UD_abs_pic16f1713_214	udata_ovr	0x0214
_SSP1STATbits
_SSPSTATbits
_SSP1STAT
_SSPSTAT
	res	1
UD_abs_pic16f1713_215	udata_ovr	0x0215
_SSP1CONbits
_SSP1CON1bits
_SSPCONbits
_SSPCON1bits
_SSP1CON
_SSP1CON1
_SSPCON
_SSPCON1
	res	1
UD_abs_pic16f1713_216	udata_ovr	0x0216
_SSP1CON2bits
_SSPCON2bits
_SSP1CON2
_SSPCON2
	res	1
UD_abs_pic16f1713_217	udata_ovr	0x0217
_SSP1CON3bits
_SSPCON3bits
_SSP1CON3
_SSPCON3
	res	1
UD_abs_pic16f1713_28c	udata_ovr	0x028c
_ODCONAbits
_ODCONA
	res	1
UD_abs_pic16f1713_28d	udata_ovr	0x028d
_ODCONBbits
_ODCONB
	res	1
UD_abs_pic16f1713_28e	udata_ovr	0x028e
_ODCONCbits
_ODCONC
	res	1
UD_abs_pic16f1713_291	udata_ovr	0x0291
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f1713_292	udata_ovr	0x0292
_CCPR1H
	res	1
UD_abs_pic16f1713_293	udata_ovr	0x0293
_CCP1CONbits
_ECCP1CONbits
_CCP1CON
_ECCP1CON
	res	1
UD_abs_pic16f1713_298	udata_ovr	0x0298
_CCPR2
_CCPR2L
	res	1
UD_abs_pic16f1713_299	udata_ovr	0x0299
_CCPR2H
	res	1
UD_abs_pic16f1713_29a	udata_ovr	0x029a
_CCP2CONbits
_CCP2CON
	res	1
UD_abs_pic16f1713_29e	udata_ovr	0x029e
_CCPTMRSbits
_CCPTMRS
	res	1
UD_abs_pic16f1713_30c	udata_ovr	0x030c
_SLRCONAbits
_SLRCONA
	res	1
UD_abs_pic16f1713_30d	udata_ovr	0x030d
_SLRCONBbits
_SLRCONB
	res	1
UD_abs_pic16f1713_30e	udata_ovr	0x030e
_SLRCONCbits
_SLRCONC
	res	1
UD_abs_pic16f1713_38c	udata_ovr	0x038c
_INLVLAbits
_INLVLA
	res	1
UD_abs_pic16f1713_38d	udata_ovr	0x038d
_INLVLBbits
_INLVLB
	res	1
UD_abs_pic16f1713_38e	udata_ovr	0x038e
_INLVLCbits
_INLVLC
	res	1
UD_abs_pic16f1713_390	udata_ovr	0x0390
_INLVLEbits
_INLVLE
	res	1
UD_abs_pic16f1713_391	udata_ovr	0x0391
_IOCAPbits
_IOCAP
	res	1
UD_abs_pic16f1713_392	udata_ovr	0x0392
_IOCANbits
_IOCAN
	res	1
UD_abs_pic16f1713_393	udata_ovr	0x0393
_IOCAFbits
_IOCAF
	res	1
UD_abs_pic16f1713_394	udata_ovr	0x0394
_IOCBPbits
_IOCBP
	res	1
UD_abs_pic16f1713_395	udata_ovr	0x0395
_IOCBNbits
_IOCBN
	res	1
UD_abs_pic16f1713_396	udata_ovr	0x0396
_IOCBFbits
_IOCBF
	res	1
UD_abs_pic16f1713_397	udata_ovr	0x0397
_IOCCPbits
_IOCCP
	res	1
UD_abs_pic16f1713_398	udata_ovr	0x0398
_IOCCNbits
_IOCCN
	res	1
UD_abs_pic16f1713_399	udata_ovr	0x0399
_IOCCFbits
_IOCCF
	res	1
UD_abs_pic16f1713_39d	udata_ovr	0x039d
_IOCEPbits
_IOCEP
	res	1
UD_abs_pic16f1713_39e	udata_ovr	0x039e
_IOCENbits
_IOCEN
	res	1
UD_abs_pic16f1713_39f	udata_ovr	0x039f
_IOCEFbits
_IOCEF
	res	1
UD_abs_pic16f1713_415	udata_ovr	0x0415
_TMR4
	res	1
UD_abs_pic16f1713_416	udata_ovr	0x0416
_PR4
	res	1
UD_abs_pic16f1713_417	udata_ovr	0x0417
_T4CONbits
_T4CON
	res	1
UD_abs_pic16f1713_41c	udata_ovr	0x041c
_TMR6
	res	1
UD_abs_pic16f1713_41d	udata_ovr	0x041d
_PR6
	res	1
UD_abs_pic16f1713_41e	udata_ovr	0x041e
_T6CONbits
_T6CON
	res	1
UD_abs_pic16f1713_498	udata_ovr	0x0498
_NCO1ACCLbits
_NCO1ACC
_NCO1ACCL
	res	1
UD_abs_pic16f1713_499	udata_ovr	0x0499
_NCO1ACCHbits
_NCO1ACCH
	res	1
UD_abs_pic16f1713_49a	udata_ovr	0x049a
_NCO1ACCUbits
_NCO1ACCU
	res	1
UD_abs_pic16f1713_49b	udata_ovr	0x049b
_NCO1INCLbits
_NCO1INC
_NCO1INCL
	res	1
UD_abs_pic16f1713_49c	udata_ovr	0x049c
_NCO1INCHbits
_NCO1INCH
	res	1
UD_abs_pic16f1713_49d	udata_ovr	0x049d
_NCO1INCUbits
_NCO1INCU
	res	1
UD_abs_pic16f1713_49e	udata_ovr	0x049e
_NCO1CONbits
_NCO1CON
	res	1
UD_abs_pic16f1713_49f	udata_ovr	0x049f
_NCO1CLKbits
_NCO1CLK
	res	1
UD_abs_pic16f1713_511	udata_ovr	0x0511
_OPA1CONbits
_OPA1CON
	res	1
UD_abs_pic16f1713_515	udata_ovr	0x0515
_OPA2CONbits
_OPA2CON
	res	1
UD_abs_pic16f1713_617	udata_ovr	0x0617
_PWM3DCLbits
_PWM3DCL
	res	1
UD_abs_pic16f1713_618	udata_ovr	0x0618
_PWM3DCHbits
_PWM3DCH
	res	1
UD_abs_pic16f1713_619	udata_ovr	0x0619
_PWM3CONbits
_PWM3CON
	res	1
UD_abs_pic16f1713_61a	udata_ovr	0x061a
_PWM4DCLbits
_PWM4DCL
	res	1
UD_abs_pic16f1713_61b	udata_ovr	0x061b
_PWM4DCHbits
_PWM4DCH
	res	1
UD_abs_pic16f1713_61c	udata_ovr	0x061c
_PWM4CONbits
_PWM4CON
	res	1
UD_abs_pic16f1713_691	udata_ovr	0x0691
_COG1PHRbits
_COG1PHR
	res	1
UD_abs_pic16f1713_692	udata_ovr	0x0692
_COG1PHFbits
_COG1PHF
	res	1
UD_abs_pic16f1713_693	udata_ovr	0x0693
_COG1BLKRbits
_COG1BLKR
	res	1
UD_abs_pic16f1713_694	udata_ovr	0x0694
_COG1BLKFbits
_COG1BLKF
	res	1
UD_abs_pic16f1713_695	udata_ovr	0x0695
_COG1DBRbits
_COG1DBR
	res	1
UD_abs_pic16f1713_696	udata_ovr	0x0696
_COG1DBFbits
_COG1DBF
	res	1
UD_abs_pic16f1713_697	udata_ovr	0x0697
_COG1CON0bits
_COG1CON0
	res	1
UD_abs_pic16f1713_698	udata_ovr	0x0698
_COG1CON1bits
_COG1CON1
	res	1
UD_abs_pic16f1713_699	udata_ovr	0x0699
_COG1RISbits
_COG1RIS
	res	1
UD_abs_pic16f1713_69a	udata_ovr	0x069a
_COG1RSIMbits
_COG1RSIM
	res	1
UD_abs_pic16f1713_69b	udata_ovr	0x069b
_COG1FISbits
_COG1FIS
	res	1
UD_abs_pic16f1713_69c	udata_ovr	0x069c
_COG1FSIMbits
_COG1FSIM
	res	1
UD_abs_pic16f1713_69d	udata_ovr	0x069d
_COG1ASD0bits
_COG1ASD0
	res	1
UD_abs_pic16f1713_69e	udata_ovr	0x069e
_COG1ASD1bits
_COG1ASD1
	res	1
UD_abs_pic16f1713_69f	udata_ovr	0x069f
_COG1STRbits
_COG1STR
	res	1
UD_abs_pic16f1713_e0f	udata_ovr	0x0e0f
_PPSLOCKbits
_PPSLOCK
	res	1
UD_abs_pic16f1713_e10	udata_ovr	0x0e10
_INTPPS
	res	1
UD_abs_pic16f1713_e11	udata_ovr	0x0e11
_T0CKIPPS
	res	1
UD_abs_pic16f1713_e12	udata_ovr	0x0e12
_T1CKIPPS
	res	1
UD_abs_pic16f1713_e13	udata_ovr	0x0e13
_T1GPPS
	res	1
UD_abs_pic16f1713_e14	udata_ovr	0x0e14
_CCP1PPS
	res	1
UD_abs_pic16f1713_e15	udata_ovr	0x0e15
_CCP2PPS
	res	1
UD_abs_pic16f1713_e17	udata_ovr	0x0e17
_COGINPPS
	res	1
UD_abs_pic16f1713_e20	udata_ovr	0x0e20
_SSPCLKPPS
	res	1
UD_abs_pic16f1713_e21	udata_ovr	0x0e21
_SSPDATPPS
	res	1
UD_abs_pic16f1713_e22	udata_ovr	0x0e22
_SSPSSPPS
	res	1
UD_abs_pic16f1713_e24	udata_ovr	0x0e24
_RXPPS
	res	1
UD_abs_pic16f1713_e25	udata_ovr	0x0e25
_CKPPS
	res	1
UD_abs_pic16f1713_e28	udata_ovr	0x0e28
_CLCIN0PPS
	res	1
UD_abs_pic16f1713_e29	udata_ovr	0x0e29
_CLCIN1PPS
	res	1
UD_abs_pic16f1713_e2a	udata_ovr	0x0e2a
_CLCIN2PPS
	res	1
UD_abs_pic16f1713_e2b	udata_ovr	0x0e2b
_CLCIN3PPS
	res	1
UD_abs_pic16f1713_e90	udata_ovr	0x0e90
_RA0PPS
	res	1
UD_abs_pic16f1713_e91	udata_ovr	0x0e91
_RA1PPS
	res	1
UD_abs_pic16f1713_e92	udata_ovr	0x0e92
_RA2PPS
	res	1
UD_abs_pic16f1713_e93	udata_ovr	0x0e93
_RA3PPS
	res	1
UD_abs_pic16f1713_e94	udata_ovr	0x0e94
_RA4PPS
	res	1
UD_abs_pic16f1713_e95	udata_ovr	0x0e95
_RA5PPS
	res	1
UD_abs_pic16f1713_e96	udata_ovr	0x0e96
_RA6PPS
	res	1
UD_abs_pic16f1713_e97	udata_ovr	0x0e97
_RA7PPS
	res	1
UD_abs_pic16f1713_e98	udata_ovr	0x0e98
_RB0PPS
	res	1
UD_abs_pic16f1713_e99	udata_ovr	0x0e99
_RB1PPS
	res	1
UD_abs_pic16f1713_e9a	udata_ovr	0x0e9a
_RB2PPS
	res	1
UD_abs_pic16f1713_e9b	udata_ovr	0x0e9b
_RB3PPS
	res	1
UD_abs_pic16f1713_e9c	udata_ovr	0x0e9c
_RB4PPS
	res	1
UD_abs_pic16f1713_e9d	udata_ovr	0x0e9d
_RB5PPS
	res	1
UD_abs_pic16f1713_e9e	udata_ovr	0x0e9e
_RB6PPS
	res	1
UD_abs_pic16f1713_e9f	udata_ovr	0x0e9f
_RB7PPS
	res	1
UD_abs_pic16f1713_ea0	udata_ovr	0x0ea0
_RC0PPS
	res	1
UD_abs_pic16f1713_ea1	udata_ovr	0x0ea1
_RC1PPS
	res	1
UD_abs_pic16f1713_ea2	udata_ovr	0x0ea2
_RC2PPS
	res	1
UD_abs_pic16f1713_ea3	udata_ovr	0x0ea3
_RC3PPS
	res	1
UD_abs_pic16f1713_ea4	udata_ovr	0x0ea4
_RC4PPS
	res	1
UD_abs_pic16f1713_ea5	udata_ovr	0x0ea5
_RC5PPS
	res	1
UD_abs_pic16f1713_ea6	udata_ovr	0x0ea6
_RC6PPS
	res	1
UD_abs_pic16f1713_ea7	udata_ovr	0x0ea7
_RC7PPS
	res	1
UD_abs_pic16f1713_f0f	udata_ovr	0x0f0f
_CLCDATAbits
_CLCDATA
	res	1
UD_abs_pic16f1713_f10	udata_ovr	0x0f10
_CLC1CONbits
_CLC1CON
	res	1
UD_abs_pic16f1713_f11	udata_ovr	0x0f11
_CLC1POLbits
_CLC1POL
	res	1
UD_abs_pic16f1713_f12	udata_ovr	0x0f12
_CLC1SEL0bits
_CLC1SEL0
	res	1
UD_abs_pic16f1713_f13	udata_ovr	0x0f13
_CLC1SEL1bits
_CLC1SEL1
	res	1
UD_abs_pic16f1713_f14	udata_ovr	0x0f14
_CLC1SEL2bits
_CLC1SEL2
	res	1
UD_abs_pic16f1713_f15	udata_ovr	0x0f15
_CLC1SEL3bits
_CLC1SEL3
	res	1
UD_abs_pic16f1713_f16	udata_ovr	0x0f16
_CLC1GLS0bits
_CLC1GLS0
	res	1
UD_abs_pic16f1713_f17	udata_ovr	0x0f17
_CLC1GLS1bits
_CLC1GLS1
	res	1
UD_abs_pic16f1713_f18	udata_ovr	0x0f18
_CLC1GLS2bits
_CLC1GLS2
	res	1
UD_abs_pic16f1713_f19	udata_ovr	0x0f19
_CLC1GLS3bits
_CLC1GLS3
	res	1
UD_abs_pic16f1713_f1a	udata_ovr	0x0f1a
_CLC2CONbits
_CLC2CON
	res	1
UD_abs_pic16f1713_f1b	udata_ovr	0x0f1b
_CLC2POLbits
_CLC2POL
	res	1
UD_abs_pic16f1713_f1c	udata_ovr	0x0f1c
_CLC2SEL0bits
_CLC2SEL0
	res	1
UD_abs_pic16f1713_f1d	udata_ovr	0x0f1d
_CLC2SEL1bits
_CLC2SEL1
	res	1
UD_abs_pic16f1713_f1e	udata_ovr	0x0f1e
_CLC2SEL2bits
_CLC2SEL2
	res	1
UD_abs_pic16f1713_f1f	udata_ovr	0x0f1f
_CLC2SEL3bits
_CLC2SEL3
	res	1
UD_abs_pic16f1713_f20	udata_ovr	0x0f20
_CLC2GLS0bits
_CLC2GLS0
	res	1
UD_abs_pic16f1713_f21	udata_ovr	0x0f21
_CLC2GLS1bits
_CLC2GLS1
	res	1
UD_abs_pic16f1713_f22	udata_ovr	0x0f22
_CLC2GLS2bits
_CLC2GLS2
	res	1
UD_abs_pic16f1713_f23	udata_ovr	0x0f23
_CLC2GLS3bits
_CLC2GLS3
	res	1
UD_abs_pic16f1713_f24	udata_ovr	0x0f24
_CLC3CONbits
_CLC3CON
	res	1
UD_abs_pic16f1713_f25	udata_ovr	0x0f25
_CLC3POLbits
_CLC3POL
	res	1
UD_abs_pic16f1713_f26	udata_ovr	0x0f26
_CLC3SEL0bits
_CLC3SEL0
	res	1
UD_abs_pic16f1713_f27	udata_ovr	0x0f27
_CLC3SEL1bits
_CLC3SEL1
	res	1
UD_abs_pic16f1713_f28	udata_ovr	0x0f28
_CLC3SEL2bits
_CLC3SEL2
	res	1
UD_abs_pic16f1713_f29	udata_ovr	0x0f29
_CLC3SEL3bits
_CLC3SEL3
	res	1
UD_abs_pic16f1713_f2a	udata_ovr	0x0f2a
_CLC3GLS0bits
_CLC3GLS0
	res	1
UD_abs_pic16f1713_f2b	udata_ovr	0x0f2b
_CLC3GLS1bits
_CLC3GLS1
	res	1
UD_abs_pic16f1713_f2c	udata_ovr	0x0f2c
_CLC3GLS2bits
_CLC3GLS2
	res	1
UD_abs_pic16f1713_f2d	udata_ovr	0x0f2d
_CLC3GLS3bits
_CLC3GLS3
	res	1
UD_abs_pic16f1713_f2e	udata_ovr	0x0f2e
_CLC4CONbits
_CLC4CON
	res	1
UD_abs_pic16f1713_f2f	udata_ovr	0x0f2f
_CLC4POLbits
_CLC4POL
	res	1
UD_abs_pic16f1713_f30	udata_ovr	0x0f30
_CLC4SEL0bits
_CLC4SEL0
	res	1
UD_abs_pic16f1713_f31	udata_ovr	0x0f31
_CLC4SEL1bits
_CLC4SEL1
	res	1
UD_abs_pic16f1713_f32	udata_ovr	0x0f32
_CLC4SEL2bits
_CLC4SEL2
	res	1
UD_abs_pic16f1713_f33	udata_ovr	0x0f33
_CLC4SEL3bits
_CLC4SEL3
	res	1
UD_abs_pic16f1713_f34	udata_ovr	0x0f34
_CLC4GLS0bits
_CLC4GLS0
	res	1
UD_abs_pic16f1713_f35	udata_ovr	0x0f35
_CLC4GLS1bits
_CLC4GLS1
	res	1
UD_abs_pic16f1713_f36	udata_ovr	0x0f36
_CLC4GLS2bits
_CLC4GLS2
	res	1
UD_abs_pic16f1713_f37	udata_ovr	0x0f37
_CLC4GLS3bits
_CLC4GLS3
	res	1
UD_abs_pic16f1713_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic16f1713_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic16f1713_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic16f1713_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic16f1713_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
	res	1
UD_abs_pic16f1713_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic16f1713_fea	udata_ovr	0x0fea
_FSR1L_SHAD
	res	1
UD_abs_pic16f1713_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic16f1713_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic16f1713_fee	udata_ovr	0x0fee
_TOSL
	res	1
UD_abs_pic16f1713_fef	udata_ovr	0x0fef
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
code_pic16f1713	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
