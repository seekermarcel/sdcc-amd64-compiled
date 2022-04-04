;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:31 2022
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic12lf1552.c"
	list	p=12lf1552
	radix dec
	include "p12lf1552.inc"
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
	global	_PIR1bits
	global	_PIR2bits
	global	_TRISAbits
	global	_PIE1bits
	global	_PIE2bits
	global	_OPTION_REGbits
	global	_PCONbits
	global	_WDTCONbits
	global	_OSCCONbits
	global	_OSCSTATbits
	global	_ADCON0bits
	global	_ADCON1bits
	global	_ADCON2bits
	global	_LATAbits
	global	_BORCONbits
	global	_FVRCONbits
	global	_APFCONbits
	global	_APFCON0bits
	global	_ANSELAbits
	global	_PMCON1bits
	global	_WPUAbits
	global	_SSP1STATbits
	global	_SSPSTATbits
	global	_SSP1CON1bits
	global	_SSPCONbits
	global	_SSPCON1bits
	global	_SSP1CON2bits
	global	_SSPCON2bits
	global	_SSP1CON3bits
	global	_SSPCON3bits
	global	_IOCAPbits
	global	_IOCANbits
	global	_IOCAFbits
	global	_AADCON0bits
	global	_AADCON1bits
	global	_AADCON2bits
	global	_AADCON3bits
	global	_AADSTATbits
	global	_AADPREbits
	global	_AADACQbits
	global	_AADGRDbits
	global	_AADCAPbits
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
	global	_PIR1
	global	_PIR2
	global	_TMR0
	global	_TRISA
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
	global	_ADCON2
	global	_LATA
	global	_BORCON
	global	_FVRCON
	global	_APFCON
	global	_APFCON0
	global	_ANSELA
	global	_PMADR
	global	_PMADRL
	global	_PMADRH
	global	_PMDAT
	global	_PMDATL
	global	_PMDATH
	global	_PMCON1
	global	_PMCON2
	global	_WPUA
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
	global	_IOCAP
	global	_IOCAN
	global	_IOCAF
	global	_AADCON0
	global	_AADCON1
	global	_AADCON2
	global	_AADCON3
	global	_AADSTAT
	global	_AADPRE
	global	_AADACQ
	global	_AADGRD
	global	_AADCAP
	global	_AADRES0
	global	_AADRES0L
	global	_AADRES0H
	global	_AADRES1
	global	_AADRES1L
	global	_AADRES1H
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
UD_abs_pic12lf1552_0	udata_ovr	0x0000
_INDF0
	res	1
UD_abs_pic12lf1552_1	udata_ovr	0x0001
_INDF1
	res	1
UD_abs_pic12lf1552_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic12lf1552_3	udata_ovr	0x0003
_STATUSbits
_STATUS
	res	1
UD_abs_pic12lf1552_4	udata_ovr	0x0004
_FSR0
_FSR0L
	res	1
UD_abs_pic12lf1552_5	udata_ovr	0x0005
_FSR0H
	res	1
UD_abs_pic12lf1552_6	udata_ovr	0x0006
_FSR1
_FSR1L
	res	1
UD_abs_pic12lf1552_7	udata_ovr	0x0007
_FSR1H
	res	1
UD_abs_pic12lf1552_8	udata_ovr	0x0008
_BSRbits
_BSR
	res	1
UD_abs_pic12lf1552_9	udata_ovr	0x0009
_WREG
	res	1
UD_abs_pic12lf1552_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic12lf1552_b	udata_ovr	0x000b
_INTCONbits
_INTCON
	res	1
UD_abs_pic12lf1552_c	udata_ovr	0x000c
_PORTAbits
_PORTA
	res	1
UD_abs_pic12lf1552_11	udata_ovr	0x0011
_PIR1bits
_PIR1
	res	1
UD_abs_pic12lf1552_12	udata_ovr	0x0012
_PIR2bits
_PIR2
	res	1
UD_abs_pic12lf1552_15	udata_ovr	0x0015
_TMR0
	res	1
UD_abs_pic12lf1552_8c	udata_ovr	0x008c
_TRISAbits
_TRISA
	res	1
UD_abs_pic12lf1552_91	udata_ovr	0x0091
_PIE1bits
_PIE1
	res	1
UD_abs_pic12lf1552_92	udata_ovr	0x0092
_PIE2bits
_PIE2
	res	1
UD_abs_pic12lf1552_95	udata_ovr	0x0095
_OPTION_REGbits
_OPTION_REG
	res	1
UD_abs_pic12lf1552_96	udata_ovr	0x0096
_PCONbits
_PCON
	res	1
UD_abs_pic12lf1552_97	udata_ovr	0x0097
_WDTCONbits
_WDTCON
	res	1
UD_abs_pic12lf1552_99	udata_ovr	0x0099
_OSCCONbits
_OSCCON
	res	1
UD_abs_pic12lf1552_9a	udata_ovr	0x009a
_OSCSTATbits
_OSCSTAT
	res	1
UD_abs_pic12lf1552_9b	udata_ovr	0x009b
_ADRES
_ADRESL
	res	1
UD_abs_pic12lf1552_9c	udata_ovr	0x009c
_ADRESH
	res	1
UD_abs_pic12lf1552_9d	udata_ovr	0x009d
_ADCON0bits
_ADCON0
	res	1
UD_abs_pic12lf1552_9e	udata_ovr	0x009e
_ADCON1bits
_ADCON1
	res	1
UD_abs_pic12lf1552_9f	udata_ovr	0x009f
_ADCON2bits
_ADCON2
	res	1
UD_abs_pic12lf1552_10c	udata_ovr	0x010c
_LATAbits
_LATA
	res	1
