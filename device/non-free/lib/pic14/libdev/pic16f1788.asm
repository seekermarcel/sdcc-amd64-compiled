;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:40 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f1788.c"
	list	p=16f1788
	radix dec
	include "p16f1788.inc"
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
	global	_PIE3bits
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
	global	_DAC1CON0bits
	global	_DAC1CON1bits
	global	_CM4CON0bits
	global	_CM4CON1bits
	global	_APFCON2bits
	global	_APFCONbits
	global	_APFCON0bits
	global	_APFCON1bits
	global	_CM3CON0bits
	global	_CM3CON1bits
	global	_ANSELAbits
	global	_ANSELBbits
	global	_ANSELCbits
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
	global	_CCP2CONbits
	global	_SLRCONAbits
	global	_SLRCONBbits
	global	_SLRCONCbits
	global	_CCP3CONbits
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
	global	_DAC2CON0bits
	global	_DAC3CON0bits
	global	_DAC4CON0bits
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
	global	_PSMC3CONbits
	global	_PSMC3MDLbits
	global	_PSMC3SYNCbits
	global	_PSMC3CLKbits
	global	_PSMC3OENbits
	global	_PSMC3POLbits
	global	_PSMC3BLNKbits
	global	_PSMC3REBSbits
	global	_PSMC3FEBSbits
	global	_PSMC3PHSbits
	global	_PSMC3DCSbits
	global	_PSMC3PRSbits
	global	_PSMC3ASDCbits
	global	_PSMC3ASDLbits
	global	_PSMC3ASDSbits
	global	_PSMC3INTbits
	global	_PSMC3PHLbits
	global	_PSMC3PHHbits
	global	_PSMC3DCLbits
	global	_PSMC3DCHbits
	global	_PSMC3PRLbits
	global	_PSMC3PRHbits
	global	_PSMC3TMRLbits
	global	_PSMC3TMRHbits
	global	_PSMC3DBRbits
	global	_PSMC3DBFbits
	global	_PSMC3BLKRbits
	global	_PSMC3BLKFbits
	global	_PSMC3FFAbits
	global	_PSMC3STR0bits
	global	_PSMC3STR1bits
	global	_PSMC4CONbits
	global	_PSMC4MDLbits
	global	_PSMC4SYNCbits
	global	_PSMC4CLKbits
	global	_PSMC4OENbits
	global	_PSMC4POLbits
	global	_PSMC4BLNKbits
	global	_PSMC4REBSbits
	global	_PSMC4FEBSbits
	global	_PSMC4PHSbits
	global	_PSMC4DCSbits
	global	_PSMC4PRSbits
	global	_PSMC4ASDCbits
	global	_PSMC4ASDLbits
	global	_PSMC4ASDSbits
	global	_PSMC4INTbits
	global	_PSMC4PHLbits
	global	_PSMC4PHHbits
	global	_PSMC4DCLbits
	global	_PSMC4DCHbits
	global	_PSMC4PRLbits
	global	_PSMC4PRHbits
	global	_PSMC4TMRLbits
	global	_PSMC4TMRHbits
	global	_PSMC4DBRbits
	global	_PSMC4DBFbits
	global	_PSMC4BLKRbits
	global	_PSMC4BLKFbits
	global	_PSMC4FFAbits
	global	_PSMC4STR0bits
	global	_PSMC4STR1bits
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
	global	_PIE3
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
	global	_DAC1CON0
	global	_DAC1CON1
	global	_CM4CON0
	global	_CM4CON1
	global	_APFCON2
	global	_APFCON
	global	_APFCON0
	global	_APFCON1
	global	_CM3CON0
	global	_CM3CON1
	global	_ANSELA
	global	_ANSELB
	global	_ANSELC
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
	global	_CCPR2
	global	_CCPR2L
	global	_CCPR2H
	global	_CCP2CON
	global	_SLRCONA
	global	_SLRCONB
	global	_SLRCONC
	global	_CCPR3
	global	_CCPR3L
	global	_CCPR3H
	global	_CCP3CON
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
	global	_DAC2CON0
	global	_DAC2REF
	global	_DAC3CON0
	global	_DAC3REF
	global	_DAC4CON0
	global	_DAC4REF
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
	global	_PSMC3CON
	global	_PSMC3MDL
	global	_PSMC3SYNC
	global	_PSMC3CLK
	global	_PSMC3OEN
	global	_PSMC3POL
	global	_PSMC3BLNK
	global	_PSMC3REBS
	global	_PSMC3FEBS
	global	_PSMC3PHS
	global	_PSMC3DCS
	global	_PSMC3PRS
	global	_PSMC3ASDC
	global	_PSMC3ASDL
	global	_PSMC3ASDS
	global	_PSMC3INT
	global	_PSMC3PH
	global	_PSMC3PHL
	global	_PSMC3PHH
	global	_PSMC3DC
	global	_PSMC3DCL
	global	_PSMC3DCH
	global	_PSMC3PR
	global	_PSMC3PRL
	global	_PSMC3PRH
	global	_PSMC3TMR
	global	_PSMC3TMRL
	global	_PSMC3TMRH
	global	_PSMC3DBR
	global	_PSMC3DBF
	global	_PSMC3BLKR
	global	_PSMC3BLKF
	global	_PSMC3FFA
	global	_PSMC3STR0
	global	_PSMC3STR1
	global	_PSMC4CON
	global	_PSMC4MDL
	global	_PSMC4SYNC
	global	_PSMC4CLK
	global	_PSMC4OEN
	global	_PSMC4POL
	global	_PSMC4BLNK
	global	_PSMC4REBS
	global	_PSMC4FEBS
	global	_PSMC4PHS
	global	_PSMC4DCS
	global	_PSMC4PRS
	global	_PSMC4ASDC
	global	_PSMC4ASDL
	global	_PSMC4ASDS
	global	_PSMC4INT
	global	_PSMC4PH
	global	_PSMC4PHL
	global	_PSMC4PHH
	global	_PSMC4DC
	global	_PSMC4DCL
	global	_PSMC4DCH
	global	_PSMC4PR
	global	_PSMC4PRL
	global	_PSMC4PRH
	global	_PSMC4TMR
	global	_PSMC4TMRL
	global	_PSMC4TMRH
	global	_PSMC4DBR
	global	_PSMC4DBF
	global	_PSMC4BLKR
	global	_PSMC4BLKF
	global	_PSMC4FFA
	global	_PSMC4STR0
	global	_PSMC4STR1
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
UD_abs_pic16f1788_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic16f1788_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic16f1788_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f1788_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f1788_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic16f1788_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic16f1788_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic16f1788_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic16f1788_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic16f1788_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic16f1788_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f1788_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f1788_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f1788_d	udata_ovr	0x000d
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f1788_e	udata_ovr	0x000e
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f1788_10	udata_ovr	0x0010
_PORTEbits
_PORTE
	res	1
