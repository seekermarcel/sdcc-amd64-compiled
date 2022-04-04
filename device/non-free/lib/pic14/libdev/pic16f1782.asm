;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:39 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f1782.c"
	list	p=16f1782
	radix dec
	include "p16f1782.inc"
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
	global	_PIR4bits
	global	_T1CONbits
	global	_T1GCONbits
	global	_T2CONbits
	global	_TRISAbits
	global	_TRISBbits
	global	_TRISCbits
	global	_TRISEbits
	global	_PIE1bits
	global	_PIE2bits
	global	_PIE4bits
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
	global	_DACCON0bits
	global	_DACCON1bits
	global	_APFCONbits
	global	_APFCON0bits
	global	_CM3CON0bits
	global	_CM3CON1bits
	global	_ANSELAbits
	global	_ANSELBbits
	global	_EECON1bits
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
	global	_SSP1STATbits
	global	_SSPSTATbits
	global	_SSP1CONbits
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
	global	_CCP2CONbits
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
	global	_OPA1CONbits
	global	_OPA2CONbits
	global	_CLKRCONbits
	global	_PSMC1CONbits
	global	_PSMC1MDLbits
	global	_PSMC1SYNCbits
	global	_PSMC1CLKbits
	global	_PSMC1OENbits
	global	_PSMC1POLbits
	global	_PSMC1BLNKbits
	global	_PSMC1REBSbits
	global	_PSMC1FEBSbits
	global	_PSMC1PHSbits
	global	_PSMC1DCSbits
	global	_PSMC1PRSbits
	global	_PSMC1ASDCbits
	global	_PSMC1ASDLbits
	global	_PSMC1ASDSbits
	global	_PSMC1INTbits
	global	_PSMC1PHLbits
	global	_PSMC1PHHbits
	global	_PSMC1DCLbits
	global	_PSMC1DCHbits
	global	_PSMC1PRLbits
	global	_PSMC1PRHbits
	global	_PSMC1TMRLbits
	global	_PSMC1TMRHbits
	global	_PSMC1DBRbits
	global	_PSMC1DBFbits
	global	_PSMC1BLKRbits
	global	_PSMC1BLKFbits
	global	_PSMC1FFAbits
	global	_PSMC1STR0bits
	global	_PSMC1STR1bits
	global	_PSMC2CONbits
	global	_PSMC2MDLbits
	global	_PSMC2SYNCbits
	global	_PSMC2CLKbits
	global	_PSMC2OENbits
	global	_PSMC2POLbits
	global	_PSMC2BLNKbits
	global	_PSMC2REBSbits
	global	_PSMC2FEBSbits
	global	_PSMC2PHSbits
	global	_PSMC2DCSbits
	global	_PSMC2PRSbits
	global	_PSMC2ASDCbits
	global	_PSMC2ASDLbits
	global	_PSMC2ASDSbits
	global	_PSMC2INTbits
	global	_PSMC2PHLbits
	global	_PSMC2PHHbits
	global	_PSMC2DCLbits
	global	_PSMC2DCHbits
	global	_PSMC2PRLbits
	global	_PSMC2PRHbits
	global	_PSMC2TMRLbits
	global	_PSMC2TMRHbits
	global	_PSMC2DBRbits
	global	_PSMC2DBFbits
	global	_PSMC2BLKRbits
	global	_PSMC2BLKFbits
	global	_PSMC2FFAbits
	global	_PSMC2STR0bits
	global	_PSMC2STR1bits
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
	global	_PIR4
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
	global	_PIE4
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
	global	_DACCON0
	global	_DACCON1
	global	_APFCON
	global	_APFCON0
	global	_CM3CON0
	global	_CM3CON1
	global	_ANSELA
	global	_ANSELB
	global	_EEADR
	global	_EEADRL
	global	_EEADRH
	global	_EEDAT
	global	_EEDATL
	global	_EEDATH
	global	_EECON1
	global	_EECON2
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
	global	_CCPR2
	global	_CCPR2L
	global	_CCPR2H
	global	_CCP2CON
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
	global	_OPA1CON
	global	_OPA2CON
	global	_CLKRCON
	global	_PSMC1CON
	global	_PSMC1MDL
	global	_PSMC1SYNC
	global	_PSMC1CLK
	global	_PSMC1OEN
	global	_PSMC1POL
	global	_PSMC1BLNK
	global	_PSMC1REBS
	global	_PSMC1FEBS
	global	_PSMC1PHS
	global	_PSMC1DCS
	global	_PSMC1PRS
	global	_PSMC1ASDC
	global	_PSMC1ASDL
	global	_PSMC1ASDS
	global	_PSMC1INT
	global	_PSMC1PH
	global	_PSMC1PHL
	global	_PSMC1PHH
	global	_PSMC1DC
	global	_PSMC1DCL
	global	_PSMC1DCH
	global	_PSMC1PR
	global	_PSMC1PRL
	global	_PSMC1PRH
	global	_PSMC1TMR
	global	_PSMC1TMRL
	global	_PSMC1TMRH
	global	_PSMC1DBR
	global	_PSMC1DBF
	global	_PSMC1BLKR
	global	_PSMC1BLKF
	global	_PSMC1FFA
	global	_PSMC1STR0
	global	_PSMC1STR1
	global	_PSMC2CON
	global	_PSMC2MDL
	global	_PSMC2SYNC
	global	_PSMC2CLK
	global	_PSMC2OEN
	global	_PSMC2POL
	global	_PSMC2BLNK
	global	_PSMC2REBS
	global	_PSMC2FEBS
	global	_PSMC2PHS
	global	_PSMC2DCS
	global	_PSMC2PRS
	global	_PSMC2ASDC
	global	_PSMC2ASDL
	global	_PSMC2ASDS
	global	_PSMC2INT
	global	_PSMC2PH
	global	_PSMC2PHL
	global	_PSMC2PHH
	global	_PSMC2DC
	global	_PSMC2DCL
	global	_PSMC2DCH
	global	_PSMC2PR
	global	_PSMC2PRL
	global	_PSMC2PRH
	global	_PSMC2TMR
	global	_PSMC2TMRL
	global	_PSMC2TMRH
	global	_PSMC2DBR
	global	_PSMC2DBF
	global	_PSMC2BLKR
	global	_PSMC2BLKF
	global	_PSMC2FFA
	global	_PSMC2STR0
	global	_PSMC2STR1
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
UD_abs_pic16f1782_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic16f1782_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic16f1782_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f1782_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f1782_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic16f1782_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic16f1782_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic16f1782_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic16f1782_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic16f1782_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic16f1782_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f1782_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f1782_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f1782_d	udata_ovr	0x000d
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f1782_e	udata_ovr	0x000e
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f1782_10	udata_ovr	0x0010
_PORTEbits
_PORTE
	res	1
