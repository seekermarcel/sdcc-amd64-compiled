;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:39 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f1784.c"
	list	p=16f1784
	radix dec
	include "p16f1784.inc"
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
	global	_PORTDbits
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
	global	_TRISDbits
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
	global	_LATDbits
	global	_LATEbits
	global	_CM1CON0bits
	global	_CM1CON1bits
	global	_CM2CON0bits
	global	_CM2CON1bits
	global	_CMOUTbits
	global	_BORCONbits
	global	_FVRCONbits
	global	_DACCON0bits
	global	_DACCON1bits
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
	global	_ANSELDbits
	global	_ANSELEbits
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
	global	_WPUDbits
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
	global	_ODCONDbits
	global	_ODCONEbits
	global	_CCP1CONbits
	global	_CCP2CONbits
	global	_SLRCONAbits
	global	_SLRCONBbits
	global	_SLRCONCbits
	global	_SLRCONDbits
	global	_SLRCONEbits
	global	_CCP3CONbits
	global	_INLVLAbits
	global	_INLVLBbits
	global	_INLVLCbits
	global	_INLVLDbits
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
	global	_OPA3CONbits
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
	global	_PORTD
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
	global	_TRISD
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
	global	_LATD
	global	_LATE
	global	_CM1CON0
	global	_CM1CON1
	global	_CM2CON0
	global	_CM2CON1
	global	_CMOUT
	global	_BORCON
	global	_FVRCON
	global	_DACCON0
	global	_DACCON1
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
	global	_ANSELD
	global	_ANSELE
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
	global	_WPUD
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
	global	_ODCOND
	global	_ODCONE
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
	global	_SLRCOND
	global	_SLRCONE
	global	_CCPR3
	global	_CCPR3L
	global	_CCPR3H
	global	_CCP3CON
	global	_INLVLA
	global	_INLVLB
	global	_INLVLC
	global	_INLVLD
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
	global	_OPA3CON
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
UD_abs_pic16f1784_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic16f1784_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic16f1784_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f1784_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f1784_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic16f1784_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic16f1784_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic16f1784_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic16f1784_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic16f1784_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic16f1784_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f1784_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f1784_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f1784_d	udata_ovr	0x000d
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f1784_e	udata_ovr	0x000e
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f1784_f	udata_ovr	0x000f
_PORTDbits
_PORTD
	res	1
UD_abs_pic16f1784_10	udata_ovr	0x0010
_PORTEbits
_PORTE
	res	1
UD_abs_pic16f1784_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f1784_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f1784_13	udata_ovr	0x0013
_PIR3bits
_PIR3
	res	1
UD_abs_pic16f1784_14	udata_ovr	0x0014
_PIR4bits
_PIR4
	res	1
UD_abs_pic16f1784_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic16f1784_16	udata_ovr	0x0016
_TMR1
_TMR1L
	res	1
UD_abs_pic16f1784_17	udata_ovr	0x0017
_TMR1H
	res	1
UD_abs_pic16f1784_18	udata_ovr	0x0018
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f1784_19	udata_ovr	0x0019
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic16f1784_1a	udata_ovr	0x001a
_TMR2
	res	1
UD_abs_pic16f1784_1b	udata_ovr	0x001b
_PR2
	res	1
UD_abs_pic16f1784_1c	udata_ovr	0x001c
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f1784_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f1784_8d	udata_ovr	0x008d
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f1784_8e	udata_ovr	0x008e
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f1784_8f	udata_ovr	0x008f
_TRISDbits
_TRISD
	res	1
UD_abs_pic16f1784_90	udata_ovr	0x0090
_TRISEbits
_TRISE
	res	1
UD_abs_pic16f1784_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f1784_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f1784_93	udata_ovr	0x0093
_PIE3bits
_PIE3
	res	1
UD_abs_pic16f1784_94	udata_ovr	0x0094
_PIE4bits
_PIE4
	res	1
UD_abs_pic16f1784_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f1784_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic16f1784_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f1784_98	udata_ovr	0x0098
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16f1784_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f1784_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic16f1784_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic16f1784_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic16f1784_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f1784_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f1784_9f	udata_ovr	0x009f
_ADCON2bits
_ADCON2
	res	1