UD_abs_pic16f1788_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f1788_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f1788_13	udata_ovr	0x0013
_PIR3bits
_PIR3
	res	1
UD_abs_pic16f1788_14	udata_ovr	0x0014
_PIR4bits
_PIR4
	res	1
UD_abs_pic16f1788_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic16f1788_16	udata_ovr	0x0016
_TMR1
_TMR1L
	res	1
UD_abs_pic16f1788_17	udata_ovr	0x0017
_TMR1H
	res	1
UD_abs_pic16f1788_18	udata_ovr	0x0018
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f1788_19	udata_ovr	0x0019
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic16f1788_1a	udata_ovr	0x001a
_TMR2
	res	1
UD_abs_pic16f1788_1b	udata_ovr	0x001b
_PR2
	res	1
UD_abs_pic16f1788_1c	udata_ovr	0x001c
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f1788_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f1788_8d	udata_ovr	0x008d
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f1788_8e	udata_ovr	0x008e
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f1788_90	udata_ovr	0x0090
_TRISEbits
_TRISE
	res	1
UD_abs_pic16f1788_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f1788_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f1788_93	udata_ovr	0x0093
_PIE3bits
_PIE3
	res	1
UD_abs_pic16f1788_94	udata_ovr	0x0094
_PIE4bits
_PIE4
	res	1
UD_abs_pic16f1788_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f1788_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic16f1788_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f1788_98	udata_ovr	0x0098
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16f1788_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f1788_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic16f1788_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic16f1788_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic16f1788_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f1788_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f1788_9f	udata_ovr	0x009f
_ADCON2bits
_ADCON2
	res	1
UD_abs_pic16f1788_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic16f1788_10d	udata_ovr	0x010d
_LATBbits
_LATB
	res	1
UD_abs_pic16f1788_10e	udata_ovr	0x010e
_LATCbits
_LATC
	res	1
UD_abs_pic16f1788_111	udata_ovr	0x0111
_CM1CON0bits
_CM1CON0
	res	1
UD_abs_pic16f1788_112	udata_ovr	0x0112
_CM1CON1bits
_CM1CON1
	res	1
UD_abs_pic16f1788_113	udata_ovr	0x0113
_CM2CON0bits
_CM2CON0
	res	1
UD_abs_pic16f1788_114	udata_ovr	0x0114
_CM2CON1bits
_CM2CON1
	res	1
UD_abs_pic16f1788_115	udata_ovr	0x0115
_CMOUTbits
_CMOUT
	res	1
