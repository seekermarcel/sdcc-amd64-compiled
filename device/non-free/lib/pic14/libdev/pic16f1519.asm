;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:35 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f1519.c"
	list	p=16f1519
	radix dec
	include "p16f1519.inc"
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
	global	_OPTION_REGbits
	global	_PCONbits
	global	_WDTCONbits
	global	_OSCCONbits
	global	_OSCSTATbits
	global	_ADCON0bits
	global	_ADCON1bits
	global	_LATAbits
	global	_LATBbits
	global	_LATCbits
	global	_LATDbits
	global	_LATEbits
	global	_BORCONbits
	global	_FVRCONbits
	global	_APFCONbits
	global	_ANSELAbits
	global	_ANSELBbits
	global	_ANSELCbits
	global	_ANSELDbits
	global	_ANSELEbits
	global	_PMCON1bits
	global	_VREGCONbits
	global	_RCSTAbits
	global	_TXSTAbits
	global	_BAUDCONbits
	global	_WPUBbits
	global	_WPUEbits
	global	_SSP1STATbits
	global	_SSPSTATbits
	global	_SSP1CON1bits
	global	_SSPCONbits
	global	_SSPCON1bits
	global	_SSP1CON2bits
	global	_SSPCON2bits
	global	_SSP1CON3bits
	global	_SSPCON3bits
	global	_CCP1CONbits
	global	_CCP2CONbits
	global	_IOCBPbits
	global	_IOCBNbits
	global	_IOCBFbits
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
	global	_OPTION_REG
	global	_PCON
	global	_WDTCON
	global	_OSCCON
	global	_OSCSTAT
	global	_ADRES
	global	_ADRESL
	global	_ADRESH
	global	_ADCON0
	global	_ADCON1
	global	_LATA
	global	_LATB
	global	_LATC
	global	_LATD
	global	_LATE
	global	_BORCON
	global	_FVRCON
	global	_APFCON
	global	_ANSELA
	global	_ANSELB
	global	_ANSELC
	global	_ANSELD
	global	_ANSELE
	global	_PMADR
	global	_PMADRL
	global	_PMADRH
	global	_PMDAT
	global	_PMDATL
	global	_PMDATH
	global	_PMCON1
	global	_PMCON2
	global	_VREGCON
	global	_RCREG
	global	_TXREG
	global	_SP1BRG
	global	_SP1BRGL
	global	_SPBRG
	global	_SPBRGL
	global	_SP1BRGH
	global	_SPBRGH
	global	_RCSTA
	global	_TXSTA
	global	_BAUDCON
	global	_WPUB
	global	_WPUE
	global	_SSP1BUF
	global	_SSPBUF
	global	_SSP1ADD
	global	_SSPADD
	global	_SSP1MSK
	global	_SSPMSK
	global	_SSP1STAT
	global	_SSPSTAT
	global	_SSP1CON1
	global	_SSPCON
	global	_SSPCON1
	global	_SSP1CON2
	global	_SSPCON2
	global	_SSP1CON3
	global	_SSPCON3
	global	_CCPR1
	global	_CCPR1L
	global	_CCPR1H
	global	_CCP1CON
	global	_CCPR2
	global	_CCPR2L
	global	_CCPR2H
	global	_CCP2CON
	global	_IOCBP
	global	_IOCBN
	global	_IOCBF
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
UD_abs_pic16f1519_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic16f1519_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic16f1519_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f1519_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16f1519_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic16f1519_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic16f1519_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic16f1519_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic16f1519_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic16f1519_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic16f1519_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f1519_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16f1519_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic16f1519_d	udata_ovr	0x000d
_PORTBbits
_PORTB
	res	1
UD_abs_pic16f1519_e	udata_ovr	0x000e
_PORTCbits
_PORTC
	res	1
UD_abs_pic16f1519_f	udata_ovr	0x000f
_PORTDbits
_PORTD
	res	1
UD_abs_pic16f1519_10	udata_ovr	0x0010
_PORTEbits
_PORTE
	res	1
UD_abs_pic16f1519_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic16f1519_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic16f1519_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic16f1519_16	udata_ovr	0x0016
_TMR1
_TMR1L
	res	1
UD_abs_pic16f1519_17	udata_ovr	0x0017
_TMR1H
	res	1
UD_abs_pic16f1519_18	udata_ovr	0x0018
_T1CONbits
_T1CON
	res	1
UD_abs_pic16f1519_19	udata_ovr	0x0019
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic16f1519_1a	udata_ovr	0x001a
_TMR2
	res	1
UD_abs_pic16f1519_1b	udata_ovr	0x001b
_PR2
	res	1
UD_abs_pic16f1519_1c	udata_ovr	0x001c
_T2CONbits
_T2CON
	res	1
UD_abs_pic16f1519_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic16f1519_8d	udata_ovr	0x008d
_TRISBbits
_TRISB
	res	1
UD_abs_pic16f1519_8e	udata_ovr	0x008e
_TRISCbits
_TRISC
	res	1
UD_abs_pic16f1519_8f	udata_ovr	0x008f
_TRISDbits
_TRISD
	res	1
UD_abs_pic16f1519_90	udata_ovr	0x0090
_TRISEbits
_TRISE
	res	1
UD_abs_pic16f1519_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic16f1519_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic16f1519_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16f1519_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic16f1519_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16f1519_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16f1519_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic16f1519_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic16f1519_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic16f1519_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16f1519_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16f1519_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic16f1519_10d	udata_ovr	0x010d
_LATBbits
_LATB
	res	1
