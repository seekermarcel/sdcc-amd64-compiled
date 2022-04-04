;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:36 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f1703.c"
	list	p=16f1703
	radix dec
	include "p16f1703.inc"
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
	global	_PORTCbits
	global	_PIR1bits
	global	_PIR2bits
	global	_PIR3bits
	global	_T1CONbits
	global	_T1GCONbits
	global	_T2CONbits
	global	_TRISAbits
	global	_TRISCbits
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
	global	_LATCbits
	global	_BORCONbits
	global	_FVRCONbits
	global	_ZCD1CONbits
	global	_ANSELAbits
	global	_ANSELCbits
	global	_PMCON1bits
	global	_VREGCONbits
	global	_WPUAbits
	global	_WPUCbits
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
	global	_ODCONCbits
	global	_CCP1CONbits
	global	_ECCP1CONbits
	global	_CCP2CONbits
	global	_SLRCONAbits
	global	_SLRCONCbits
	global	_INLVLAbits
	global	_INLVLCbits
	global	_IOCAPbits
	global	_IOCANbits
	global	_IOCAFbits
	global	_IOCCPbits
	global	_IOCCNbits
	global	_IOCCFbits
	global	_OPA1CONbits
	global	_OPA2CONbits
	global	_PPSLOCKbits
	global	_ICDBK0Hbits
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
	global	_PORTC
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
	global	_TRISC
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
	global	_LATC
	global	_BORCON
	global	_FVRCON
	global	_ZCD1CON
	global	_ANSELA
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
	global	_WPUA
	global	_WPUC
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
	global	_SLRCONA
	global	_SLRCONC
	global	_INLVLA
	global	_INLVLC
	global	_IOCAP
	global	_IOCAN
	global	_IOCAF
	global	_IOCCP
	global	_IOCCN
	global	_IOCCF
	global	_OPA1CON
	global	_OPA2CON
	global	_PPSLOCK
	global	_INTPPS
	global	_T0CKIPPS
	global	_T1CKIPPS
	global	_T1GPPS
	global	_CCP1PPS
	global	_CCP2PPS
	global	_SSPCLKPPS
	global	_SSPDATPPS
	global	_SSPSSPPS
	global	_RA0PPS
	global	_RA1PPS
	global	_RA2PPS
	global	_RA4PPS
	global	_RA5PPS
	global	_RC0PPS
	global	_RC1PPS
	global	_RC2PPS
	global	_RC3PPS
	global	_RC4PPS
	global	_RC5PPS
	global	_ICDBK0H
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
UD_abs_pic16f1703_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic16f1703_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic16f1703_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f1703_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f1703_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic16f1703_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic16f1703_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic16f1703_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic16f1703_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic16f1703_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic16f1703_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f1703_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f1703_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f1703_e	udata_ovr	0x000e
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f1703_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f1703_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f1703_13	udata_ovr	0x0013
_PIR3bits
_PIR3
	res	1
UD_abs_pic16f1703_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic16f1703_16	udata_ovr	0x0016
_TMR1
_TMR1L
	res	1
UD_abs_pic16f1703_17	udata_ovr	0x0017
_TMR1H
	res	1
UD_abs_pic16f1703_18	udata_ovr	0x0018
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f1703_19	udata_ovr	0x0019
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic16f1703_1a	udata_ovr	0x001a
_TMR2
	res	1
UD_abs_pic16f1703_1b	udata_ovr	0x001b
_PR2
	res	1
UD_abs_pic16f1703_1c	udata_ovr	0x001c
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f1703_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f1703_8e	udata_ovr	0x008e
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f1703_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f1703_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f1703_93	udata_ovr	0x0093
_PIE3bits
_PIE3
	res	1
UD_abs_pic16f1703_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f1703_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic16f1703_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f1703_98	udata_ovr	0x0098
_OSCTUNEbits
_OSCTUNE
	res	1
UD_abs_pic16f1703_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f1703_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic16f1703_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic16f1703_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic16f1703_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f1703_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f1703_9f	udata_ovr	0x009f
_ADCON2bits
_ADCON2
	res	1