UD_abs_pic16f1788_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic16f1788_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic16f1788_118	udata_ovr	0x0118
_DAC1CON0bits
_DAC1CON0
	res	1
UD_abs_pic16f1788_119	udata_ovr	0x0119
_DAC1CON1bits
_DAC1CON1
	res	1
UD_abs_pic16f1788_11a	udata_ovr	0x011a
_CM4CON0bits
_CM4CON0
	res	1
UD_abs_pic16f1788_11b	udata_ovr	0x011b
_CM4CON1bits
_CM4CON1
	res	1
UD_abs_pic16f1788_11c	udata_ovr	0x011c
_APFCON2bits
_APFCON2
	res	1
UD_abs_pic16f1788_11d	udata_ovr	0x011d
_APFCONbits
_APFCON0bits
_APFCON1bits
_APFCON
_APFCON0
_APFCON1
	res	1
UD_abs_pic16f1788_11e	udata_ovr	0x011e
_CM3CON0bits
_CM3CON0
	res	1
UD_abs_pic16f1788_11f	udata_ovr	0x011f
_CM3CON1bits
_CM3CON1
	res	1
UD_abs_pic16f1788_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic16f1788_18d	udata_ovr	0x018d
_ANSELBbits
_ANSELB
	res	1
UD_abs_pic16f1788_18e	udata_ovr	0x018e
_ANSELCbits
_ANSELC
	res	1
UD_abs_pic16f1788_191	udata_ovr	0x0191
_EEADR
_EEADRL
	res	1
UD_abs_pic16f1788_192	udata_ovr	0x0192
_EEADRH
	res	1
UD_abs_pic16f1788_193	udata_ovr	0x0193
_EEDAT
_EEDATL
	res	1
UD_abs_pic16f1788_194	udata_ovr	0x0194
_EEDATH
	res	1
UD_abs_pic16f1788_195	udata_ovr	0x0195
_EECON1bits
_EECON1
	res	1
UD_abs_pic16f1788_196	udata_ovr	0x0196
_EECON2
	res	1
UD_abs_pic16f1788_197	udata_ovr	0x0197
_VREGCONbits
_VREGCON
	res	1
UD_abs_pic16f1788_199	udata_ovr	0x0199
_RC1REG
_RCREG
_RCREG1
	res	1
UD_abs_pic16f1788_19a	udata_ovr	0x019a
_TX1REG
_TXREG
_TXREG1
	res	1
UD_abs_pic16f1788_19b	udata_ovr	0x019b
_SP1BRG
_SP1BRGL
_SPBRG
_SPBRG1
_SPBRGL
	res	1
UD_abs_pic16f1788_19c	udata_ovr	0x019c
_SP1BRGH
_SPBRGH
_SPBRGH1
	res	1
UD_abs_pic16f1788_19d	udata_ovr	0x019d
_RC1STAbits
_RCSTAbits
_RCSTA1bits
_RC1STA
_RCSTA
_RCSTA1
	res	1
UD_abs_pic16f1788_19e	udata_ovr	0x019e
_TX1STAbits
_TXSTAbits
_TXSTA1bits
_TX1STA
_TXSTA
_TXSTA1
	res	1
UD_abs_pic16f1788_19f	udata_ovr	0x019f
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
UD_abs_pic16f1788_20c	udata_ovr	0x020c
_WPUAbits
_WPUA
	res	1
UD_abs_pic16f1788_20d	udata_ovr	0x020d
_WPUBbits
_WPUB
	res	1
UD_abs_pic16f1788_20e	udata_ovr	0x020e
_WPUCbits
_WPUC
	res	1
UD_abs_pic16f1788_210	udata_ovr	0x0210
_WPUEbits
_WPUE
	res	1
UD_abs_pic16f1788_211	udata_ovr	0x0211
_SSP1BUFbits
_SSPBUFbits
_SSP1BUF
_SSPBUF
	res	1
UD_abs_pic16f1788_212	udata_ovr	0x0212
_SSP1ADDbits
_SSPADDbits
_SSP1ADD
_SSPADD
	res	1
UD_abs_pic16f1788_213	udata_ovr	0x0213
_SSP1MSKbits
_SSPMSKbits
_SSP1MSK
_SSPMSK
	res	1
UD_abs_pic16f1788_214	udata_ovr	0x0214
_SSP1STATbits
_SSPSTATbits
_SSP1STAT
_SSPSTAT
	res	1
UD_abs_pic16f1788_215	udata_ovr	0x0215
_SSP1CONbits
_SSP1CON1bits
_SSPCONbits
_SSPCON1bits
_SSP1CON
_SSP1CON1
_SSPCON
_SSPCON1
	res	1
UD_abs_pic16f1788_216	udata_ovr	0x0216
_SSP1CON2bits
_SSPCON2bits
_SSP1CON2
_SSPCON2
	res	1