UD_abs_pic16f1784_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic16f1784_10d	udata_ovr	0x010d
_LATBbits
_LATB
	res	1
UD_abs_pic16f1784_10e	udata_ovr	0x010e
_LATCbits
_LATC
	res	1
UD_abs_pic16f1784_10f	udata_ovr	0x010f
_LATDbits
_LATD
	res	1
UD_abs_pic16f1784_110	udata_ovr	0x0110
_LATEbits
_LATE
	res	1
UD_abs_pic16f1784_111	udata_ovr	0x0111
_CM1CON0bits
_CM1CON0
	res	1
UD_abs_pic16f1784_112	udata_ovr	0x0112
_CM1CON1bits
_CM1CON1
	res	1
UD_abs_pic16f1784_113	udata_ovr	0x0113
_CM2CON0bits
_CM2CON0
	res	1
UD_abs_pic16f1784_114	udata_ovr	0x0114
_CM2CON1bits
_CM2CON1
	res	1
UD_abs_pic16f1784_115	udata_ovr	0x0115
_CMOUTbits
_CMOUT
	res	1
UD_abs_pic16f1784_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic16f1784_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic16f1784_118	udata_ovr	0x0118
_DACCON0bits
_DACCON0
	res	1
UD_abs_pic16f1784_119	udata_ovr	0x0119
_DACCON1bits
_DACCON1
	res	1
UD_abs_pic16f1784_11a	udata_ovr	0x011a
_CM4CON0bits
_CM4CON0
	res	1
UD_abs_pic16f1784_11b	udata_ovr	0x011b
_CM4CON1bits
_CM4CON1
	res	1
UD_abs_pic16f1784_11c	udata_ovr	0x011c
_APFCON2bits
_APFCON2
	res	1
UD_abs_pic16f1784_11d	udata_ovr	0x011d
_APFCONbits
_APFCON0bits
_APFCON1bits
_APFCON
_APFCON0
_APFCON1
	res	1
UD_abs_pic16f1784_11e	udata_ovr	0x011e
_CM3CON0bits
_CM3CON0
	res	1
UD_abs_pic16f1784_11f	udata_ovr	0x011f
_CM3CON1bits
_CM3CON1
	res	1
UD_abs_pic16f1784_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic16f1784_18d	udata_ovr	0x018d
_ANSELBbits
_ANSELB
	res	1
UD_abs_pic16f1784_18f	udata_ovr	0x018f
_ANSELDbits
_ANSELD
	res	1
UD_abs_pic16f1784_190	udata_ovr	0x0190
_ANSELEbits
_ANSELE
	res	1
UD_abs_pic16f1784_191	udata_ovr	0x0191
_EEADR
_EEADRL
	res	1
UD_abs_pic16f1784_192	udata_ovr	0x0192
_EEADRH
	res	1
UD_abs_pic16f1784_193	udata_ovr	0x0193
_EEDAT
_EEDATL
	res	1
UD_abs_pic16f1784_194	udata_ovr	0x0194
_EEDATH
	res	1
UD_abs_pic16f1784_195	udata_ovr	0x0195
_EECON1bits
_EECON1
	res	1
UD_abs_pic16f1784_196	udata_ovr	0x0196
_EECON2
	res	1
UD_abs_pic16f1784_197	udata_ovr	0x0197
_VREGCONbits
_VREGCON
	res	1
UD_abs_pic16f1784_199	udata_ovr	0x0199
_RC1REG
_RCREG
_RCREG1
	res	1
UD_abs_pic16f1784_19a	udata_ovr	0x019a
_TX1REG
_TXREG
_TXREG1
	res	1
UD_abs_pic16f1784_19b	udata_ovr	0x019b
_SP1BRG
_SP1BRGL
_SPBRG
_SPBRG1
_SPBRGL
	res	1
UD_abs_pic16f1784_19c	udata_ovr	0x019c
_SP1BRGH
_SPBRGH
_SPBRGH1
	res	1
