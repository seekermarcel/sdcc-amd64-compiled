;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:51 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16lf1907.c"
	list	p=16lf1907
	radix dec
	include "p16lf1907.inc"
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
	global	_ANSELAbits
	global	_ANSELBbits
	global	_ANSELEbits
	global	_PMCON1bits
	global	_SP1BRGLbits
	global	_SPBRGbits
	global	_SPBRGLbits
	global	_SPBRGL1bits
	global	_SP1BRGHbits
	global	_SPBRGHbits
	global	_SPBRGH1bits
	global	_RC1STAbits
	global	_RCSTAbits
	global	_RCSTA1bits
	global	_TX1STAbits
	global	_TXSTAbits
	global	_TXSTA1bits
	global	_BAUD1CONbits
	global	_BAUDCONbits
	global	_BAUDCON1bits
	global	_WPUBbits
	global	_WPUEbits
	global	_IOCBPbits
	global	_IOCBNbits
	global	_IOCBFbits
	global	_LCDCONbits
	global	_LCDPSbits
	global	_LCDREFbits
	global	_LCDCSTbits
	global	_LCDRLbits
	global	_LCDSE0bits
	global	_LCDSE1bits
	global	_LCDSE2bits
	global	_LCDSE3bits
	global	_LCDDATA0bits
	global	_LCDDATA1bits
	global	_LCDDATA2bits
	global	_LCDDATA3bits
	global	_LCDDATA4bits
	global	_LCDDATA5bits
	global	_LCDDATA6bits
	global	_LCDDATA7bits
	global	_LCDDATA8bits
	global	_LCDDATA9bits
	global	_LCDDATA10bits
	global	_LCDDATA11bits
	global	_LCDDATA12bits
	global	_LCDDATA15bits
	global	_LCDDATA18bits
	global	_LCDDATA21bits
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
	global	_ANSELA
	global	_ANSELB
	global	_ANSELE
	global	_PMADR
	global	_PMADRL
	global	_PMADRH
	global	_PMDAT
	global	_PMDATL
	global	_PMDATH
	global	_PMCON1
	global	_PMCON2
	global	_RC1REG
	global	_RCREG
	global	_RCREG1
	global	_TX1REG
	global	_TXREG
	global	_TXREG1
	global	_SP1BRG
	global	_SP1BRGL
	global	_SPBRG
	global	_SPBRGL
	global	_SPBRGL1
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
	global	_WPUB
	global	_WPUE
	global	_IOCBP
	global	_IOCBN
	global	_IOCBF
	global	_LCDCON
	global	_LCDPS
	global	_LCDREF
	global	_LCDCST
	global	_LCDRL
	global	_LCDSE0
	global	_LCDSE1
	global	_LCDSE2
	global	_LCDSE3
	global	_LCDDATA0
	global	_LCDDATA1
	global	_LCDDATA2
	global	_LCDDATA3
	global	_LCDDATA4
	global	_LCDDATA5
	global	_LCDDATA6
	global	_LCDDATA7
	global	_LCDDATA8
	global	_LCDDATA9
	global	_LCDDATA10
	global	_LCDDATA11
	global	_LCDDATA12
	global	_LCDDATA15
	global	_LCDDATA18
	global	_LCDDATA21
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
UD_abs_pic16lf1907_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic16lf1907_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic16lf1907_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16lf1907_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic16lf1907_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic16lf1907_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic16lf1907_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic16lf1907_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic16lf1907_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic16lf1907_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic16lf1907_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16lf1907_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic16lf1907_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic16lf1907_d	udata_ovr	0x000d
_PORTBbits
_PORTB
	res	1
UD_abs_pic16lf1907_e	udata_ovr	0x000e
_PORTCbits
_PORTC
	res	1
UD_abs_pic16lf1907_f	udata_ovr	0x000f
_PORTDbits
_PORTD
	res	1
UD_abs_pic16lf1907_10	udata_ovr	0x0010
_PORTEbits
_PORTE
	res	1
UD_abs_pic16lf1907_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic16lf1907_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic16lf1907_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic16lf1907_16	udata_ovr	0x0016
_TMR1
_TMR1L
	res	1