UD_abs_pic16f1788_217	udata_ovr	0x0217
_SSP1CON3bits
_SSPCON3bits
_SSP1CON3
_SSPCON3
	res	1
UD_abs_pic16f1788_28c	udata_ovr	0x028c
_ODCONAbits
_ODCONA
	res	1
UD_abs_pic16f1788_28d	udata_ovr	0x028d
_ODCONBbits
_ODCONB
	res	1
UD_abs_pic16f1788_28e	udata_ovr	0x028e
_ODCONCbits
_ODCONC
	res	1
UD_abs_pic16f1788_291	udata_ovr	0x0291
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f1788_292	udata_ovr	0x0292
_CCPR1H
	res	1
UD_abs_pic16f1788_293	udata_ovr	0x0293
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16f1788_298	udata_ovr	0x0298
_CCPR2
_CCPR2L
	res	1
UD_abs_pic16f1788_299	udata_ovr	0x0299
_CCPR2H
	res	1
UD_abs_pic16f1788_29a	udata_ovr	0x029a
_CCP2CONbits
_CCP2CON
	res	1
UD_abs_pic16f1788_30c	udata_ovr	0x030c
_SLRCONAbits
_SLRCONA
	res	1
UD_abs_pic16f1788_30d	udata_ovr	0x030d
_SLRCONBbits
_SLRCONB
	res	1
UD_abs_pic16f1788_30e	udata_ovr	0x030e
_SLRCONCbits
_SLRCONC
	res	1
UD_abs_pic16f1788_311	udata_ovr	0x0311
_CCPR3
_CCPR3L
	res	1
UD_abs_pic16f1788_312	udata_ovr	0x0312
_CCPR3H
	res	1
UD_abs_pic16f1788_313	udata_ovr	0x0313
_CCP3CONbits
_CCP3CON
	res	1
UD_abs_pic16f1788_38c	udata_ovr	0x038c
_INLVLAbits
_INLVLA
	res	1
UD_abs_pic16f1788_38d	udata_ovr	0x038d
_INLVLBbits
_INLVLB
	res	1
UD_abs_pic16f1788_38e	udata_ovr	0x038e
_INLVLCbits
_INLVLC
	res	1
UD_abs_pic16f1788_390	udata_ovr	0x0390
_INLVLEbits
_INLVLE
	res	1
UD_abs_pic16f1788_391	udata_ovr	0x0391
_IOCAPbits
_IOCAP
	res	1
UD_abs_pic16f1788_392	udata_ovr	0x0392
_IOCANbits
_IOCAN
	res	1
UD_abs_pic16f1788_393	udata_ovr	0x0393
_IOCAFbits
_IOCAF
	res	1
UD_abs_pic16f1788_394	udata_ovr	0x0394
_IOCBPbits
_IOCBP
	res	1
UD_abs_pic16f1788_395	udata_ovr	0x0395
_IOCBNbits
_IOCBN
	res	1
UD_abs_pic16f1788_396	udata_ovr	0x0396
_IOCBFbits
_IOCBF
	res	1
UD_abs_pic16f1788_397	udata_ovr	0x0397
_IOCCPbits
_IOCCP
	res	1
UD_abs_pic16f1788_398	udata_ovr	0x0398
_IOCCNbits
_IOCCN
	res	1
UD_abs_pic16f1788_399	udata_ovr	0x0399
_IOCCFbits
_IOCCF
	res	1
UD_abs_pic16f1788_39d	udata_ovr	0x039d
_IOCEPbits
_IOCEP
	res	1
UD_abs_pic16f1788_39e	udata_ovr	0x039e
_IOCENbits
_IOCEN
	res	1
UD_abs_pic16f1788_39f	udata_ovr	0x039f
_IOCEFbits
_IOCEF
	res	1
UD_abs_pic16f1788_511	udata_ovr	0x0511
_OPA1CONbits
_OPA1CON
	res	1
UD_abs_pic16f1788_513	udata_ovr	0x0513
_OPA2CONbits
_OPA2CON
	res	1
UD_abs_pic16f1788_51a	udata_ovr	0x051a
_CLKRCONbits
_CLKRCON
	res	1
UD_abs_pic16f1788_591	udata_ovr	0x0591
_DAC2CON0bits
_DAC2CON0
	res	1
UD_abs_pic16f1788_592	udata_ovr	0x0592
_DAC2REF
	res	1
UD_abs_pic16f1788_593	udata_ovr	0x0593
_DAC3CON0bits
_DAC3CON0
	res	1
UD_abs_pic16f1788_594	udata_ovr	0x0594
_DAC3REF
	res	1
UD_abs_pic16f1788_595	udata_ovr	0x0595
_DAC4CON0bits
_DAC4CON0
	res	1
