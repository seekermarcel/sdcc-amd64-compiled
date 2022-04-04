;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:26 2022
;--------------------------------------------------------
	.module _atof
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
	.globl _toupper
	.globl _isspace
	.globl _atof
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;../_atof.c:33: float atof(const char * s)
;	---------------------------------
; Function atof
; ---------------------------------
_atof::
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-16
;../_atof.c:40: while (isspace(*s)) s++;
	ld	hl, 20 (sp)
00101$:
	ld	a,(hl)
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	push	hl
	push	de
	call	_isspace
	add	sp, #2
	ld	c,l
	ld	b,h
	pop	hl
	ld	e, l
	ld	d, h
	inc	de
	ld	a,b
	or	a,c
	jr	Z,00145$
	ex	de,hl
	jr	00101$
00145$:
	ld	20 (sp), hl
;../_atof.c:43: if (*s == '-')
	ld	h,(hl)
	ld	a,h
	sub	a, #0x2D
	jr	NZ,00107$
;../_atof.c:45: sign=1;
	ld	-16 (ix),#0x01
;../_atof.c:46: s++;
	ld	4 (ix),e
	ld	5 (ix),d
	jr	00108$
00107$:
;../_atof.c:50: sign=0;
	ld	-16 (ix),#0x00
;../_atof.c:51: if (*s == '+') s++;
	ld	a,h
	sub	a, #0x2B
	jr	NZ,00108$
	ld	4 (ix),e
	ld	5 (ix),d
00108$:
;../_atof.c:55: for (value=0.0; isdigit(*s); s++)
	ld	-11 (ix),#0x00
	ld	-10 (ix),#0x00
	ld	-9 (ix),#0x00
	ld	-8 (ix),#0x00
	ex	de, hl
	ld	hl, 20 (sp)
	ex	de, hl
00124$:
	ld	a,(de)
	ld	l,a
	rla
	sbc	a, a
	ld	h,a
	push	de
	push	hl
	call	_isdigit
	add	sp, #2
	ld	c,l
	ld	b,h
	pop	de
	ld	a,(de)
	ld	-1 (ix),a
	ld	hl,#0x0001
	add	hl,de
	ld	9 (sp), hl
	ld	a,b
	or	a,c
	jp	Z,00146$
;../_atof.c:57: value=10.0*value+(*s-'0');
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	ld	hl,#0x4120
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-2 (ix),d
	ld	-3 (ix),e
	ld	-4 (ix),h
	ld	-5 (ix),l
	ld	h,-1 (ix)
	ld	a,-1 (ix)
	rla
	sbc	a, a
	ld	d,a
	ld	a,h
	add	a,#0xD0
	ld	l,a
	ld	a,d
	adc	a,#0xFF
	ld	h,a
	push	hl
	call	___sint2fs
	add	sp, #2
	ex	de, hl
	push	hl
	push	de
	ld	hl, 17 (sp)
	push	hl
	ld	hl, 17 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-11 (ix),l
	ld	-10 (ix),h
	ld	-9 (ix),e
	ld	-8 (ix),d
;../_atof.c:55: for (value=0.0; isdigit(*s); s++)
	ex	de, hl
	ld	hl, 9 (sp)
	ex	de, hl
	jp	00124$
00146$:
	ld	4 (ix),e
	ld	5 (ix),d
;../_atof.c:61: if (*s == '.')
	ld	a,-1 (ix)
	sub	a, #0x2E
	jp	NZ,00112$
;../_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	ld	-15 (ix),#0xCD
	ld	-14 (ix),#0xCC
	ld	-13 (ix),#0xCC
	ld	-12 (ix),#0x3D
	ld	a,-7 (ix)
	ld	-5 (ix),a
	ld	a,-6 (ix)
	ld	-4 (ix),a
00127$:
	ld	hl, 11 (sp)
	ld	a,(hl)
	ld	-7 (ix), a
	ld	-7 (ix), a
	rla
	sbc	a, a
	ld	-6 (ix),a
	ld	hl, 9 (sp)
	push	hl
	call	_isdigit
	add	sp, #2
	ld	a,h
	or	a,l
	jp	Z,00147$