UD_abs_pic16f1784_19d	udata_ovr	0x019d
_RC1STAbits
_RCSTAbits
_RCSTA1bits
_RC1STA
_RCSTA
_RCSTA1
	res	1
UD_abs_pic16f1784_19e	udata_ovr	0x019e
_TX1STAbits
_TXSTAbits
_TXSTA1bits
_TX1STA
_TXSTA
_TXSTA1
	res	1
UD_abs_pic16f1784_19f	udata_ovr	0x019f
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
UD_abs_pic16f1784_20c	udata_ovr	0x020c
_WPUAbits
_WPUA
	res	1
UD_abs_pic16f1784_20d	udata_ovr	0x020d
_WPUBbits
_WPUB
	res	1
UD_abs_pic16f1784_20e	udata_ovr	0x020e
_WPUCbits
_WPUC
	res	1
UD_abs_pic16f1784_20f	udata_ovr	0x020f
_WPUDbits
_WPUD
	res	1
UD_abs_pic16f1784_210	udata_ovr	0x0210
_WPUEbits
_WPUE
	res	1
UD_abs_pic16f1784_211	udata_ovr	0x0211
_SSP1BUFbits
_SSPBUFbits
_SSP1BUF
_SSPBUF
	res	1
UD_abs_pic16f1784_212	udata_ovr	0x0212
_SSP1ADDbits
_SSPADDbits
_SSP1ADD
_SSPADD
	res	1
UD_abs_pic16f1784_213	udata_ovr	0x0213
_SSP1MSKbits
_SSPMSKbits
_SSP1MSK
_SSPMSK
	res	1
UD_abs_pic16f1784_214	udata_ovr	0x0214
_SSP1STATbits
_SSPSTATbits
_SSP1STAT
_SSPSTAT
	res	1
UD_abs_pic16f1784_215	udata_ovr	0x0215
_SSP1CONbits
_SSP1CON1bits
_SSPCONbits
_SSPCON1bits
_SSP1CON
_SSP1CON1
_SSPCON
_SSPCON1
	res	1
UD_abs_pic16f1784_216	udata_ovr	0x0216
_SSP1CON2bits
_SSPCON2bits
_SSP1CON2
_SSPCON2
	res	1
UD_abs_pic16f1784_217	udata_ovr	0x0217
_SSP1CON3bits
_SSPCON3bits
_SSP1CON3
_SSPCON3
	res	1
UD_abs_pic16f1784_28c	udata_ovr	0x028c
_ODCONAbits
_ODCONA
	res	1
UD_abs_pic16f1784_28d	udata_ovr	0x028d
_ODCONBbits
_ODCONB
	res	1
UD_abs_pic16f1784_28e	udata_ovr	0x028e
_ODCONCbits
_ODCONC
	res	1
UD_abs_pic16f1784_28f	udata_ovr	0x028f
_ODCONDbits
_ODCOND
	res	1
UD_abs_pic16f1784_290	udata_ovr	0x0290
_ODCONEbits
_ODCONE
	res	1
UD_abs_pic16f1784_291	udata_ovr	0x0291
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f1784_292	udata_ovr	0x0292
_CCPR1H
	res	1
UD_abs_pic16f1784_293	udata_ovr	0x0293
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16f1784_298	udata_ovr	0x0298
_CCPR2
_CCPR2L
	res	1
UD_abs_pic16f1784_299	udata_ovr	0x0299
_CCPR2H
	res	1
UD_abs_pic16f1784_29a	udata_ovr	0x029a
_CCP2CONbits
_CCP2CON
	res	1
UD_abs_pic16f1784_30c	udata_ovr	0x030c
_SLRCONAbits
_SLRCONA
	res	1
UD_abs_pic16f1784_30d	udata_ovr	0x030d
_SLRCONBbits
_SLRCONB
	res	1
UD_abs_pic16f1784_30e	udata_ovr	0x030e
_SLRCONCbits
_SLRCONC
	res	1
UD_abs_pic16f1784_30f	udata_ovr	0x030f
_SLRCONDbits
_SLRCOND
	res	1
UD_abs_pic16f1784_310	udata_ovr	0x0310
_SLRCONEbits
_SLRCONE
	res	1