UD_abs_pic16f1788_596	udata_ovr	0x0596
_DAC4REF
	res	1
UD_abs_pic16f1788_e91	udata_ovr	0x0e91
_PSMC1CONbits
_PSMC1CON
	res	1
UD_abs_pic16f1788_e92	udata_ovr	0x0e92
_PSMC1MDLbits
_PSMC1MDL
	res	1
UD_abs_pic16f1788_e93	udata_ovr	0x0e93
_PSMC1SYNCbits
_PSMC1SYNC
	res	1
UD_abs_pic16f1788_e94	udata_ovr	0x0e94
_PSMC1CLKbits
_PSMC1CLK
	res	1
UD_abs_pic16f1788_e95	udata_ovr	0x0e95
_PSMC1OENbits
_PSMC1OEN
	res	1
UD_abs_pic16f1788_e96	udata_ovr	0x0e96
_PSMC1POLbits
_PSMC1POL
	res	1
UD_abs_pic16f1788_e97	udata_ovr	0x0e97
_PSMC1BLNKbits
_PSMC1BLNK
	res	1
UD_abs_pic16f1788_e98	udata_ovr	0x0e98
_PSMC1REBSbits
_PSMC1REBS
	res	1
UD_abs_pic16f1788_e99	udata_ovr	0x0e99
_PSMC1FEBSbits
_PSMC1FEBS
	res	1
UD_abs_pic16f1788_e9a	udata_ovr	0x0e9a
_PSMC1PHSbits
_PSMC1PHS
	res	1
UD_abs_pic16f1788_e9b	udata_ovr	0x0e9b
_PSMC1DCSbits
_PSMC1DCS
	res	1
UD_abs_pic16f1788_e9c	udata_ovr	0x0e9c
_PSMC1PRSbits
_PSMC1PRS
	res	1
UD_abs_pic16f1788_e9d	udata_ovr	0x0e9d
_PSMC1ASDCbits
_PSMC1ASDC
	res	1
UD_abs_pic16f1788_e9e	udata_ovr	0x0e9e
_PSMC1ASDLbits
_PSMC1ASDL
	res	1
UD_abs_pic16f1788_e9f	udata_ovr	0x0e9f
_PSMC1ASDSbits
_PSMC1ASDS
	res	1
UD_abs_pic16f1788_ea0	udata_ovr	0x0ea0
_PSMC1INTbits
_PSMC1INT
	res	1
UD_abs_pic16f1788_ea1	udata_ovr	0x0ea1
_PSMC1PHLbits
_PSMC1PH
_PSMC1PHL
	res	1
UD_abs_pic16f1788_ea2	udata_ovr	0x0ea2
_PSMC1PHHbits
_PSMC1PHH
	res	1
UD_abs_pic16f1788_ea3	udata_ovr	0x0ea3
_PSMC1DCLbits
_PSMC1DC
_PSMC1DCL
	res	1
UD_abs_pic16f1788_ea4	udata_ovr	0x0ea4
_PSMC1DCHbits
_PSMC1DCH
	res	1
UD_abs_pic16f1788_ea5	udata_ovr	0x0ea5
_PSMC1PRLbits
_PSMC1PR
_PSMC1PRL
	res	1
UD_abs_pic16f1788_ea6	udata_ovr	0x0ea6
_PSMC1PRHbits
_PSMC1PRH
	res	1
UD_abs_pic16f1788_ea7	udata_ovr	0x0ea7
_PSMC1TMRLbits
_PSMC1TMR
_PSMC1TMRL
	res	1
UD_abs_pic16f1788_ea8	udata_ovr	0x0ea8
_PSMC1TMRHbits
_PSMC1TMRH
	res	1
UD_abs_pic16f1788_ea9	udata_ovr	0x0ea9
_PSMC1DBRbits
_PSMC1DBR
	res	1
UD_abs_pic16f1788_eaa	udata_ovr	0x0eaa
_PSMC1DBFbits
_PSMC1DBF
	res	1
UD_abs_pic16f1788_eab	udata_ovr	0x0eab
_PSMC1BLKRbits
_PSMC1BLKR
	res	1
UD_abs_pic16f1788_eac	udata_ovr	0x0eac
_PSMC1BLKFbits
_PSMC1BLKF
	res	1
UD_abs_pic16f1788_ead	udata_ovr	0x0ead
_PSMC1FFAbits
_PSMC1FFA
	res	1
UD_abs_pic16f1788_eae	udata_ovr	0x0eae
_PSMC1STR0bits
_PSMC1STR0
	res	1
UD_abs_pic16f1788_eaf	udata_ovr	0x0eaf
_PSMC1STR1bits
_PSMC1STR1
	res	1