UD_abs_pic16f1782_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f1782_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f1782_14	udata_ovr	0x0014
_PIR4bits
_PIR4
	res	1
UD_abs_pic16f1782_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic16f1782_16	udata_ovr	0x0016
_TMR1
_TMR1L
	res	1
UD_abs_pic16f1782_17	udata_ovr	0x0017
_TMR1H
	res	1
UD_abs_pic16f1782_18	udata_ovr	0x0018
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f1782_19	udata_ovr	0x0019
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic16f1782_1a	udata_ovr	0x001a
_TMR2
	res	1
UD_abs_pic16f1782_1b	udata_ovr	0x001b
_PR2
	res	1
UD_abs_pic16f1782_1c	udata_ovr	0x001c
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f1782_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f1782_8d	udata_ovr	0x008d
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f1782_8e	udata_ovr	0x008e
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f1782_90	udata_ovr	0x0090
_TRISEbits
_TRISE
	res	1
UD_abs_pic16f1782_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f1782_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f1782_94	udata_ovr	0x0094
_PIE4bits
_PIE4
	res	1
UD_abs_pic16f1782_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f1782_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic16f1782_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f1782_98	udata_ovr	0x0098
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16f1782_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f1782_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic16f1782_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic16f1782_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic16f1782_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f1782_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f1782_9f	udata_ovr	0x009f
_ADCON2bits
_ADCON2
	res	1
UD_abs_pic16f1782_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic16f1782_10d	udata_ovr	0x010d
_LATBbits
_LATB
	res	1
UD_abs_pic16f1782_10e	udata_ovr	0x010e
_LATCbits
_LATC
	res	1
UD_abs_pic16f1782_111	udata_ovr	0x0111
_CM1CON0bits
_CM1CON0
	res	1
UD_abs_pic16f1782_112	udata_ovr	0x0112
_CM1CON1bits
_CM1CON1
	res	1