UD_abs_pic16f1784_311	udata_ovr	0x0311
_CCPR3
_CCPR3L
	res	1
UD_abs_pic16f1784_312	udata_ovr	0x0312
_CCPR3H
	res	1
UD_abs_pic16f1784_313	udata_ovr	0x0313
_CCP3CONbits
_CCP3CON
	res	1
UD_abs_pic16f1784_38c	udata_ovr	0x038c
_INLVLAbits
_INLVLA
	res	1
UD_abs_pic16f1784_38d	udata_ovr	0x038d
_INLVLBbits
_INLVLB
	res	1
UD_abs_pic16f1784_38e	udata_ovr	0x038e
_INLVLCbits
_INLVLC
	res	1
UD_abs_pic16f1784_38f	udata_ovr	0x038f
_INLVLDbits
_INLVLD
	res	1
UD_abs_pic16f1784_390	udata_ovr	0x0390
_INLVLEbits
_INLVLE
	res	1
UD_abs_pic16f1784_391	udata_ovr	0x0391
_IOCAPbits
_IOCAP
	res	1
UD_abs_pic16f1784_392	udata_ovr	0x0392
_IOCANbits
_IOCAN
	res	1
UD_abs_pic16f1784_393	udata_ovr	0x0393
_IOCAFbits
_IOCAF
	res	1
UD_abs_pic16f1784_394	udata_ovr	0x0394
_IOCBPbits
_IOCBP
	res	1
UD_abs_pic16f1784_395	udata_ovr	0x0395
_IOCBNbits
_IOCBN
	res	1
UD_abs_pic16f1784_396	udata_ovr	0x0396
_IOCBFbits
_IOCBF
	res	1
UD_abs_pic16f1784_397	udata_ovr	0x0397
_IOCCPbits
_IOCCP
	res	1
UD_abs_pic16f1784_398	udata_ovr	0x0398
_IOCCNbits
_IOCCN
	res	1
UD_abs_pic16f1784_399	udata_ovr	0x0399
_IOCCFbits
_IOCCF
	res	1
UD_abs_pic16f1784_39d	udata_ovr	0x039d
_IOCEPbits
_IOCEP
	res	1
UD_abs_pic16f1784_39e	udata_ovr	0x039e
_IOCENbits
_IOCEN
	res	1
UD_abs_pic16f1784_39f	udata_ovr	0x039f
_IOCEFbits
_IOCEF
	res	1
UD_abs_pic16f1784_511	udata_ovr	0x0511
_OPA1CONbits
_OPA1CON
	res	1
UD_abs_pic16f1784_513	udata_ovr	0x0513
_OPA2CONbits
_OPA2CON
	res	1
UD_abs_pic16f1784_515	udata_ovr	0x0515
_OPA3CONbits
_OPA3CON
	res	1
UD_abs_pic16f1784_51a	udata_ovr	0x051a
_CLKRCONbits
_CLKRCON
	res	1
UD_abs_pic16f1784_811	udata_ovr	0x0811
_PSMC1CONbits
_PSMC1CON
	res	1
UD_abs_pic16f1784_812	udata_ovr	0x0812
_PSMC1MDLbits
_PSMC1MDL
	res	1
UD_abs_pic16f1784_813	udata_ovr	0x0813
_PSMC1SYNCbits
_PSMC1SYNC
	res	1
UD_abs_pic16f1784_814	udata_ovr	0x0814
_PSMC1CLKbits
_PSMC1CLK
	res	1
UD_abs_pic16f1784_815	udata_ovr	0x0815
_PSMC1OENbits
_PSMC1OEN
	res	1
UD_abs_pic16f1784_816	udata_ovr	0x0816
_PSMC1POLbits
_PSMC1POL
	res	1
UD_abs_pic16f1784_817	udata_ovr	0x0817
_PSMC1BLNKbits
_PSMC1BLNK
	res	1
UD_abs_pic16f1784_818	udata_ovr	0x0818
_PSMC1REBSbits
_PSMC1REBS
	res	1
UD_abs_pic16f1784_819	udata_ovr	0x0819
_PSMC1FEBSbits
_PSMC1FEBS
	res	1