UD_abs_pic16f1788_eb1	udata_ovr	0x0eb1
_PSMC2CONbits
_PSMC2CON
	res	1
UD_abs_pic16f1788_eb2	udata_ovr	0x0eb2
_PSMC2MDLbits
_PSMC2MDL
	res	1
UD_abs_pic16f1788_eb3	udata_ovr	0x0eb3
_PSMC2SYNCbits
_PSMC2SYNC
	res	1
UD_abs_pic16f1788_eb4	udata_ovr	0x0eb4
_PSMC2CLKbits
_PSMC2CLK
	res	1
UD_abs_pic16f1788_eb5	udata_ovr	0x0eb5
_PSMC2OENbits
_PSMC2OEN
	res	1
UD_abs_pic16f1788_eb6	udata_ovr	0x0eb6
_PSMC2POLbits
_PSMC2POL
	res	1
UD_abs_pic16f1788_eb7	udata_ovr	0x0eb7
_PSMC2BLNKbits
_PSMC2BLNK
	res	1
UD_abs_pic16f1788_eb8	udata_ovr	0x0eb8
_PSMC2REBSbits
_PSMC2REBS
	res	1
UD_abs_pic16f1788_eb9	udata_ovr	0x0eb9
_PSMC2FEBSbits
_PSMC2FEBS
	res	1
UD_abs_pic16f1788_eba	udata_ovr	0x0eba
_PSMC2PHSbits
_PSMC2PHS
	res	1
UD_abs_pic16f1788_ebb	udata_ovr	0x0ebb
_PSMC2DCSbits
_PSMC2DCS
	res	1
UD_abs_pic16f1788_ebc	udata_ovr	0x0ebc
_PSMC2PRSbits
_PSMC2PRS
	res	1
UD_abs_pic16f1788_ebd	udata_ovr	0x0ebd
_PSMC2ASDCbits
_PSMC2ASDC
	res	1
UD_abs_pic16f1788_ebe	udata_ovr	0x0ebe
_PSMC2ASDLbits
_PSMC2ASDL
	res	1
UD_abs_pic16f1788_ebf	udata_ovr	0x0ebf
_PSMC2ASDSbits
_PSMC2ASDS
	res	1
UD_abs_pic16f1788_ec0	udata_ovr	0x0ec0
_PSMC2INTbits
_PSMC2INT
	res	1
UD_abs_pic16f1788_ec1	udata_ovr	0x0ec1
_PSMC2PHLbits
_PSMC2PH
_PSMC2PHL
	res	1
UD_abs_pic16f1788_ec2	udata_ovr	0x0ec2
_PSMC2PHHbits
_PSMC2PHH
	res	1
UD_abs_pic16f1788_ec3	udata_ovr	0x0ec3
_PSMC2DCLbits
_PSMC2DC
_PSMC2DCL
	res	1
UD_abs_pic16f1788_ec4	udata_ovr	0x0ec4
_PSMC2DCHbits
_PSMC2DCH
	res	1
UD_abs_pic16f1788_ec5	udata_ovr	0x0ec5
_PSMC2PRLbits
_PSMC2PR
_PSMC2PRL
	res	1
UD_abs_pic16f1788_ec6	udata_ovr	0x0ec6
_PSMC2PRHbits
_PSMC2PRH
	res	1
UD_abs_pic16f1788_ec7	udata_ovr	0x0ec7
_PSMC2TMRLbits
_PSMC2TMR
_PSMC2TMRL
	res	1
UD_abs_pic16f1788_ec8	udata_ovr	0x0ec8
_PSMC2TMRHbits
_PSMC2TMRH
	res	1
UD_abs_pic16f1788_ec9	udata_ovr	0x0ec9
_PSMC2DBRbits
_PSMC2DBR
	res	1
UD_abs_pic16f1788_eca	udata_ovr	0x0eca
_PSMC2DBFbits
_PSMC2DBF
	res	1
UD_abs_pic16f1788_ecb	udata_ovr	0x0ecb
_PSMC2BLKRbits
_PSMC2BLKR
	res	1
UD_abs_pic16f1788_ecc	udata_ovr	0x0ecc
_PSMC2BLKFbits
_PSMC2BLKF
	res	1
UD_abs_pic16f1788_ecd	udata_ovr	0x0ecd
_PSMC2FFAbits
_PSMC2FFA
	res	1
UD_abs_pic16f1788_ece	udata_ovr	0x0ece
_PSMC2STR0bits
_PSMC2STR0
	res	1
UD_abs_pic16f1788_ecf	udata_ovr	0x0ecf
_PSMC2STR1bits
_PSMC2STR1
	res	1
UD_abs_pic16f1788_ed1	udata_ovr	0x0ed1
_PSMC3CONbits
_PSMC3CON
	res	1
