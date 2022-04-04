;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:37 2022
;--------------------------------------------------------
	.cs08
	.module _malloc
	.optsdcc -ms08
	
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
	.globl __sdcc_first_memheader
	.globl _malloc
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_malloc_sloc0_1_0:
	.ds 2
_malloc_sloc1_1_0:
	.ds 2
_malloc_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_init_dynamic_memory_sloc0_1_0:
	.ds 2
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
__sdcc_first_memheader::
	.ds 2
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
_init_dynamic_memory_heap_1_6:
	.ds 2
_malloc_size_1_8:
	.ds 2
_malloc_current_header_1_9:
	.ds 2
_malloc_new_header_1_9:
	.ds 2
_malloc_ret_1_9:
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
;Allocation info for local variables in function 'init_dynamic_memory'
;------------------------------------------------------------
;heap                      Allocated with name '_init_dynamic_memory_heap_1_6'
;size                      Allocated to registers x h 
;sloc0                     Allocated with name '_init_dynamic_memory_sloc0_1_0'
;------------------------------------------------------------
;../_malloc.c:166: static void init_dynamic_memory(void)
;	-----------------------------------------
;	 function init_dynamic_memory
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_init_dynamic_memory:
;../_malloc.c:168: char __xdata * heap = (char __xdata *)_sdcc_heap;
	lda	#__sdcc_heap
	sta	(_init_dynamic_memory_heap_1_6 + 1)
	lda	#>__sdcc_heap
	sta	_init_dynamic_memory_heap_1_6
;../_malloc.c:169: unsigned int size = _sdcc_heap_size;
	ldhx	__sdcc_heap_size
;../_malloc.c:171: if ( !heap ) //Reserved memory starts at 0x0000 but that's NULL...
	lda	_init_dynamic_memory_heap_1_6
	ora	(_init_dynamic_memory_heap_1_6 + 1)
	bne	00102$
;../_malloc.c:173: heap++;
	pshx
	pshh
	ldhx	_init_dynamic_memory_heap_1_6
	aix	#1
	sthx	_init_dynamic_memory_heap_1_6
	pulh
	pulx
;../_malloc.c:174: size--;
	aix	#-1
00102$:
;../_malloc.c:176: _sdcc_first_memheader = (MEMHEADER __xdata * ) heap;
	lda	(_init_dynamic_memory_heap_1_6 + 1)
	sta	*(_init_dynamic_memory_sloc0_1_0 + 1)
	lda	_init_dynamic_memory_heap_1_6
	sta	*_init_dynamic_memory_sloc0_1_0
	lda	*_init_dynamic_memory_sloc0_1_0
	sta	__sdcc_first_memheader
	lda	*(_init_dynamic_memory_sloc0_1_0 + 1)
	sta	(__sdcc_first_memheader + 1)
;../_malloc.c:178: _sdcc_first_memheader->next = (MEMHEADER __xdata * )(heap + size - sizeof(MEMHEADER __xdata *));
	txa
	add	(_init_dynamic_memory_heap_1_6 + 1)
	tax
	pshh
	pula
	adc	_init_dynamic_memory_heap_1_6
	psha
	pulh
	aix	#-2
	pshx
	pshh
	txa
	pshh
	ldhx	*_init_dynamic_memory_sloc0_1_0
	sta	1,x
	pula
	sta	,x
	pulh
	pulx
;../_malloc.c:179: _sdcc_first_memheader->next->next = (MEMHEADER __xdata * ) NULL; //And mark it as last
	clra
	sta	,x
	sta	1,x
;../_malloc.c:180: _sdcc_first_memheader->len        = 0;    //Empty and ready.
	ldhx	*_init_dynamic_memory_sloc0_1_0
	sta	2,x
	sta	3,x
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'malloc'
;------------------------------------------------------------
;sloc0                     Allocated with name '_malloc_sloc0_1_0'
;sloc1                     Allocated with name '_malloc_sloc1_1_0'
;sloc2                     Allocated with name '_malloc_sloc2_1_0'
;size                      Allocated with name '_malloc_size_1_8'
;current_header            Allocated with name '_malloc_current_header_1_9'
;new_header                Allocated with name '_malloc_new_header_1_9'
;ret                       Allocated with name '_malloc_ret_1_9'
;------------------------------------------------------------
;../_malloc.c:183: void __xdata * malloc (unsigned int size)
;	-----------------------------------------
;	 function malloc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_malloc:
	pshx
	tax
	pulh
;../_malloc.c:189: if (size>(0xFFFF-HEADER_SIZE))
	cphx	#0xFFFB
	bls	00102$
;../_malloc.c:190: return (void __xdata *) NULL; //To prevent overflow in next line
	clra
	tax
	rts
00102$:
;../_malloc.c:191: size += HEADER_SIZE; //We need a memory for header too
	aix	#4
	sthx	_malloc_size_1_8
;../_malloc.c:193: if (!_sdcc_first_memheader)
	lda	__sdcc_first_memheader
	ora	(__sdcc_first_memheader + 1)
	bne	00104$
;../_malloc.c:194: init_dynamic_memory();
	jsr	_init_dynamic_memory
00104$:
;../_malloc.c:196: current_header = _sdcc_first_memheader;
	ldhx	__sdcc_first_memheader
	sthx	_malloc_current_header_1_9