UD_abs_pic16lf1907_17	udata_ovr	0x0017
_TMR1H
	res	1
UD_abs_pic16lf1907_18	udata_ovr	0x0018
_T1CONbits
_T1CON
	res	1
UD_abs_pic16lf1907_19	udata_ovr	0x0019
_T1GCONbits
_T1GCON
	res	1
UD_abs_pic16lf1907_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic16lf1907_8d	udata_ovr	0x008d
_TRISBbits
_TRISB
	res	1
UD_abs_pic16lf1907_8e	udata_ovr	0x008e
_TRISCbits
_TRISC
	res	1
UD_abs_pic16lf1907_8f	udata_ovr	0x008f
_TRISDbits
_TRISD
	res	1
UD_abs_pic16lf1907_90	udata_ovr	0x0090
_TRISEbits
_TRISE
	res	1
UD_abs_pic16lf1907_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic16lf1907_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic16lf1907_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic16lf1907_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic16lf1907_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic16lf1907_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic16lf1907_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic16lf1907_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic16lf1907_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic16lf1907_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic16lf1907_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic16lf1907_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic16lf1907_10d	udata_ovr	0x010d
_LATBbits
_LATB
	res	1
UD_abs_pic16lf1907_10e	udata_ovr	0x010e
_LATCbits
_LATC
	res	1
UD_abs_pic16lf1907_10f	udata_ovr	0x010f
_LATDbits
_LATD
	res	1
UD_abs_pic16lf1907_110	udata_ovr	0x0110
_LATEbits
_LATE
	res	1
UD_abs_pic16lf1907_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic16lf1907_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic16lf1907_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic16lf1907_18d	udata_ovr	0x018d
_ANSELBbits
_ANSELB
	res	1
UD_abs_pic16lf1907_190	udata_ovr	0x0190
_ANSELEbits
_ANSELE
	res	1
UD_abs_pic16lf1907_191	udata_ovr	0x0191
_PMADR
_PMADRL
	res	1
UD_abs_pic16lf1907_192	udata_ovr	0x0192
_PMADRH
	res	1
UD_abs_pic16lf1907_193	udata_ovr	0x0193
_PMDAT
_PMDATL
	res	1
UD_abs_pic16lf1907_194	udata_ovr	0x0194
_PMDATH
	res	1
UD_abs_pic16lf1907_195	udata_ovr	0x0195
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic16lf1907_196	udata_ovr	0x0196
_PMCON2
	res	1
UD_abs_pic16lf1907_199	udata_ovr	0x0199
_RC1REG
_RCREG
_RCREG1
	res	1
UD_abs_pic16lf1907_19a	udata_ovr	0x019a
_TX1REG
_TXREG
_TXREG1
	res	1
UD_abs_pic16lf1907_19b	udata_ovr	0x019b
_SP1BRGLbits
_SPBRGbits
_SPBRGLbits
_SPBRGL1bits
_SP1BRG
_SP1BRGL
_SPBRG
_SPBRGL
_SPBRGL1
	res	1
UD_abs_pic16lf1907_19c	udata_ovr	0x019c
_SP1BRGHbits
_SPBRGHbits
_SPBRGH1bits
_SP1BRGH
_SPBRGH
_SPBRGH1
	res	1
UD_abs_pic16lf1907_19d	udata_ovr	0x019d
_RC1STAbits
_RCSTAbits
_RCSTA1bits
_RC1STA
_RCSTA
_RCSTA1
	res	1
UD_abs_pic16lf1907_19e	udata_ovr	0x019e
_TX1STAbits
_TXSTAbits
_TXSTA1bits
_TX1STA
_TXSTA
_TXSTA1
	res	1
UD_abs_pic16lf1907_19f	udata_ovr	0x019f
_BAUD1CONbits
_BAUDCONbits
_BAUDCON1bits
_BAUD1CON
_BAUDCON
_BAUDCON1
	res	1
UD_abs_pic16lf1907_20d	udata_ovr	0x020d
_WPUBbits
_WPUB
	res	1
UD_abs_pic16lf1907_210	udata_ovr	0x0210
_WPUEbits
_WPUE
	res	1
UD_abs_pic16lf1907_394	udata_ovr	0x0394
_IOCBPbits
_IOCBP
	res	1