UD_abs_pic16f1788_ed2	udata_ovr	0x0ed2
_PSMC3MDLbits
_PSMC3MDL
	res	1
UD_abs_pic16f1788_ed3	udata_ovr	0x0ed3
_PSMC3SYNCbits
_PSMC3SYNC
	res	1
UD_abs_pic16f1788_ed4	udata_ovr	0x0ed4
_PSMC3CLKbits
_PSMC3CLK
	res	1
UD_abs_pic16f1788_ed5	udata_ovr	0x0ed5
_PSMC3OENbits
_PSMC3OEN
	res	1
UD_abs_pic16f1788_ed6	udata_ovr	0x0ed6
_PSMC3POLbits
_PSMC3POL
	res	1
UD_abs_pic16f1788_ed7	udata_ovr	0x0ed7
_PSMC3BLNKbits
_PSMC3BLNK
	res	1
UD_abs_pic16f1788_ed8	udata_ovr	0x0ed8
_PSMC3REBSbits
_PSMC3REBS
	res	1
UD_abs_pic16f1788_ed9	udata_ovr	0x0ed9
_PSMC3FEBSbits
_PSMC3FEBS
	res	1
UD_abs_pic16f1788_eda	udata_ovr	0x0eda
_PSMC3PHSbits
_PSMC3PHS
	res	1
UD_abs_pic16f1788_edb	udata_ovr	0x0edb
_PSMC3DCSbits
_PSMC3DCS
	res	1
UD_abs_pic16f1788_edc	udata_ovr	0x0edc
_PSMC3PRSbits
_PSMC3PRS
	res	1
UD_abs_pic16f1788_edd	udata_ovr	0x0edd
_PSMC3ASDCbits
_PSMC3ASDC
	res	1
UD_abs_pic16f1788_ede	udata_ovr	0x0ede
_PSMC3ASDLbits
_PSMC3ASDL
	res	1
UD_abs_pic16f1788_edf	udata_ovr	0x0edf
_PSMC3ASDSbits
_PSMC3ASDS
	res	1
UD_abs_pic16f1788_ee0	udata_ovr	0x0ee0
_PSMC3INTbits
_PSMC3INT
	res	1
UD_abs_pic16f1788_ee1	udata_ovr	0x0ee1
_PSMC3PHLbits
_PSMC3PH
_PSMC3PHL
	res	1
UD_abs_pic16f1788_ee2	udata_ovr	0x0ee2
_PSMC3PHHbits
_PSMC3PHH
	res	1
UD_abs_pic16f1788_ee3	udata_ovr	0x0ee3
_PSMC3DCLbits
_PSMC3DC
_PSMC3DCL
	res	1
UD_abs_pic16f1788_ee4	udata_ovr	0x0ee4
_PSMC3DCHbits
_PSMC3DCH
	res	1
UD_abs_pic16f1788_ee5	udata_ovr	0x0ee5
_PSMC3PRLbits
_PSMC3PR
_PSMC3PRL
	res	1
UD_abs_pic16f1788_ee6	udata_ovr	0x0ee6
_PSMC3PRHbits
_PSMC3PRH
	res	1
UD_abs_pic16f1788_ee7	udata_ovr	0x0ee7
_PSMC3TMRLbits
_PSMC3TMR
_PSMC3TMRL
	res	1
UD_abs_pic16f1788_ee8	udata_ovr	0x0ee8
_PSMC3TMRHbits
_PSMC3TMRH
	res	1
UD_abs_pic16f1788_ee9	udata_ovr	0x0ee9
_PSMC3DBRbits
_PSMC3DBR
	res	1
UD_abs_pic16f1788_eea	udata_ovr	0x0eea
_PSMC3DBFbits
_PSMC3DBF
	res	1
UD_abs_pic16f1788_eeb	udata_ovr	0x0eeb
_PSMC3BLKRbits
_PSMC3BLKR
	res	1
UD_abs_pic16f1788_eec	udata_ovr	0x0eec
_PSMC3BLKFbits
_PSMC3BLKF
	res	1
UD_abs_pic16f1788_eed	udata_ovr	0x0eed
_PSMC3FFAbits
_PSMC3FFA
	res	1
UD_abs_pic16f1788_eee	udata_ovr	0x0eee
_PSMC3STR0bits
_PSMC3STR0
	res	1
UD_abs_pic16f1788_eef	udata_ovr	0x0eef
_PSMC3STR1bits
_PSMC3STR1
	res	1
UD_abs_pic16f1788_f11	udata_ovr	0x0f11
_PSMC4CONbits
_PSMC4CON
	res	1
UD_abs_pic16f1788_f12	udata_ovr	0x0f12
_PSMC4MDLbits
_PSMC4MDL
	res	1