UD_abs_pic16f1782_113	udata_ovr	0x0113
_CM2CON0bits
_CM2CON0
	res	1
UD_abs_pic16f1782_114	udata_ovr	0x0114
_CM2CON1bits
_CM2CON1
	res	1
UD_abs_pic16f1782_115	udata_ovr	0x0115
_CMOUTbits
_CMOUT
	res	1
UD_abs_pic16f1782_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic16f1782_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic16f1782_118	udata_ovr	0x0118
_DACCON0bits
_DACCON0
	res	1
UD_abs_pic16f1782_119	udata_ovr	0x0119
_DACCON1bits
_DACCON1
	res	1
UD_abs_pic16f1782_11d	udata_ovr	0x011d
_APFCONbits
_APFCON0bits
_APFCON
_APFCON0
	res	1
UD_abs_pic16f1782_11e	udata_ovr	0x011e
_CM3CON0bits
_CM3CON0
	res	1
UD_abs_pic16f1782_11f	udata_ovr	0x011f
_CM3CON1bits
_CM3CON1
	res	1
UD_abs_pic16f1782_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic16f1782_18d	udata_ovr	0x018d
_ANSELBbits
_ANSELB
	res	1
UD_abs_pic16f1782_191	udata_ovr	0x0191
_EEADR
_EEADRL
	res	1
UD_abs_pic16f1782_192	udata_ovr	0x0192
_EEADRH
	res	1
UD_abs_pic16f1782_193	udata_ovr	0x0193
_EEDAT
_EEDATL
	res	1
UD_abs_pic16f1782_194	udata_ovr	0x0194
_EEDATH
	res	1
UD_abs_pic16f1782_195	udata_ovr	0x0195
_EECON1bits
_EECON1
	res	1
UD_abs_pic16f1782_196	udata_ovr	0x0196
_EECON2
	res	1
UD_abs_pic16f1782_197	udata_ovr	0x0197
_VREGCONbits
_VREGCON
	res	1
UD_abs_pic16f1782_199	udata_ovr	0x0199
_RC1REG
_RCREG
_RCREG1
	res	1
UD_abs_pic16f1782_19a	udata_ovr	0x019a
_TX1REG
_TXREG
_TXREG1
	res	1
UD_abs_pic16f1782_19b	udata_ovr	0x019b
_SP1BRG
_SP1BRGL
_SPBRG
_SPBRG1
_SPBRGL
	res	1
UD_abs_pic16f1782_19c	udata_ovr	0x019c
_SP1BRGH
_SPBRGH
_SPBRGH1
	res	1
UD_abs_pic16f1782_19d	udata_ovr	0x019d
_RC1STAbits
_RCSTAbits
_RCSTA1bits
_RC1STA
_RCSTA
_RCSTA1
	res	1
UD_abs_pic16f1782_19e	udata_ovr	0x019e
_TX1STAbits
_TXSTAbits
_TXSTA1bits
_TX1STA
_TXSTA
_TXSTA1
	res	1
UD_abs_pic16f1782_19f	udata_ovr	0x019f
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
UD_abs_pic16f1782_20c	udata_ovr	0x020c
_WPUAbits
_WPUA
	res	1
UD_abs_pic16f1782_20d	udata_ovr	0x020d
_WPUBbits
_WPUB
	res	1
UD_abs_pic16f1782_20e	udata_ovr	0x020e
_WPUCbits
_WPUC
	res	1
UD_abs_pic16f1782_210	udata_ovr	0x0210
_WPUEbits
_WPUE
	res	1
UD_abs_pic16f1782_211	udata_ovr	0x0211
_SSP1BUF
_SSPBUF
	res	1
UD_abs_pic16f1782_212	udata_ovr	0x0212
_SSP1ADD
_SSPADD
	res	1
UD_abs_pic16f1782_213	udata_ovr	0x0213
_SSP1MSK
_SSPMSK
	res	1
UD_abs_pic16f1782_214	udata_ovr	0x0214
_SSP1STATbits
_SSPSTATbits
_SSP1STAT
_SSPSTAT
	res	1
UD_abs_pic16f1782_215	udata_ovr	0x0215
_SSP1CONbits
_SSPCONbits
_SSPCON1bits
_SSP1CON
_SSPCON
_SSPCON1
	res	1
