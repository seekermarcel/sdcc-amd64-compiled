;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:34 2022
;--------------------------------------------------------
	.hd64
	.module _atof
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
	.globl _toupper
	.globl _isspace
	.globl _atof
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
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
	ld	hl,#-16
	add	hl,sp
	ld	sp,hl
;../_atof.c:40: while (isspace(*s)) s++;
	ld	c,4 (ix)
	ld	b,5 (ix)
00101$:
	ld	a,(bc)
	ld	l,a
	rla
	sbc	a, a
	ld	h,a
	push	bc
	push	hl
	call	_isspace
	inc	sp
	inc	sp
	pop	bc
	ld	e, c
	ld	d, b
	inc	de
	ld	a,h
	or	a,l
	jr	Z,00145$
	ld	c, e
	ld	b, d
	jr	00101$
00145$:
	ld	4 (ix),c
	ld	5 (ix),b
;../_atof.c:43: if (*s == '-')
	ld	a,(bc)
	ld	h,a
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
	ld	c,4 (ix)
	ld	b,5 (ix)
00124$:
	ld	a,(bc)
	ld	l,a
	rla
	sbc	a, a
	ld	h,a
	push	bc
	push	hl
	call	_isdigit
	inc	sp
	inc	sp
	ex	de,hl
	pop	bc
	ld	a,(bc)
	ld	-1 (ix),a
	ld	hl,#0x0001
	add	hl,bc
	ld	-3 (ix),l
	ld	-2 (ix),h
	ld	a,d
	or	a,e
	jr	Z,00146$
;../_atof.c:57: value=10.0*value+(*s-'0');
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	ld	hl,#0x4120
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-4 (ix),d
	ld	-5 (ix),e
	ld	-6 (ix),h
	ld	-7 (ix),l
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
	inc	sp
	inc	sp
	ex	de, hl
	push	hl
	push	de
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	call	___fsadd
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-11 (ix),l
	ld	-10 (ix),h
	ld	-9 (ix),e
	ld	-8 (ix),d
;../_atof.c:55: for (value=0.0; isdigit(*s); s++)
	ld	c,-3 (ix)
	ld	b,-2 (ix)
	jp	00124$
00146$:
	ld	4 (ix),c
	ld	5 (ix),b
;../_atof.c:61: if (*s == '.')
	ld	a,-1 (ix)
	sub	a, #0x2E
	jp	NZ,00112$
;../_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	ld	-15 (ix),#0xCD
	ld	-14 (ix),#0xCC
	ld	-13 (ix),#0xCC
	ld	-12 (ix),#0x3D
	ld	a,-3 (ix)
	ld	-7 (ix),a
	ld	a,-2 (ix)
	ld	-6 (ix),a
00127$:
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	a,(hl)
	ld	-3 (ix), a
	ld	-3 (ix), a
	rla
	sbc	a, a
	ld	-2 (ix),a
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	call	_isdigit
	inc	sp
	inc	sp
	ld	a,h
	or	a,l
	jp	Z,00147$
;../_atof.c:66: value+=(*s-'0')*fraction;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
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
	inc	sp
	inc	sp
	ld	c,l
	ld	b,h
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	push	hl
	push	de
	push	bc
	call	___fsmul
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ex	de, hl
	push	hl
	push	de
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	call	___fsadd
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-11 (ix),l
	ld	-10 (ix),h
	ld	-9 (ix),e
	ld	-8 (ix),d
;../_atof.c:67: fraction*=0.1;
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	push	hl
	ld	hl,#0x3DCC
	push	hl
	ld	hl,#0xCCCD
	push	hl
	call	___fsmul
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-15 (ix),l
	ld	-14 (ix),h
	ld	-13 (ix),e
	ld	-12 (ix),d
;../_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	inc	-7 (ix)
	jp	NZ,00127$
	inc	-6 (ix)
	jp	00127$
00147$:
	ld	a,-7 (ix)
	ld	4 (ix),a
	ld	a,-6 (ix)
	ld	5 (ix),a
00112$:
;../_atof.c:72: if (toupper(*s)=='E')
	ld	a,4 (ix)
	ld	-7 (ix),a
	ld	a,5 (ix)
	ld	-6 (ix),a
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	a,(hl)
	ld	l,a
	rla
	sbc	a, a
	ld	h,a
	push	hl
	call	_toupper
	inc	sp
	inc	sp
	ld	a,l
	sub	a,#0x45
	jp	NZ,00120$
	or	a,h
	jp	NZ,00120$
;../_atof.c:74: s++;
	ld	a,-7 (ix)
	add	a, #0x01
	ld	4 (ix),a
	ld	a,-6 (ix)
	adc	a, #0x00
	ld	5 (ix),a
;../_atof.c:75: iexp=(signed char)atoi(s);
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_atoi
	inc	sp
	inc	sp
	ld	b,l
;../_atof.c:77: while(iexp!=0)
00116$:
	ld	a,b
	or	a, a
	jr	Z,00120$
;../_atof.c:79: if(iexp<0)
	bit	7, b
	jr	Z,00114$
;../_atof.c:81: value*=0.1;
	push	bc
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	ld	hl,#0x3DCC
	push	hl
	ld	hl,#0xCCCD
	push	hl
	call	___fsmul
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	pop	bc
	ld	-11 (ix),l
	ld	-10 (ix),h
	ld	-9 (ix),e
	ld	-8 (ix),d
;../_atof.c:82: iexp++;
	inc	b
	jr	00116$
00114$:
;../_atof.c:86: value*=10.0;
	push	bc
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	ld	hl,#0x4120
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	pop	bc
	ld	-11 (ix),l
	ld	-10 (ix),h
	ld	-9 (ix),e
	ld	-8 (ix),d
;../_atof.c:87: iexp--;
	dec	b
	jr	00116$
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