UD_abs_pic16f1784_81a	udata_ovr	0x081a
_PSMC1PHSbits
_PSMC1PHS
	res	1
UD_abs_pic16f1784_81b	udata_ovr	0x081b
_PSMC1DCSbits
_PSMC1DCS
	res	1
UD_abs_pic16f1784_81c	udata_ovr	0x081c
_PSMC1PRSbits
_PSMC1PRS
	res	1
UD_abs_pic16f1784_81d	udata_ovr	0x081d
_PSMC1ASDCbits
_PSMC1ASDC
	res	1
UD_abs_pic16f1784_81e	udata_ovr	0x081e
_PSMC1ASDLbits
_PSMC1ASDL
	res	1
UD_abs_pic16f1784_81f	udata_ovr	0x081f
_PSMC1ASDSbits
_PSMC1ASDS
	res	1
UD_abs_pic16f1784_820	udata_ovr	0x0820
_PSMC1INTbits
_PSMC1INT
	res	1
UD_abs_pic16f1784_821	udata_ovr	0x0821
_PSMC1PHLbits
_PSMC1PH
_PSMC1PHL
	res	1
UD_abs_pic16f1784_822	udata_ovr	0x0822
_PSMC1PHHbits
_PSMC1PHH
	res	1
UD_abs_pic16f1784_823	udata_ovr	0x0823
_PSMC1DCLbits
_PSMC1DC
_PSMC1DCL
	res	1
UD_abs_pic16f1784_824	udata_ovr	0x0824
_PSMC1DCHbits
_PSMC1DCH
	res	1
UD_abs_pic16f1784_825	udata_ovr	0x0825
_PSMC1PRLbits
_PSMC1PR
_PSMC1PRL
	res	1
UD_abs_pic16f1784_826	udata_ovr	0x0826
_PSMC1PRHbits
_PSMC1PRH
	res	1
UD_abs_pic16f1784_827	udata_ovr	0x0827
_PSMC1TMRLbits
_PSMC1TMR
_PSMC1TMRL
	res	1
UD_abs_pic16f1784_828	udata_ovr	0x0828
_PSMC1TMRHbits
_PSMC1TMRH
	res	1
UD_abs_pic16f1784_829	udata_ovr	0x0829
_PSMC1DBRbits
_PSMC1DBR
	res	1
UD_abs_pic16f1784_82a	udata_ovr	0x082a
_PSMC1DBFbits
_PSMC1DBF
	res	1
UD_abs_pic16f1784_82b	udata_ovr	0x082b
_PSMC1BLKRbits
_PSMC1BLKR
	res	1
UD_abs_pic16f1784_82c	udata_ovr	0x082c
_PSMC1BLKFbits
_PSMC1BLKF
	res	1
UD_abs_pic16f1784_82d	udata_ovr	0x082d
_PSMC1FFAbits
_PSMC1FFA
	res	1
UD_abs_pic16f1784_82e	udata_ovr	0x082e
_PSMC1STR0bits
_PSMC1STR0
	res	1
UD_abs_pic16f1784_82f	udata_ovr	0x082f
_PSMC1STR1bits
_PSMC1STR1
	res	1
UD_abs_pic16f1784_831	udata_ovr	0x0831
_PSMC2CONbits
_PSMC2CON
	res	1
UD_abs_pic16f1784_832	udata_ovr	0x0832
_PSMC2MDLbits
_PSMC2MDL
	res	1
UD_abs_pic16f1784_833	udata_ovr	0x0833
_PSMC2SYNCbits
_PSMC2SYNC
	res	1
UD_abs_pic16f1784_834	udata_ovr	0x0834
_PSMC2CLKbits
_PSMC2CLK
	res	1
UD_abs_pic16f1784_835	udata_ovr	0x0835
_PSMC2OENbits
_PSMC2OEN
	res	1
UD_abs_pic16f1784_836	udata_ovr	0x0836
_PSMC2POLbits
_PSMC2POL
	res	1
UD_abs_pic16f1784_837	udata_ovr	0x0837
_PSMC2BLNKbits
_PSMC2BLNK
	res	1