UD_abs_pic16f1703_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic16f1703_10e	udata_ovr	0x010e
_LATCbits
_LATC
	res	1
UD_abs_pic16f1703_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic16f1703_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic16f1703_11c	udata_ovr	0x011c
_ZCD1CONbits
_ZCD1CON
	res	1
UD_abs_pic16f1703_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic16f1703_18e	udata_ovr	0x018e
_ANSELCbits
_ANSELC
	res	1
UD_abs_pic16f1703_191	udata_ovr	0x0191
_PMADR
_PMADRL
	res	1
UD_abs_pic16f1703_192	udata_ovr	0x0192
_PMADRH
	res	1
UD_abs_pic16f1703_193	udata_ovr	0x0193
_PMDAT
_PMDATL
	res	1
UD_abs_pic16f1703_194	udata_ovr	0x0194
_PMDATH
	res	1
UD_abs_pic16f1703_195	udata_ovr	0x0195
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic16f1703_196	udata_ovr	0x0196
_PMCON2
	res	1
UD_abs_pic16f1703_197	udata_ovr	0x0197
_VREGCONbits
_VREGCON
	res	1
UD_abs_pic16f1703_20c	udata_ovr	0x020c
_WPUAbits
_WPUA
	res	1
UD_abs_pic16f1703_20e	udata_ovr	0x020e
_WPUCbits
_WPUC
	res	1
UD_abs_pic16f1703_211	udata_ovr	0x0211
_SSP1BUFbits
_SSPBUFbits
_SSP1BUF
_SSPBUF
	res	1
UD_abs_pic16f1703_212	udata_ovr	0x0212
_SSP1ADDbits
_SSPADDbits
_SSP1ADD
_SSPADD
	res	1
UD_abs_pic16f1703_213	udata_ovr	0x0213
_SSP1MSKbits
_SSPMSKbits
_SSP1MSK
_SSPMSK
	res	1
UD_abs_pic16f1703_214	udata_ovr	0x0214
_SSP1STATbits
_SSPSTATbits
_SSP1STAT
_SSPSTAT
	res	1
UD_abs_pic16f1703_215	udata_ovr	0x0215
_SSP1CONbits
_SSP1CON1bits
_SSPCONbits
_SSPCON1bits
_SSP1CON
_SSP1CON1
_SSPCON
_SSPCON1
	res	1
UD_abs_pic16f1703_216	udata_ovr	0x0216
_SSP1CON2bits
_SSPCON2bits
_SSP1CON2
_SSPCON2
	res	1
UD_abs_pic16f1703_217	udata_ovr	0x0217
_SSP1CON3bits
_SSPCON3bits
_SSP1CON3
_SSPCON3
	res	1
UD_abs_pic16f1703_28c	udata_ovr	0x028c
_ODCONAbits
_ODCONA
	res	1
UD_abs_pic16f1703_28e	udata_ovr	0x028e
_ODCONCbits
_ODCONC
	res	1
UD_abs_pic16f1703_291	udata_ovr	0x0291
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f1703_292	udata_ovr	0x0292
_CCPR1H
	res	1
UD_abs_pic16f1703_293	udata_ovr	0x0293
_CCP1CONbits
_ECCP1CONbits
_CCP1CON
_ECCP1CON
	res	1
UD_abs_pic16f1703_298	udata_ovr	0x0298
_CCPR2
_CCPR2L
	res	1
UD_abs_pic16f1703_299	udata_ovr	0x0299
_CCPR2H
	res	1
UD_abs_pic16f1703_29a	udata_ovr	0x029a
_CCP2CONbits
_CCP2CON
	res	1
UD_abs_pic16f1703_30c	udata_ovr	0x030c
_SLRCONAbits
_SLRCONA
	res	1
UD_abs_pic16f1703_30e	udata_ovr	0x030e
_SLRCONCbits
_SLRCONC
	res	1
UD_abs_pic16f1703_38c	udata_ovr	0x038c
_INLVLAbits
_INLVLA
	res	1