UD_abs_pic16f1782_216	udata_ovr	0x0216
_SSP1CON2bits
_SSPCON2bits
_SSP1CON2
_SSPCON2
	res	1
UD_abs_pic16f1782_217	udata_ovr	0x0217
_SSP1CON3bits
_SSPCON3bits
_SSP1CON3
_SSPCON3
	res	1
UD_abs_pic16f1782_28c	udata_ovr	0x028c
_ODCONAbits
_ODCONA
	res	1
UD_abs_pic16f1782_28d	udata_ovr	0x028d
_ODCONBbits
_ODCONB
	res	1
UD_abs_pic16f1782_28e	udata_ovr	0x028e
_ODCONCbits
_ODCONC
	res	1
UD_abs_pic16f1782_291	udata_ovr	0x0291
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f1782_292	udata_ovr	0x0292
_CCPR1H
	res	1
UD_abs_pic16f1782_293	udata_ovr	0x0293
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16f1782_298	udata_ovr	0x0298
_CCPR2
_CCPR2L
	res	1
UD_abs_pic16f1782_299	udata_ovr	0x0299
_CCPR2H
	res	1
UD_abs_pic16f1782_29a	udata_ovr	0x029a
_CCP2CONbits
_CCP2CON
	res	1
UD_abs_pic16f1782_30c	udata_ovr	0x030c
_SLRCONAbits
_SLRCONA
	res	1
UD_abs_pic16f1782_30d	udata_ovr	0x030d
_SLRCONBbits
_SLRCONB
	res	1
UD_abs_pic16f1782_30e	udata_ovr	0x030e
_SLRCONCbits
_SLRCONC
	res	1
UD_abs_pic16f1782_38c	udata_ovr	0x038c
_INLVLAbits
_INLVLA
	res	1
UD_abs_pic16f1782_38d	udata_ovr	0x038d
_INLVLBbits
_INLVLB
	res	1
UD_abs_pic16f1782_38e	udata_ovr	0x038e
_INLVLCbits
_INLVLC
	res	1
UD_abs_pic16f1782_390	udata_ovr	0x0390
_INLVLEbits
_INLVLE
	res	1
UD_abs_pic16f1782_391	udata_ovr	0x0391
_IOCAPbits
_IOCAP
	res	1
UD_abs_pic16f1782_392	udata_ovr	0x0392
_IOCANbits
_IOCAN
	res	1
UD_abs_pic16f1782_393	udata_ovr	0x0393
_IOCAFbits
_IOCAF
	res	1
UD_abs_pic16f1782_394	udata_ovr	0x0394
_IOCBPbits
_IOCBP
	res	1
UD_abs_pic16f1782_395	udata_ovr	0x0395
_IOCBNbits
_IOCBN
	res	1
UD_abs_pic16f1782_396	udata_ovr	0x0396
_IOCBFbits
_IOCBF
	res	1
UD_abs_pic16f1782_397	udata_ovr	0x0397
_IOCCPbits
_IOCCP
	res	1
UD_abs_pic16f1782_398	udata_ovr	0x0398
_IOCCNbits
_IOCCN
	res	1
UD_abs_pic16f1782_399	udata_ovr	0x0399
_IOCCFbits
_IOCCF
	res	1
UD_abs_pic16f1782_39d	udata_ovr	0x039d
_IOCEPbits
_IOCEP
	res	1
UD_abs_pic16f1782_39e	udata_ovr	0x039e
_IOCENbits
_IOCEN
	res	1
UD_abs_pic16f1782_39f	udata_ovr	0x039f
_IOCEFbits
_IOCEF
	res	1
UD_abs_pic16f1782_511	udata_ovr	0x0511
_OPA1CONbits
_OPA1CON
	res	1
UD_abs_pic16f1782_513	udata_ovr	0x0513
_OPA2CONbits
_OPA2CON
	res	1
UD_abs_pic16f1782_51a	udata_ovr	0x051a
_CLKRCONbits
_CLKRCON
	res	1
UD_abs_pic16f1782_811	udata_ovr	0x0811
_PSMC1CONbits
_PSMC1CON
	res	1
UD_abs_pic16f1782_812	udata_ovr	0x0812
_PSMC1MDLbits
_PSMC1MDL
	res	1
UD_abs_pic16f1782_813	udata_ovr	0x0813
_PSMC1SYNCbits
_PSMC1SYNC
	res	1
UD_abs_pic16f1782_814	udata_ovr	0x0814
_PSMC1CLKbits
_PSMC1CLK
	res	1