UD_abs_pic16f1784_838	udata_ovr	0x0838
_PSMC2REBSbits
_PSMC2REBS
	res	1
UD_abs_pic16f1784_839	udata_ovr	0x0839
_PSMC2FEBSbits
_PSMC2FEBS
	res	1
UD_abs_pic16f1784_83a	udata_ovr	0x083a
_PSMC2PHSbits
_PSMC2PHS
	res	1
UD_abs_pic16f1784_83b	udata_ovr	0x083b
_PSMC2DCSbits
_PSMC2DCS
	res	1
UD_abs_pic16f1784_83c	udata_ovr	0x083c
_PSMC2PRSbits
_PSMC2PRS
	res	1
UD_abs_pic16f1784_83d	udata_ovr	0x083d
_PSMC2ASDCbits
_PSMC2ASDC
	res	1
UD_abs_pic16f1784_83e	udata_ovr	0x083e
_PSMC2ASDLbits
_PSMC2ASDL
	res	1
UD_abs_pic16f1784_83f	udata_ovr	0x083f
_PSMC2ASDSbits
_PSMC2ASDS
	res	1
UD_abs_pic16f1784_840	udata_ovr	0x0840
_PSMC2INTbits
_PSMC2INT
	res	1
UD_abs_pic16f1784_841	udata_ovr	0x0841
_PSMC2PHLbits
_PSMC2PH
_PSMC2PHL
	res	1
UD_abs_pic16f1784_842	udata_ovr	0x0842
_PSMC2PHHbits
_PSMC2PHH
	res	1
UD_abs_pic16f1784_843	udata_ovr	0x0843
_PSMC2DCLbits
_PSMC2DC
_PSMC2DCL
	res	1
UD_abs_pic16f1784_844	udata_ovr	0x0844
_PSMC2DCHbits
_PSMC2DCH
	res	1
UD_abs_pic16f1784_845	udata_ovr	0x0845
_PSMC2PRLbits
_PSMC2PR
_PSMC2PRL
	res	1
UD_abs_pic16f1784_846	udata_ovr	0x0846
_PSMC2PRHbits
_PSMC2PRH
	res	1
UD_abs_pic16f1784_847	udata_ovr	0x0847
_PSMC2TMRLbits
_PSMC2TMR
_PSMC2TMRL
	res	1
UD_abs_pic16f1784_848	udata_ovr	0x0848
_PSMC2TMRHbits
_PSMC2TMRH
	res	1
UD_abs_pic16f1784_849	udata_ovr	0x0849
_PSMC2DBRbits
_PSMC2DBR
	res	1
UD_abs_pic16f1784_84a	udata_ovr	0x084a
_PSMC2DBFbits
_PSMC2DBF
	res	1
UD_abs_pic16f1784_84b	udata_ovr	0x084b
_PSMC2BLKRbits
_PSMC2BLKR
	res	1
UD_abs_pic16f1784_84c	udata_ovr	0x084c
_PSMC2BLKFbits
_PSMC2BLKF
	res	1
UD_abs_pic16f1784_84d	udata_ovr	0x084d
_PSMC2FFAbits
_PSMC2FFA
	res	1
UD_abs_pic16f1784_84e	udata_ovr	0x084e
_PSMC2STR0bits
_PSMC2STR0
	res	1
UD_abs_pic16f1784_84f	udata_ovr	0x084f
_PSMC2STR1bits
_PSMC2STR1
	res	1
UD_abs_pic16f1784_851	udata_ovr	0x0851
_PSMC3CONbits
_PSMC3CON
	res	1
UD_abs_pic16f1784_852	udata_ovr	0x0852
_PSMC3MDLbits
_PSMC3MDL
	res	1
UD_abs_pic16f1784_853	udata_ovr	0x0853
_PSMC3SYNCbits
_PSMC3SYNC
	res	1
UD_abs_pic16f1784_854	udata_ovr	0x0854
_PSMC3CLKbits
_PSMC3CLK
	res	1
UD_abs_pic16f1784_855	udata_ovr	0x0855
_PSMC3OENbits
_PSMC3OEN
	res	1
UD_abs_pic16f1784_856	udata_ovr	0x0856
_PSMC3POLbits
_PSMC3POL
	res	1