UD_abs_pic16lf1907_395	udata_ovr	0x0395
_IOCBNbits
_IOCBN
	res	1
UD_abs_pic16lf1907_396	udata_ovr	0x0396
_IOCBFbits
_IOCBF
	res	1
UD_abs_pic16lf1907_791	udata_ovr	0x0791
_LCDCONbits
_LCDCON
	res	1
UD_abs_pic16lf1907_792	udata_ovr	0x0792
_LCDPSbits
_LCDPS
	res	1
UD_abs_pic16lf1907_793	udata_ovr	0x0793
_LCDREFbits
_LCDREF
	res	1
UD_abs_pic16lf1907_794	udata_ovr	0x0794
_LCDCSTbits
_LCDCST
	res	1
UD_abs_pic16lf1907_795	udata_ovr	0x0795
_LCDRLbits
_LCDRL
	res	1
UD_abs_pic16lf1907_798	udata_ovr	0x0798
_LCDSE0bits
_LCDSE0
	res	1
UD_abs_pic16lf1907_799	udata_ovr	0x0799
_LCDSE1bits
_LCDSE1
	res	1
UD_abs_pic16lf1907_79a	udata_ovr	0x079a
_LCDSE2bits
_LCDSE2
	res	1
UD_abs_pic16lf1907_79b	udata_ovr	0x079b
_LCDSE3bits
_LCDSE3
	res	1
UD_abs_pic16lf1907_7a0	udata_ovr	0x07a0
_LCDDATA0bits
_LCDDATA0
	res	1
UD_abs_pic16lf1907_7a1	udata_ovr	0x07a1
_LCDDATA1bits
_LCDDATA1
	res	1
UD_abs_pic16lf1907_7a2	udata_ovr	0x07a2
_LCDDATA2bits
_LCDDATA2
	res	1
UD_abs_pic16lf1907_7a3	udata_ovr	0x07a3
_LCDDATA3bits
_LCDDATA3
	res	1
UD_abs_pic16lf1907_7a4	udata_ovr	0x07a4
_LCDDATA4bits
_LCDDATA4
	res	1
UD_abs_pic16lf1907_7a5	udata_ovr	0x07a5
_LCDDATA5bits
_LCDDATA5
	res	1
UD_abs_pic16lf1907_7a6	udata_ovr	0x07a6
_LCDDATA6bits
_LCDDATA6
	res	1
UD_abs_pic16lf1907_7a7	udata_ovr	0x07a7
_LCDDATA7bits
_LCDDATA7
	res	1
UD_abs_pic16lf1907_7a8	udata_ovr	0x07a8
_LCDDATA8bits
_LCDDATA8
	res	1
UD_abs_pic16lf1907_7a9	udata_ovr	0x07a9
_LCDDATA9bits
_LCDDATA9
	res	1
UD_abs_pic16lf1907_7aa	udata_ovr	0x07aa
_LCDDATA10bits
_LCDDATA10
	res	1
UD_abs_pic16lf1907_7ab	udata_ovr	0x07ab
_LCDDATA11bits
_LCDDATA11
	res	1
UD_abs_pic16lf1907_7ac	udata_ovr	0x07ac
_LCDDATA12bits
_LCDDATA12
	res	1
UD_abs_pic16lf1907_7af	udata_ovr	0x07af
_LCDDATA15bits
_LCDDATA15
	res	1
UD_abs_pic16lf1907_7b2	udata_ovr	0x07b2
_LCDDATA18bits
_LCDDATA18
	res	1
UD_abs_pic16lf1907_7b5	udata_ovr	0x07b5
_LCDDATA21bits
_LCDDATA21
	res	1
UD_abs_pic16lf1907_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic16lf1907_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic16lf1907_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic16lf1907_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic16lf1907_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
	res	1
UD_abs_pic16lf1907_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic16lf1907_fea	udata_ovr	0x0fea
_FSR1L_SHAD
	res	1
UD_abs_pic16lf1907_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic16lf1907_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic16lf1907_fee	udata_ovr	0x0fee
_TOSL
	res	1
UD_abs_pic16lf1907_fef	udata_ovr	0x0fef
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
code_pic16lf1907	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