UD_abs_pic16f1782_815	udata_ovr	0x0815
_PSMC1OENbits
_PSMC1OEN
	res	1
UD_abs_pic16f1782_816	udata_ovr	0x0816
_PSMC1POLbits
_PSMC1POL
	res	1
UD_abs_pic16f1782_817	udata_ovr	0x0817
_PSMC1BLNKbits
_PSMC1BLNK
	res	1
UD_abs_pic16f1782_818	udata_ovr	0x0818
_PSMC1REBSbits
_PSMC1REBS
	res	1
UD_abs_pic16f1782_819	udata_ovr	0x0819
_PSMC1FEBSbits
_PSMC1FEBS
	res	1
UD_abs_pic16f1782_81a	udata_ovr	0x081a
_PSMC1PHSbits
_PSMC1PHS
	res	1
UD_abs_pic16f1782_81b	udata_ovr	0x081b
_PSMC1DCSbits
_PSMC1DCS
	res	1
UD_abs_pic16f1782_81c	udata_ovr	0x081c
_PSMC1PRSbits
_PSMC1PRS
	res	1
UD_abs_pic16f1782_81d	udata_ovr	0x081d
_PSMC1ASDCbits
_PSMC1ASDC
	res	1
UD_abs_pic16f1782_81e	udata_ovr	0x081e
_PSMC1ASDLbits
_PSMC1ASDL
	res	1
UD_abs_pic16f1782_81f	udata_ovr	0x081f
_PSMC1ASDSbits
_PSMC1ASDS
	res	1
UD_abs_pic16f1782_820	udata_ovr	0x0820
_PSMC1INTbits
_PSMC1INT
	res	1
UD_abs_pic16f1782_821	udata_ovr	0x0821
_PSMC1PHLbits
_PSMC1PH
_PSMC1PHL
	res	1
UD_abs_pic16f1782_822	udata_ovr	0x0822
_PSMC1PHHbits
_PSMC1PHH
	res	1
UD_abs_pic16f1782_823	udata_ovr	0x0823
_PSMC1DCLbits
_PSMC1DC
_PSMC1DCL
	res	1
UD_abs_pic16f1782_824	udata_ovr	0x0824
_PSMC1DCHbits
_PSMC1DCH
	res	1
UD_abs_pic16f1782_825	udata_ovr	0x0825
_PSMC1PRLbits
_PSMC1PR
_PSMC1PRL
	res	1
UD_abs_pic16f1782_826	udata_ovr	0x0826
_PSMC1PRHbits
_PSMC1PRH
	res	1
UD_abs_pic16f1782_827	udata_ovr	0x0827
_PSMC1TMRLbits
_PSMC1TMR
_PSMC1TMRL
	res	1
UD_abs_pic16f1782_828	udata_ovr	0x0828
_PSMC1TMRHbits
_PSMC1TMRH
	res	1
UD_abs_pic16f1782_829	udata_ovr	0x0829
_PSMC1DBRbits
_PSMC1DBR
	res	1
UD_abs_pic16f1782_82a	udata_ovr	0x082a
_PSMC1DBFbits
_PSMC1DBF
	res	1
UD_abs_pic16f1782_82b	udata_ovr	0x082b
_PSMC1BLKRbits
_PSMC1BLKR
	res	1
UD_abs_pic16f1782_82c	udata_ovr	0x082c
_PSMC1BLKFbits
_PSMC1BLKF
	res	1
UD_abs_pic16f1782_82d	udata_ovr	0x082d
_PSMC1FFAbits
_PSMC1FFA
	res	1
UD_abs_pic16f1782_82e	udata_ovr	0x082e
_PSMC1STR0bits
_PSMC1STR0
	res	1
UD_abs_pic16f1782_82f	udata_ovr	0x082f
_PSMC1STR1bits
_PSMC1STR1
	res	1
UD_abs_pic16f1782_831	udata_ovr	0x0831
_PSMC2CONbits
_PSMC2CON
	res	1
UD_abs_pic16f1782_832	udata_ovr	0x0832
_PSMC2MDLbits
_PSMC2MDL
	res	1
UD_abs_pic16f1782_833	udata_ovr	0x0833
_PSMC2SYNCbits
_PSMC2SYNC
	res	1
UD_abs_pic16f1782_834	udata_ovr	0x0834
_PSMC2CLKbits
_PSMC2CLK
	res	1