UD_abs_pic16f1519_10e	udata_ovr	0x010e
_LATCbits
_LATC
	res	1
UD_abs_pic16f1519_10f	udata_ovr	0x010f
_LATDbits
_LATD
	res	1
UD_abs_pic16f1519_110	udata_ovr	0x0110
_LATEbits
_LATE
	res	1
UD_abs_pic16f1519_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic16f1519_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic16f1519_11d	udata_ovr	0x011d
_APFCONbits
_APFCON
	res	1
UD_abs_pic16f1519_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic16f1519_18d	udata_ovr	0x018d
_ANSELBbits
_ANSELB
	res	1
UD_abs_pic16f1519_18e	udata_ovr	0x018e
_ANSELCbits
_ANSELC
	res	1
UD_abs_pic16f1519_18f	udata_ovr	0x018f
_ANSELDbits
_ANSELD
	res	1
UD_abs_pic16f1519_190	udata_ovr	0x0190
_ANSELEbits
_ANSELE
	res	1
UD_abs_pic16f1519_191	udata_ovr	0x0191
_PMADR
_PMADRL
	res	1
UD_abs_pic16f1519_192	udata_ovr	0x0192
_PMADRH
	res	1
UD_abs_pic16f1519_193	udata_ovr	0x0193
_PMDAT
_PMDATL
	res	1
UD_abs_pic16f1519_194	udata_ovr	0x0194
_PMDATH
	res	1
UD_abs_pic16f1519_195	udata_ovr	0x0195
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic16f1519_196	udata_ovr	0x0196
_PMCON2
	res	1
UD_abs_pic16f1519_197	udata_ovr	0x0197
_VREGCONbits
_VREGCON
	res	1
UD_abs_pic16f1519_199	udata_ovr	0x0199
_RCREG
	res	1
UD_abs_pic16f1519_19a	udata_ovr	0x019a
_TXREG
	res	1
UD_abs_pic16f1519_19b	udata_ovr	0x019b
_SP1BRG
_SP1BRGL
_SPBRG
_SPBRGL
	res	1
UD_abs_pic16f1519_19c	udata_ovr	0x019c
_SP1BRGH
_SPBRGH
	res	1
UD_abs_pic16f1519_19d	udata_ovr	0x019d
_RCSTAbits
_RCSTA
	res	1
UD_abs_pic16f1519_19e	udata_ovr	0x019e
_TXSTAbits
_TXSTA
	res	1
UD_abs_pic16f1519_19f	udata_ovr	0x019f
_BAUDCONbits
_BAUDCON
	res	1
UD_abs_pic16f1519_20d	udata_ovr	0x020d
_WPUBbits
_WPUB
	res	1
UD_abs_pic16f1519_210	udata_ovr	0x0210
_WPUEbits
_WPUE
	res	1
UD_abs_pic16f1519_211	udata_ovr	0x0211
_SSP1BUF
_SSPBUF
	res	1
UD_abs_pic16f1519_212	udata_ovr	0x0212
_SSP1ADD
_SSPADD
	res	1
UD_abs_pic16f1519_213	udata_ovr	0x0213
_SSP1MSK
_SSPMSK
	res	1
UD_abs_pic16f1519_214	udata_ovr	0x0214
_SSP1STATbits
_SSPSTATbits
_SSP1STAT
_SSPSTAT
	res	1
UD_abs_pic16f1519_215	udata_ovr	0x0215
_SSP1CON1bits
_SSPCONbits
_SSPCON1bits
_SSP1CON1
_SSPCON
_SSPCON1
	res	1
UD_abs_pic16f1519_216	udata_ovr	0x0216
_SSP1CON2bits
_SSPCON2bits
_SSP1CON2
_SSPCON2
	res	1
UD_abs_pic16f1519_217	udata_ovr	0x0217
_SSP1CON3bits
_SSPCON3bits
_SSP1CON3
_SSPCON3
	res	1
UD_abs_pic16f1519_291	udata_ovr	0x0291
_CCPR1
_CCPR1L
	res	1
UD_abs_pic16f1519_292	udata_ovr	0x0292
_CCPR1H
	res	1
UD_abs_pic16f1519_293	udata_ovr	0x0293
_CCP1CONbits
_CCP1CON
	res	1
UD_abs_pic16f1519_298	udata_ovr	0x0298
_CCPR2
_CCPR2L
	res	1
UD_abs_pic16f1519_299	udata_ovr	0x0299
_CCPR2H
	res	1
UD_abs_pic16f1519_29a	udata_ovr	0x029a
_CCP2CONbits
_CCP2CON
	res	1
UD_abs_pic16f1519_394	udata_ovr	0x0394
_IOCBPbits
_IOCBP
	res	1
UD_abs_pic16f1519_395	udata_ovr	0x0395
_IOCBNbits
_IOCBN
	res	1
UD_abs_pic16f1519_396	udata_ovr	0x0396
_IOCBFbits
_IOCBF
	res	1
UD_abs_pic16f1519_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic16f1519_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic16f1519_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic16f1519_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic16f1519_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
	res	1
UD_abs_pic16f1519_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic16f1519_fea	udata_ovr	0x0fea
_FSR1L_SHAD
	res	1
UD_abs_pic16f1519_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic16f1519_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic16f1519_fee	udata_ovr	0x0fee
_TOSL
	res	1
UD_abs_pic16f1519_fef	udata_ovr	0x0fef
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
code_pic16f1519	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