UD_abs_pic16f1784_857	udata_ovr	0x0857
_PSMC3BLNKbits
_PSMC3BLNK
	res	1
UD_abs_pic16f1784_858	udata_ovr	0x0858
_PSMC3REBSbits
_PSMC3REBS
	res	1
UD_abs_pic16f1784_859	udata_ovr	0x0859
_PSMC3FEBSbits
_PSMC3FEBS
	res	1
UD_abs_pic16f1784_85a	udata_ovr	0x085a
_PSMC3PHSbits
_PSMC3PHS
	res	1
UD_abs_pic16f1784_85b	udata_ovr	0x085b
_PSMC3DCSbits
_PSMC3DCS
	res	1
UD_abs_pic16f1784_85c	udata_ovr	0x085c
_PSMC3PRSbits
_PSMC3PRS
	res	1
UD_abs_pic16f1784_85d	udata_ovr	0x085d
_PSMC3ASDCbits
_PSMC3ASDC
	res	1
UD_abs_pic16f1784_85e	udata_ovr	0x085e
_PSMC3ASDLbits
_PSMC3ASDL
	res	1
UD_abs_pic16f1784_85f	udata_ovr	0x085f
_PSMC3ASDSbits
_PSMC3ASDS
	res	1
UD_abs_pic16f1784_860	udata_ovr	0x0860
_PSMC3INTbits
_PSMC3INT
	res	1
UD_abs_pic16f1784_861	udata_ovr	0x0861
_PSMC3PHLbits
_PSMC3PH
_PSMC3PHL
	res	1
UD_abs_pic16f1784_862	udata_ovr	0x0862
_PSMC3PHHbits
_PSMC3PHH
	res	1
UD_abs_pic16f1784_863	udata_ovr	0x0863
_PSMC3DCLbits
_PSMC3DC
_PSMC3DCL
	res	1
UD_abs_pic16f1784_864	udata_ovr	0x0864
_PSMC3DCHbits
_PSMC3DCH
	res	1
UD_abs_pic16f1784_865	udata_ovr	0x0865
_PSMC3PRLbits
_PSMC3PR
_PSMC3PRL
	res	1
UD_abs_pic16f1784_866	udata_ovr	0x0866
_PSMC3PRHbits
_PSMC3PRH
	res	1
UD_abs_pic16f1784_867	udata_ovr	0x0867
_PSMC3TMRLbits
_PSMC3TMR
_PSMC3TMRL
	res	1
UD_abs_pic16f1784_868	udata_ovr	0x0868
_PSMC3TMRHbits
_PSMC3TMRH
	res	1
UD_abs_pic16f1784_869	udata_ovr	0x0869
_PSMC3DBRbits
_PSMC3DBR
	res	1
UD_abs_pic16f1784_86a	udata_ovr	0x086a
_PSMC3DBFbits
_PSMC3DBF
	res	1
UD_abs_pic16f1784_86b	udata_ovr	0x086b
_PSMC3BLKRbits
_PSMC3BLKR
	res	1
UD_abs_pic16f1784_86c	udata_ovr	0x086c
_PSMC3BLKFbits
_PSMC3BLKF
	res	1
UD_abs_pic16f1784_86d	udata_ovr	0x086d
_PSMC3FFAbits
_PSMC3FFA
	res	1
UD_abs_pic16f1784_86e	udata_ovr	0x086e
_PSMC3STR0bits
_PSMC3STR0
	res	1
UD_abs_pic16f1784_86f	udata_ovr	0x086f
_PSMC3STR1bits
_PSMC3STR1
	res	1
UD_abs_pic16f1784_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic16f1784_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic16f1784_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic16f1784_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic16f1784_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
	res	1
UD_abs_pic16f1784_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic16f1784_fea	udata_ovr	0x0fea
_FSR1L_SHAD
	res	1
UD_abs_pic16f1784_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic16f1784_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic16f1784_fee	udata_ovr	0x0fee
_TOSL
	res	1
UD_abs_pic16f1784_fef	udata_ovr	0x0fef
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
code_pic16f1784	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