;../_malloc.c:199: while (1)
00110$:
;../_malloc.c:209: if ((((unsigned int)current_header->next) -
	ldhx	_malloc_current_header_1_9
	lda	,x
	sta	*_malloc_sloc0_1_0
	lda	1,x
	sta	*(_malloc_sloc0_1_0 + 1)
	ldhx	*_malloc_sloc0_1_0
;../_malloc.c:210: ((unsigned int)current_header) -
	lda	(_malloc_current_header_1_9 + 1)
	sta	*(_malloc_sloc1_1_0 + 1)
	lda	_malloc_current_header_1_9
	sta	*_malloc_sloc1_1_0
	txa
	sub	*(_malloc_sloc1_1_0 + 1)
	sta	*(_malloc_sloc1_1_0 + 1)
	pshh
	pula
	sbc	*_malloc_sloc1_1_0
	sta	*_malloc_sloc1_1_0
;../_malloc.c:211: current_header->len) >= size)
	ldhx	_malloc_current_header_1_9
	lda	2,x
	sta	*_malloc_sloc2_1_0
	lda	3,x
	sta	*(_malloc_sloc2_1_0 + 1)
	lda	*(_malloc_sloc1_1_0 + 1)
	sub	*(_malloc_sloc2_1_0 + 1)
	tax
	lda	*_malloc_sloc1_1_0
	sbc	*_malloc_sloc2_1_0
	psha
	pulh
	cphx	_malloc_size_1_8
	bcs	00106$
;../_malloc.c:213: ret = current_header->mem;
	ldhx	_malloc_current_header_1_9
	aix	#4
	stx	(_malloc_ret_1_9 + 1)
	pshh
	pula
	sta	_malloc_ret_1_9
;../_malloc.c:214: break;
	bra	00111$
00106$:
;../_malloc.c:216: current_header = current_header->next;    //else try next
	lda	*_malloc_sloc0_1_0
	sta	_malloc_current_header_1_9
	lda	*(_malloc_sloc0_1_0 + 1)
	sta	(_malloc_current_header_1_9 + 1)
;../_malloc.c:209: if ((((unsigned int)current_header->next) -
	ldhx	_malloc_current_header_1_9
	lda	,x
	sta	*_malloc_sloc0_1_0
	lda	1,x
	sta	*(_malloc_sloc0_1_0 + 1)
;../_malloc.c:217: if (!current_header->next)
	lda	*(_malloc_sloc0_1_0 + 1)
	ora	*_malloc_sloc0_1_0
	bne	00110$
;../_malloc.c:219: ret = (void __xdata *) NULL;
	clrh
	clrx
	sthx	_malloc_ret_1_9
;../_malloc.c:220: break;
00111$:
;../_malloc.c:223: if (ret)
	lda	_malloc_ret_1_9
	ora	(_malloc_ret_1_9 + 1)
	beq	00116$
;../_malloc.c:225: if (!current_header->len)
	ldhx	_malloc_current_header_1_9
	lda	2,x
	sta	*_malloc_sloc2_1_0
	lda	3,x
	sta	*(_malloc_sloc2_1_0 + 1)
	lda	*(_malloc_sloc2_1_0 + 1)
	ora	*_malloc_sloc2_1_0
	bne	00113$
;../_malloc.c:227: current_header->len = size; //for first allocation
	lda	_malloc_size_1_8
	sta	2,x
	lda	(_malloc_size_1_8 + 1)
	sta	3,x
	bra	00116$
00113$:
;../_malloc.c:231: new_header = (MEMHEADER __xdata * )((char __xdata *)current_header + current_header->len);
	ldhx	_malloc_current_header_1_9
	txa
	add	*(_malloc_sloc2_1_0 + 1)
	psha
	pshh
	pula
	adc	*_malloc_sloc2_1_0
	tax
	pula
	sta	(_malloc_new_header_1_9 + 1)
	stx	_malloc_new_header_1_9
;../_malloc.c:232: new_header->next = current_header->next; //and plug it into the chain
	ldhx	_malloc_new_header_1_9
	lda	*_malloc_sloc0_1_0
	sta	,x
	lda	*(_malloc_sloc0_1_0 + 1)
	sta	1,x
;../_malloc.c:233: current_header->next  = new_header;
	ldhx	_malloc_current_header_1_9
	lda	_malloc_new_header_1_9
	sta	,x
	lda	(_malloc_new_header_1_9 + 1)
	sta	1,x
;../_malloc.c:234: new_header->len  = size; //mark as used
	ldhx	_malloc_new_header_1_9
	lda	_malloc_size_1_8
	sta	2,x
	lda	(_malloc_size_1_8 + 1)
	sta	3,x
;../_malloc.c:235: ret = new_header->mem;
	ldhx	_malloc_new_header_1_9
	aix	#4
	stx	(_malloc_ret_1_9 + 1)
	pshh
	pula
	sta	_malloc_ret_1_9
00116$:
;../_malloc.c:239: return ret;
	ldx	_malloc_ret_1_9
	lda	(_malloc_ret_1_9 + 1)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit___sdcc_first_memheader:
	.dw #0x0000
	.area CABS    (ABS,CODE)
