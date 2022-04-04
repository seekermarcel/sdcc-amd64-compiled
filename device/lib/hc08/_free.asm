;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:33 2022
;--------------------------------------------------------
	.module _free
	.optsdcc -mhc08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_find_memheader
	.globl __sdcc_prev_memheader
	.globl _free
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_free_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
__sdcc_prev_memheader::
	.ds 2
__sdcc_find_memheader_pthis_1_6:
	.ds 2
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
;Allocation info for local variables in function '_sdcc_find_memheader'
;------------------------------------------------------------
;p                         Allocated to registers x h 
;pthis                     Allocated with name '__sdcc_find_memheader_pthis_1_6'
;cur_header                Allocated to registers a x 
;------------------------------------------------------------
;../_free.c:129: MEMHEADER __xdata * _sdcc_find_memheader(void __xdata * p)
;	-----------------------------------------
;	 function _sdcc_find_memheader
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__sdcc_find_memheader:
	pshx
	tax
	pulh
;../_free.c:134: if (!p)
	cphx	#0x00
	bne	00102$
;../_free.c:135: return NULL;
	clra
	tax
	rts
00102$:
;../_free.c:136: pthis = (MEMHEADER __xdata *) p;
;../_free.c:137: pthis -= 1; //to start of header
	aix	#-4
	pshh
	pula
	sta	__sdcc_find_memheader_pthis_1_6
	stx	(__sdcc_find_memheader_pthis_1_6 + 1)
;../_free.c:138: cur_header = _sdcc_first_memheader;
	ldx	__sdcc_first_memheader
	lda	(__sdcc_first_memheader + 1)
;../_free.c:139: _sdcc_prev_memheader = NULL;
	psha
	clra
	sta	__sdcc_prev_memheader
	clra
	sta	(__sdcc_prev_memheader + 1)
	pula
;../_free.c:140: while (cur_header && pthis != cur_header)
00104$:
	tsta
	bne	00126$
	tstx
00126$:
	beq	00106$
	cmp	(__sdcc_find_memheader_pthis_1_6 + 1)
	bne	00128$
	cpx	__sdcc_find_memheader_pthis_1_6
	beq	00106$
00128$:
;../_free.c:142: _sdcc_prev_memheader = cur_header;
	stx	__sdcc_prev_memheader
	sta	(__sdcc_prev_memheader + 1)
;../_free.c:143: cur_header = cur_header->next;
	pshx
	pulh
	tax
	lda	1,x
	ldx	,x
	bra	00104$
00106$:
;../_free.c:145: return (cur_header);
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'free'
;------------------------------------------------------------
;sloc0                     Allocated with name '_free_sloc0_1_0'
;p                         Allocated to registers a x 
;pthis                     Allocated to registers x h 
;------------------------------------------------------------
;../_free.c:148: void free (void * p)
;	-----------------------------------------
;	 function free
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_free:
;../_free.c:154: pthis = _sdcc_find_memheader(p);
	jsr	__sdcc_find_memheader
	psha
	pshx
	pulh
	pulx
;../_free.c:155: if (pthis) //For allocated pointers only!
	cphx	#0x00
	beq	00106$
;../_free.c:157: if (!_sdcc_prev_memheader)
	lda	__sdcc_prev_memheader
	ora	(__sdcc_prev_memheader + 1)
	bne	00102$
;../_free.c:159: pthis->len = 0;
	clra
	sta	2,x
	sta	3,x
	rts
00102$:
;../_free.c:163: _sdcc_prev_memheader->next = pthis->next;
	lda	__sdcc_prev_memheader
	sta	*_free_sloc0_1_0
	lda	(__sdcc_prev_memheader + 1)
	sta	*(_free_sloc0_1_0 + 1)
	lda	,x
	ldx	1,x
	pshx
	ldhx	*_free_sloc0_1_0
	sta	,x
	pula
	sta	1,x
00106$:
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