UD_abs_pic16f1703_38e	udata_ovr	0x038e
_INLVLCbits
_INLVLC
	res	1
UD_abs_pic16f1703_391	udata_ovr	0x0391
_IOCAPbits
_IOCAP
	res	1
UD_abs_pic16f1703_392	udata_ovr	0x0392
_IOCANbits
_IOCAN
	res	1
UD_abs_pic16f1703_393	udata_ovr	0x0393
_IOCAFbits
_IOCAF
	res	1
UD_abs_pic16f1703_397	udata_ovr	0x0397
_IOCCPbits
_IOCCP
	res	1
UD_abs_pic16f1703_398	udata_ovr	0x0398
_IOCCNbits
_IOCCN
	res	1
UD_abs_pic16f1703_399	udata_ovr	0x0399
_IOCCFbits
_IOCCF
	res	1
UD_abs_pic16f1703_511	udata_ovr	0x0511
_OPA1CONbits
_OPA1CON
	res	1
UD_abs_pic16f1703_515	udata_ovr	0x0515
_OPA2CONbits
_OPA2CON
	res	1
UD_abs_pic16f1703_e0f	udata_ovr	0x0e0f
_PPSLOCKbits
_PPSLOCK
	res	1
UD_abs_pic16f1703_e10	udata_ovr	0x0e10
_INTPPS
	res	1
UD_abs_pic16f1703_e11	udata_ovr	0x0e11
_T0CKIPPS
	res	1
UD_abs_pic16f1703_e12	udata_ovr	0x0e12
_T1CKIPPS
	res	1
UD_abs_pic16f1703_e13	udata_ovr	0x0e13
_T1GPPS
	res	1
UD_abs_pic16f1703_e14	udata_ovr	0x0e14
_CCP1PPS
	res	1
UD_abs_pic16f1703_e15	udata_ovr	0x0e15
_CCP2PPS
	res	1
UD_abs_pic16f1703_e20	udata_ovr	0x0e20
_SSPCLKPPS
	res	1
UD_abs_pic16f1703_e21	udata_ovr	0x0e21
_SSPDATPPS
	res	1
UD_abs_pic16f1703_e22	udata_ovr	0x0e22
_SSPSSPPS
	res	1
UD_abs_pic16f1703_e90	udata_ovr	0x0e90
_RA0PPS
	res	1
UD_abs_pic16f1703_e91	udata_ovr	0x0e91
_RA1PPS
	res	1
UD_abs_pic16f1703_e92	udata_ovr	0x0e92
_RA2PPS
	res	1
UD_abs_pic16f1703_e94	udata_ovr	0x0e94
_RA4PPS
	res	1
UD_abs_pic16f1703_e95	udata_ovr	0x0e95
_RA5PPS
	res	1
UD_abs_pic16f1703_ea0	udata_ovr	0x0ea0
_RC0PPS
	res	1
UD_abs_pic16f1703_ea1	udata_ovr	0x0ea1
_RC1PPS
	res	1
UD_abs_pic16f1703_ea2	udata_ovr	0x0ea2
_RC2PPS
	res	1
UD_abs_pic16f1703_ea3	udata_ovr	0x0ea3
_RC3PPS
	res	1
UD_abs_pic16f1703_ea4	udata_ovr	0x0ea4
_RC4PPS
	res	1
UD_abs_pic16f1703_ea5	udata_ovr	0x0ea5
_RC5PPS
	res	1
UD_abs_pic16f1703_f9e	udata_ovr	0x0f9e
_ICDBK0Hbits
_ICDBK0H
	res	1
UD_abs_pic16f1703_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic16f1703_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic16f1703_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic16f1703_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic16f1703_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
	res	1
UD_abs_pic16f1703_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic16f1703_fea	udata_ovr	0x0fea
_FSR1L_SHAD
	res	1
UD_abs_pic16f1703_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic16f1703_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic16f1703_fee	udata_ovr	0x0fee
_TOSL
	res	1
UD_abs_pic16f1703_fef	udata_ovr	0x0fef
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
code_pic16f1703	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