UD_abs_pic16f1782_835	udata_ovr	0x0835
_PSMC2OENbits
_PSMC2OEN
	res	1
UD_abs_pic16f1782_836	udata_ovr	0x0836
_PSMC2POLbits
_PSMC2POL
	res	1
UD_abs_pic16f1782_837	udata_ovr	0x0837
_PSMC2BLNKbits
_PSMC2BLNK
	res	1
UD_abs_pic16f1782_838	udata_ovr	0x0838
_PSMC2REBSbits
_PSMC2REBS
	res	1
UD_abs_pic16f1782_839	udata_ovr	0x0839
_PSMC2FEBSbits
_PSMC2FEBS
	res	1
UD_abs_pic16f1782_83a	udata_ovr	0x083a
_PSMC2PHSbits
_PSMC2PHS
	res	1
UD_abs_pic16f1782_83b	udata_ovr	0x083b
_PSMC2DCSbits
_PSMC2DCS
	res	1
UD_abs_pic16f1782_83c	udata_ovr	0x083c
_PSMC2PRSbits
_PSMC2PRS
	res	1
UD_abs_pic16f1782_83d	udata_ovr	0x083d
_PSMC2ASDCbits
_PSMC2ASDC
	res	1
UD_abs_pic16f1782_83e	udata_ovr	0x083e
_PSMC2ASDLbits
_PSMC2ASDL
	res	1
UD_abs_pic16f1782_83f	udata_ovr	0x083f
_PSMC2ASDSbits
_PSMC2ASDS
	res	1
UD_abs_pic16f1782_840	udata_ovr	0x0840
_PSMC2INTbits
_PSMC2INT
	res	1
UD_abs_pic16f1782_841	udata_ovr	0x0841
_PSMC2PHLbits
_PSMC2PH
_PSMC2PHL
	res	1
UD_abs_pic16f1782_842	udata_ovr	0x0842
_PSMC2PHHbits
_PSMC2PHH
	res	1
UD_abs_pic16f1782_843	udata_ovr	0x0843
_PSMC2DCLbits
_PSMC2DC
_PSMC2DCL
	res	1
UD_abs_pic16f1782_844	udata_ovr	0x0844
_PSMC2DCHbits
_PSMC2DCH
	res	1
UD_abs_pic16f1782_845	udata_ovr	0x0845
_PSMC2PRLbits
_PSMC2PR
_PSMC2PRL
	res	1
UD_abs_pic16f1782_846	udata_ovr	0x0846
_PSMC2PRHbits
_PSMC2PRH
	res	1
UD_abs_pic16f1782_847	udata_ovr	0x0847
_PSMC2TMRLbits
_PSMC2TMR
_PSMC2TMRL
	res	1
UD_abs_pic16f1782_848	udata_ovr	0x0848
_PSMC2TMRHbits
_PSMC2TMRH
	res	1
UD_abs_pic16f1782_849	udata_ovr	0x0849
_PSMC2DBRbits
_PSMC2DBR
	res	1
UD_abs_pic16f1782_84a	udata_ovr	0x084a
_PSMC2DBFbits
_PSMC2DBF
	res	1
UD_abs_pic16f1782_84b	udata_ovr	0x084b
_PSMC2BLKRbits
_PSMC2BLKR
	res	1
UD_abs_pic16f1782_84c	udata_ovr	0x084c
_PSMC2BLKFbits
_PSMC2BLKF
	res	1
UD_abs_pic16f1782_84d	udata_ovr	0x084d
_PSMC2FFAbits
_PSMC2FFA
	res	1
UD_abs_pic16f1782_84e	udata_ovr	0x084e
_PSMC2STR0bits
_PSMC2STR0
	res	1
UD_abs_pic16f1782_84f	udata_ovr	0x084f
_PSMC2STR1bits
_PSMC2STR1
	res	1
UD_abs_pic16f1782_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic16f1782_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic16f1782_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic16f1782_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic16f1782_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
	res	1
UD_abs_pic16f1782_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic16f1782_fea	udata_ovr	0x0fea
_FSR1L_SHAD
	res	1
UD_abs_pic16f1782_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic16f1782_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic16f1782_fee	udata_ovr	0x0fee
_TOSL
	res	1
UD_abs_pic16f1782_fef	udata_ovr	0x0fef
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
code_pic16f1782	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