UD_abs_pic16f1788_f13	udata_ovr	0x0f13
_PSMC4SYNCbits
_PSMC4SYNC
	res	1
UD_abs_pic16f1788_f14	udata_ovr	0x0f14
_PSMC4CLKbits
_PSMC4CLK
	res	1
UD_abs_pic16f1788_f15	udata_ovr	0x0f15
_PSMC4OENbits
_PSMC4OEN
	res	1
UD_abs_pic16f1788_f16	udata_ovr	0x0f16
_PSMC4POLbits
_PSMC4POL
	res	1
UD_abs_pic16f1788_f17	udata_ovr	0x0f17
_PSMC4BLNKbits
_PSMC4BLNK
	res	1
UD_abs_pic16f1788_f18	udata_ovr	0x0f18
_PSMC4REBSbits
_PSMC4REBS
	res	1
UD_abs_pic16f1788_f19	udata_ovr	0x0f19
_PSMC4FEBSbits
_PSMC4FEBS
	res	1
UD_abs_pic16f1788_f1a	udata_ovr	0x0f1a
_PSMC4PHSbits
_PSMC4PHS
	res	1
UD_abs_pic16f1788_f1b	udata_ovr	0x0f1b
_PSMC4DCSbits
_PSMC4DCS
	res	1
UD_abs_pic16f1788_f1c	udata_ovr	0x0f1c
_PSMC4PRSbits
_PSMC4PRS
	res	1
UD_abs_pic16f1788_f1d	udata_ovr	0x0f1d
_PSMC4ASDCbits
_PSMC4ASDC
	res	1
UD_abs_pic16f1788_f1e	udata_ovr	0x0f1e
_PSMC4ASDLbits
_PSMC4ASDL
	res	1
UD_abs_pic16f1788_f1f	udata_ovr	0x0f1f
_PSMC4ASDSbits
_PSMC4ASDS
	res	1
UD_abs_pic16f1788_f20	udata_ovr	0x0f20
_PSMC4INTbits
_PSMC4INT
	res	1
UD_abs_pic16f1788_f21	udata_ovr	0x0f21
_PSMC4PHLbits
_PSMC4PH
_PSMC4PHL
	res	1
UD_abs_pic16f1788_f22	udata_ovr	0x0f22
_PSMC4PHHbits
_PSMC4PHH
	res	1
UD_abs_pic16f1788_f23	udata_ovr	0x0f23
_PSMC4DCLbits
_PSMC4DC
_PSMC4DCL
	res	1
UD_abs_pic16f1788_f24	udata_ovr	0x0f24
_PSMC4DCHbits
_PSMC4DCH
	res	1
UD_abs_pic16f1788_f25	udata_ovr	0x0f25
_PSMC4PRLbits
_PSMC4PR
_PSMC4PRL
	res	1
UD_abs_pic16f1788_f26	udata_ovr	0x0f26
_PSMC4PRHbits
_PSMC4PRH
	res	1
UD_abs_pic16f1788_f27	udata_ovr	0x0f27
_PSMC4TMRLbits
_PSMC4TMR
_PSMC4TMRL
	res	1
UD_abs_pic16f1788_f28	udata_ovr	0x0f28
_PSMC4TMRHbits
_PSMC4TMRH
	res	1
UD_abs_pic16f1788_f29	udata_ovr	0x0f29
_PSMC4DBRbits
_PSMC4DBR
	res	1
UD_abs_pic16f1788_f2a	udata_ovr	0x0f2a
_PSMC4DBFbits
_PSMC4DBF
	res	1
UD_abs_pic16f1788_f2b	udata_ovr	0x0f2b
_PSMC4BLKRbits
_PSMC4BLKR
	res	1
UD_abs_pic16f1788_f2c	udata_ovr	0x0f2c
_PSMC4BLKFbits
_PSMC4BLKF
	res	1
UD_abs_pic16f1788_f2d	udata_ovr	0x0f2d
_PSMC4FFAbits
_PSMC4FFA
	res	1
UD_abs_pic16f1788_f2e	udata_ovr	0x0f2e
_PSMC4STR0bits
_PSMC4STR0
	res	1
UD_abs_pic16f1788_f2f	udata_ovr	0x0f2f
_PSMC4STR1bits
_PSMC4STR1
	res	1
UD_abs_pic16f1788_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic16f1788_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic16f1788_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic16f1788_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic16f1788_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
	res	1
UD_abs_pic16f1788_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic16f1788_fea	udata_ovr	0x0fea
_FSR1L_SHAD
	res	1
UD_abs_pic16f1788_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic16f1788_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic16f1788_fee	udata_ovr	0x0fee
_TOSL
	res	1
UD_abs_pic16f1788_fef	udata_ovr	0x0fef
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
code_pic16f1788	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