;../_atof.c:66: value+=(*s-'0')*fraction;
	ld	hl, 11 (sp)
	ld	a,(hl)
	ld	h,a
	rla
	sbc	a, a
	ld	l,a
	ld	a,h
	add	a,#0xD0
	ld	e,a
	ld	a,l
	adc	a,#0xFF
	ld	d,a
	push	de
	call	___sint2fs
	add	sp, #2
	ld	c,l
	ld	b,h
	ld	hl, 3 (sp)
	push	hl
	ld	hl, 3 (sp)
	push	hl
	push	de
	push	bc
	call	___fsmul
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 11 (sp)
	push	hl
	ld	hl, 11 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-11 (ix),l
	ld	-10 (ix),h
	ld	-9 (ix),e
	ld	-8 (ix),d
;../_atof.c:67: fraction*=0.1;
	ld	hl, 3 (sp)
	push	hl
	ld	hl, 3 (sp)
	push	hl
	ld	hl,#0x3DCC
	push	hl
	ld	hl,#0xCCCD
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-15 (ix),l
	ld	-14 (ix),h
	ld	-13 (ix),e
	ld	-12 (ix),d
;../_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	inc	-5 (ix)
	jp	NZ,00127$
	inc	-4 (ix)
	jp	00127$
00147$:
	ld	a,-5 (ix)
	ld	4 (ix),a
	ld	a,-4 (ix)
	ld	5 (ix),a
00112$:
;../_atof.c:72: if (toupper(*s)=='E')
	ld	a,4 (ix)
	ld	-5 (ix),a
	ld	a,5 (ix)
	ld	-4 (ix),a
	ld	hl, 11 (sp)
	ld	a,(hl)
	ld	l,a
	rla
	sbc	a, a
	ld	h,a
	push	hl
	call	_toupper
	add	sp, #2
	ld	a,l
	sub	a,#0x45
	jp	NZ,00120$
	or	a,h
	jp	NZ,00120$
;../_atof.c:74: s++;
	ld	a,-5 (ix)
	add	a, #0x01
	ld	4 (ix),a
	ld	a,-4 (ix)
	adc	a, #0x00
	ld	5 (ix),a
;../_atof.c:75: iexp=(signed char)atoi(s);
	ld	hl, 20 (sp)
	push	hl
	call	_atoi
	add	sp, #2
	ld	b,l
;../_atof.c:77: while(iexp!=0)
00116$:
	ld	a,b
	or	a, a
	jp	Z,00120$
;../_atof.c:79: if(iexp<0)
	bit	7, b
	jr	Z,00114$
;../_atof.c:81: value*=0.1;
	push	bc
	ld	hl, 9 (sp)
	push	hl
	ld	hl, 9 (sp)
	push	hl
	ld	hl,#0x3DCC
	push	hl
	ld	hl,#0xCCCD
	push	hl
	call	___fsmul
	add	sp, #8
	pop	bc
	ld	-11 (ix),l
	ld	-10 (ix),h
	ld	-9 (ix),e
	ld	-8 (ix),d
;../_atof.c:82: iexp++;
	inc	b
	jp	00116$
00114$:
;../_atof.c:86: value*=10.0;
	push	bc
	ld	hl, 9 (sp)
	push	hl
	ld	hl, 9 (sp)
	push	hl
	ld	hl,#0x4120
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	add	sp, #8
	pop	bc
	ld	-11 (ix),l
	ld	-10 (ix),h
	ld	-9 (ix),e
	ld	-8 (ix),d
;../_atof.c:87: iexp--;
	dec	b
	jp	00116$
00120$:
;../_atof.c:93: if(sign) value*=-1.0;
	bit	0,-16 (ix)
	jr	Z,00122$
	ld	a,-8 (ix)
	xor	a,#0x80
	ld	-8 (ix),a
00122$:
;../_atof.c:94: return (value);
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	e,-9 (ix)
	ld	d,-8 (ix)
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
