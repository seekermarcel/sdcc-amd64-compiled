;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:30 2022
;--------------------------------------------------------
	.module _gptrget
	.optsdcc -mds400 --model-flat24
	
;--------------------------------------------------------
; CPU specific extensions
;--------------------------------------------------------
	.DS80C390
	.amode	2	; 24 bit flat addressing
dpl	=	0x82
dph	=	0x83
dpl1	=	0x84
dph1	=	0x85
dps	=	0x86
dpx	=	0x93
dpx1	=	0x95
esp	=	0x9B
ap	=	0x9C
acc1	=	0x9C
mcnt0	=	0xD1
mcnt1	=	0xD2
ma	=	0xD3
mb	=	0xD4
mc	=	0xD5
acon	=	0x9D
F1	=	0xD1	; user flag
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __gptrget
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
_B_7	=	0x00f7
_B_6	=	0x00f6
_B_5	=	0x00f5
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_3	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '_gptrget'
;------------------------------------------------------------
;gptr                      Allocated to registers 
;------------------------------------------------------------
;	_gptrget.c:167: _gptrget (char *gptr) __naked
;	-----------------------------------------
;	 function _gptrget
;	-----------------------------------------
__gptrget:
;	naked function: no prologue.
;	_gptrget.c:214: __endasm;
;
; depending on the pointer type acc. to SDCCsymt.h
;
	jb _B_7,codeptr$ ; >0x80 code ; 3
	jnb _B_6,xdataptr$ ; <0x40 far ; 3
	mov dph,r0 ; save r0 independant of regbank ; 2
	mov r0,dpl ; use only low order address ; 2
	jb _B_5,pdataptr$ ; >0x60 pdata ; 3
;
; Pointer to data space
;
	mov a,@r0 ; 1
	 dataptrrestore$:
	mov r0,dph ; restore r0 ; 2
	mov dph,#0 ; restore dph ; 2
	ret ; 1
;
; pointer to xternal stack or pdata
;
	 pdataptr$:
	movx a,@r0 ; 1
	sjmp dataptrrestore$ ; 2
;
; pointer to code area, max 16 bits
;
	 codeptr$:
	clr a ; 1
	movc a,@a+dptr ; 1
	ret ; 1
;
; pointer to xternal data, max 16 bits
;
	 xdataptr$:
	movx a,@dptr ; 1
	ret ; 1
;===
;27 bytes
00101$:
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