UD_abs_pic12lf1552_116	udata_ovr	0x0116
_BORCONbits
_BORCON
	res	1
UD_abs_pic12lf1552_117	udata_ovr	0x0117
_FVRCONbits
_FVRCON
	res	1
UD_abs_pic12lf1552_11d	udata_ovr	0x011d
_APFCONbits
_APFCON0bits
_APFCON
_APFCON0
	res	1
UD_abs_pic12lf1552_18c	udata_ovr	0x018c
_ANSELAbits
_ANSELA
	res	1
UD_abs_pic12lf1552_191	udata_ovr	0x0191
_PMADR
_PMADRL
	res	1
UD_abs_pic12lf1552_192	udata_ovr	0x0192
_PMADRH
	res	1
UD_abs_pic12lf1552_193	udata_ovr	0x0193
_PMDAT
_PMDATL
	res	1
UD_abs_pic12lf1552_194	udata_ovr	0x0194
_PMDATH
	res	1
UD_abs_pic12lf1552_195	udata_ovr	0x0195
_PMCON1bits
_PMCON1
	res	1
UD_abs_pic12lf1552_196	udata_ovr	0x0196
_PMCON2
	res	1
UD_abs_pic12lf1552_20c	udata_ovr	0x020c
_WPUAbits
_WPUA
	res	1
UD_abs_pic12lf1552_211	udata_ovr	0x0211
_SSP1BUF
_SSPBUF
	res	1
UD_abs_pic12lf1552_212	udata_ovr	0x0212
_SSP1ADD
_SSPADD
	res	1
UD_abs_pic12lf1552_213	udata_ovr	0x0213
_SSP1MSK
_SSPMSK
	res	1
UD_abs_pic12lf1552_214	udata_ovr	0x0214
_SSP1STATbits
_SSPSTATbits
_SSP1STAT
_SSPSTAT
	res	1
UD_abs_pic12lf1552_215	udata_ovr	0x0215
_SSP1CON1bits
_SSPCONbits
_SSPCON1bits
_SSP1CON1
_SSPCON
_SSPCON1
	res	1
UD_abs_pic12lf1552_216	udata_ovr	0x0216
_SSP1CON2bits
_SSPCON2bits
_SSP1CON2
_SSPCON2
	res	1
UD_abs_pic12lf1552_217	udata_ovr	0x0217
_SSP1CON3bits
_SSPCON3bits
_SSP1CON3
_SSPCON3
	res	1
UD_abs_pic12lf1552_391	udata_ovr	0x0391
_IOCAPbits
_IOCAP
	res	1
UD_abs_pic12lf1552_392	udata_ovr	0x0392
_IOCANbits
_IOCAN
	res	1
UD_abs_pic12lf1552_393	udata_ovr	0x0393
_IOCAFbits
_IOCAF
	res	1
UD_abs_pic12lf1552_711	udata_ovr	0x0711
_AADCON0bits
_AADCON0
	res	1
UD_abs_pic12lf1552_712	udata_ovr	0x0712
_AADCON1bits
_AADCON1
	res	1
UD_abs_pic12lf1552_713	udata_ovr	0x0713
_AADCON2bits
_AADCON2
	res	1
UD_abs_pic12lf1552_714	udata_ovr	0x0714
_AADCON3bits
_AADCON3
	res	1
UD_abs_pic12lf1552_715	udata_ovr	0x0715
_AADSTATbits
_AADSTAT
	res	1
UD_abs_pic12lf1552_716	udata_ovr	0x0716
_AADPREbits
_AADPRE
	res	1
UD_abs_pic12lf1552_717	udata_ovr	0x0717
_AADACQbits
_AADACQ
	res	1
UD_abs_pic12lf1552_718	udata_ovr	0x0718
_AADGRDbits
_AADGRD
	res	1
UD_abs_pic12lf1552_719	udata_ovr	0x0719
_AADCAPbits
_AADCAP
	res	1
UD_abs_pic12lf1552_71a	udata_ovr	0x071a
_AADRES0
_AADRES0L
	res	1
UD_abs_pic12lf1552_71b	udata_ovr	0x071b
_AADRES0H
	res	1
UD_abs_pic12lf1552_71c	udata_ovr	0x071c
_AADRES1
_AADRES1L
	res	1
UD_abs_pic12lf1552_71d	udata_ovr	0x071d
_AADRES1H
	res	1
UD_abs_pic12lf1552_fe4	udata_ovr	0x0fe4
_STATUS_SHADbits
_STATUS_SHAD
	res	1
UD_abs_pic12lf1552_fe5	udata_ovr	0x0fe5
_WREG_SHAD
	res	1
UD_abs_pic12lf1552_fe6	udata_ovr	0x0fe6
_BSR_SHAD
	res	1
UD_abs_pic12lf1552_fe7	udata_ovr	0x0fe7
_PCLATH_SHAD
	res	1
UD_abs_pic12lf1552_fe8	udata_ovr	0x0fe8
_FSR0L_SHAD
	res	1
UD_abs_pic12lf1552_fe9	udata_ovr	0x0fe9
_FSR0H_SHAD
	res	1
UD_abs_pic12lf1552_fea	udata_ovr	0x0fea
_FSR1L_SHAD
	res	1
UD_abs_pic12lf1552_feb	udata_ovr	0x0feb
_FSR1H_SHAD
	res	1
UD_abs_pic12lf1552_fed	udata_ovr	0x0fed
_STKPTR
	res	1
UD_abs_pic12lf1552_fee	udata_ovr	0x0fee
_TOSL
	res	1
UD_abs_pic12lf1552_fef	udata_ovr	0x0fef
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
code_pic12lf1552	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
