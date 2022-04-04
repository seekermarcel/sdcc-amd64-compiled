;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:42 2022
;--------------------------------------------------------
	.module time
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _RtcRead
	.globl _sprintf
	.globl ___day
	.globl ___month
	.globl _time
	.globl _asctime
	.globl _ctime
	.globl _localtime
	.globl _gmtime
	.globl _mktime
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_ascTimeBuffer:
	.ds 32
_lastTime:
	.ds 12
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_monthDays:
	.ds 12
___month::
	.ds 24
___day::
	.ds 14
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
;../time.c:42: unsigned char RtcRead(struct tm *timeptr) {
;	---------------------------------
; Function RtcRead
; ---------------------------------
_RtcRead::
;../time.c:45: return 0;
	ld	l,#0x00
	ret
;../time.c:50: time_t time(time_t *timeptr) {
;	---------------------------------
; Function time
; ---------------------------------
_time::
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-12
;../time.c:52: time_t t=(time_t) -1;
	ld	bc,#0xFFFF
	ld	de,#0xFFFF
;../time.c:54: if (RtcRead(&now)) {
	ld	hl,#0x0000
	add	hl,sp
	ld	iy, hl
	push	hl
	push	bc
	push	de
	push	iy
	call	_RtcRead
	add	sp, #2
	ld	a,l
	pop	de
	pop	bc
	pop	hl
	or	a, a
	jr	Z,00102$
;../time.c:55: t=mktime(&now);
	push	hl
	call	_mktime
	add	sp, #2
	ld	c,l
	ld	b,h
00102$:
;../time.c:57: if (timeptr) {
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00104$
;../time.c:58: *timeptr=t;
	ld	hl, 16 (sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
00104$:
;../time.c:60: return t;
	ld	l,c
	ld	h,b
	ld	sp, ix
	pop	ix
	ret
;../time.c:73: static void CheckTime(struct tm *timeptr) {
;	---------------------------------
; Function CheckTime
; ---------------------------------
_CheckTime:
;../time.c:84: if (timeptr->tm_sec>59) timeptr->tm_sec=59;
	pop	bc
	pop	de
	push	de
	push	bc
	ld	a,(de)
	ld	h,a
	ld	a,#0x3B
	cp	a,h
	jr	NC,00102$
	ld	(de),a
00102$:
;../time.c:85: if (timeptr->tm_min>59) timeptr->tm_min=59;
	ld	l, e
	ld	h, d
	inc	hl
	ld	b,(hl)
	ld	a,#0x3B
	sub	a, b
	jr	NC,00104$
	ld	(hl),#0x3B
00104$:
;../time.c:86: if (timeptr->tm_hour>23) timeptr->tm_hour=23;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	b,(hl)
	ld	a,#0x17
	sub	a, b
	jr	NC,00106$
	ld	(hl),#0x17
00106$:
;../time.c:87: if (timeptr->tm_wday>6) timeptr->tm_wday=6;
	ld	hl,#0x0007
	add	hl,de
	ld	b,(hl)
	ld	a,#0x06
	sub	a, b
	jr	NC,00108$
	ld	(hl),#0x06
00108$:
;../time.c:88: if (timeptr->tm_mday<1) timeptr->tm_mday=1;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	b,(hl)
	ld	a,b
	sub	a, #0x01
	jr	NC,00112$
	ld	(hl),#0x01
	jr	00113$
00112$:
;../time.c:89: else if (timeptr->tm_mday>31) timeptr->tm_mday=31;
	ld	a,#0x1F
	sub	a, b
	jr	NC,00113$
	ld	(hl),#0x1F
00113$:
;../time.c:90: if (timeptr->tm_mon>11) timeptr->tm_mon=11;
	ld	hl,#0x0004
	add	hl,de
	ld	b,(hl)
	ld	a,#0x0B
	sub	a, b
	jr	NC,00115$
	ld	(hl),#0x0B
00115$:
;../time.c:91: if (timeptr->tm_year<0) timeptr->tm_year=0;
	ld	hl,#0x0005
	add	hl,de
	push	hl
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	pop	hl
	bit	7, e
	ret	Z
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ret
;../time.c:95: char *asctime(struct tm *timeptr) {
;	---------------------------------
; Function asctime
; ---------------------------------
_asctime::
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-10
;../time.c:96: CheckTime(timeptr);
	ld	hl, 14 (sp)
	push	hl
	call	_CheckTime
	add	sp, #2
;../time.c:100: timeptr->tm_year+1900);
	ex	de, hl
	ld	hl, 14 (sp)
	ex	de, hl
	ld	hl,#0x0005
	add	hl,de
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#0x076C
	add	hl,bc
	ex	(sp), hl
;../time.c:99: timeptr->tm_hour, timeptr->tm_min, timeptr->tm_sec, 
	ld	a,(de)
	ld	-4 (ix),a
	ld	-3 (ix),#0x00
	ld	l, e
	ld	h, d
	inc	hl
	ld	a,(hl)
	ld	-2 (ix),a
	ld	-1 (ix),#0x00
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	-8 (ix),a
	ld	-7 (ix),#0x00
;../time.c:98: __day[timeptr->tm_wday], __month[timeptr->tm_mon], timeptr->tm_mday,
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	-6 (ix),a
	ld	-5 (ix),#0x00
	ld	hl,#0x0004
	add	hl,de
	ld	l,(hl)
	ld	h,#0x00
	add	hl, hl
	ld	bc,#___month
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#0x0007
	add	hl,de
	ld	l,(hl)
	ld	h,#0x00
	add	hl, hl
	ld	de,#___day
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;../time.c:97: sprintf (ascTimeBuffer, "%s %s %2d %02d:%02d:%02d %04d\n",
	pop	hl
	push	hl
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 12 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 12 (sp)
	push	hl
	push	bc
	push	de
	ld	hl,#___str_0
	push	hl
	ld	hl,#_ascTimeBuffer
	push	hl
	call	_sprintf
	add	sp, #18
;../time.c:101: return ascTimeBuffer;
	ld	hl,#_ascTimeBuffer
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "%s %s %2d %02d:%02d:%02d %04d"
	.db 0x0A
	.db 0x00
;../time.c:104: char *ctime(time_t *timep) {
;	---------------------------------
; Function ctime
; ---------------------------------
_ctime::
;../time.c:105: return asctime(localtime(timep));
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_localtime
	add	sp, #2
	push	hl
	call	_asctime
	add	sp, #2
	ret
;../time.c:121: struct tm *localtime(time_t *timep) {
;	---------------------------------
; Function localtime
; ---------------------------------
_localtime::
;../time.c:122: return gmtime(timep);
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_gmtime
	add	sp, #2
	ret
;../time.c:125: struct tm *gmtime(time_t *timep) {
;	---------------------------------
; Function gmtime
; ---------------------------------
_gmtime::
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-17
;../time.c:126: unsigned long epoch=*timep;
	ld	hl, 21 (sp)
	ex	de,hl
	ld	hl, #0x0003
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;../time.c:131: lastTime.tm_sec=epoch%60;
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x003C
	push	hl
	ld	hl, 9 (sp)
	push	hl
	ld	hl, 9 (sp)
	push	hl
	call	__modulong
	add	sp, #8
	ld	a,l
	ld	(#_lastTime),a
;../time.c:132: epoch/=60; // now it is minutes
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x003C
	push	hl
	ld	hl, 9 (sp)
	push	hl
	ld	hl, 9 (sp)
	push	hl
	call	__divulong
	add	sp, #8
	ld	c,l
	ld	b,h
;../time.c:133: lastTime.tm_min=epoch%60;
	push	bc
	push	de
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x003C
	push	hl
	push	de
	push	bc
	call	__modulong
	add	sp, #8
	ld	-11 (ix),d
	ld	-12 (ix),e
	ld	-13 (ix),h
	ld	-14 (ix),l
	pop	de
	pop	bc
	ld	a,-14 (ix)
	ld	(#(_lastTime + 0x0001)),a
;../time.c:134: epoch/=60; // now it is hours
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x003C
	push	hl
	push	de
	push	bc
	call	__divulong
	add	sp, #8
	ld	c,l
	ld	b,h
;../time.c:135: lastTime.tm_hour=epoch%24;
	push	bc
	push	de
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0018
	push	hl
	push	de
	push	bc
	call	__modulong
	add	sp, #8
	ld	-11 (ix),d
	ld	-12 (ix),e
	ld	-13 (ix),h
	ld	-14 (ix),l
	pop	de
	pop	bc
	ld	a,-14 (ix)
	ld	(#(_lastTime + 0x0002)),a
;../time.c:136: epoch/=24; // now it is days
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0018
	push	hl
	push	de
	push	bc
	call	__divulong
	add	sp, #8
	ld	-14 (ix),l
	ld	-13 (ix),h
	ld	-12 (ix),e
	ld	-11 (ix),d
;../time.c:137: lastTime.tm_wday=(epoch+4)%7;
	ld	a,-14 (ix)
	add	a, #0x04
	ld	e,a
	ld	a,-13 (ix)
	adc	a, #0x00
	ld	d,a
	ld	a,-12 (ix)
	adc	a, #0x00
	ld	c,a
	ld	a,-11 (ix)
	adc	a, #0x00
	ld	b,a
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0007
	push	hl
	push	bc
	push	de
	call	__modulong
	add	sp, #8
	ld	a,l
	ld	(#(_lastTime + 0x0007)),a
;../time.c:140: days=0;
	ld	bc,#0x0000
	ld	de,#0x0000
;../time.c:141: while((days += (LEAP_YEAR(year) ? 366 : 365)) <= epoch) {
	ld	hl,#0x07B2
	ex	(sp), hl
00101$:
	ld	a,-17 (ix)
	and	a, #0x03
	ld	-10 (ix),a
	ld	-9 (ix), #0x00
	ld	a, #0x00
	or	a,-10 (ix)
	jr	NZ,00118$
	ld	hl,#0x016E
	jr	00119$
00118$:
	ld	hl,#0x016D
00119$:
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	a,h
	rla
	sbc	a, a
	ld	-2 (ix),a
	ld	-1 (ix),a
	ld	a,c
	add	a, -4 (ix)
	ld	-4 (ix),a
	ld	a,b
	adc	a, -3 (ix)
	ld	-3 (ix),a
	ld	a,e
	adc	a, -2 (ix)
	ld	-2 (ix),a
	ld	a,d
	adc	a, -1 (ix)
	ld	-1 (ix),a
	ld	c,-4 (ix)
	ld	b,-3 (ix)
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	ld	a,-14 (ix)
	sub	a, -4 (ix)
	ld	a,-13 (ix)
	sbc	a, -3 (ix)
	ld	a,-12 (ix)
	sbc	a, -2 (ix)
	ld	a,-11 (ix)
	sbc	a, -1 (ix)
	jr	C,00103$
;../time.c:142: year++;
	inc	-17 (ix)
	jp	NZ,00101$
	inc	-16 (ix)
	jp	00101$
00103$:
;../time.c:144: lastTime.tm_year=year-1900;
	ld	iy,#_lastTime + 5
	ld	a,-17 (ix)
	add	a,#0x94
	ld	h,a
	ld	a,-16 (ix)
	adc	a,#0xF8
	ld	0 (iy), h
	ld	1 (iy), a
;../time.c:146: days -= LEAP_YEAR(year) ? 366 : 365;
	ld	a,-10 (ix)
	ld	-4 (ix),a
	ld	a,-9 (ix)
	ld	-3 (ix),a
	ld	a,-9 (ix)
	or	a,-10 (ix)
	jr	NZ,00120$
	ld	hl,#0x016E
	jr	00121$
00120$:
	ld	hl,#0x016D
00121$:
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	a,h
	rla
	sbc	a, a
	ld	-6 (ix),a
	ld	-5 (ix),a
	ld	a,c
	sub	a, -8 (ix)
	ld	l,a
	ld	a,b
	sbc	a, -7 (ix)
	ld	h,a
	ld	a,e
	sbc	a, -6 (ix)
	ld	e,a
	ld	a,d
	sbc	a, -5 (ix)
	ld	d,a
;../time.c:147: epoch -= days; // now it is days in this year, starting at 0
	ld	a,-14 (ix)
	sub	a, l
	ld	-8 (ix),a
	ld	a,-13 (ix)
	sbc	a, h
	ld	-7 (ix),a
	ld	a,-12 (ix)
	sbc	a, e
	ld	-6 (ix),a
	ld	a,-11 (ix)
	sbc	a, d
	ld	-5 (ix),a
;../time.c:148: lastTime.tm_yday=epoch;
	ex	de, hl
	ld	hl, 9 (sp)
	ex	de, hl
	ld	((_lastTime + 0x0008)), de
;../time.c:153: for (month=0; month<12; month++) {
	ld	-15 (ix),#0x00
00114$:
;../time.c:154: if (month==1) { // februari
	ld	a,-15 (ix)
	dec	a
	jr	NZ,00108$
;../time.c:155: if (LEAP_YEAR(year)) {
	ld	a,-3 (ix)
	or	a,-4 (ix)
	jr	NZ,00105$
;../time.c:156: monthLength=29;
	ld	c,#0x1D
	jr	00109$
00105$:
;../time.c:158: monthLength=28;
	ld	c,#0x1C
	jr	00109$
00108$:
;../time.c:161: monthLength = monthDays[month];
	ld	a,#<(_monthDays)
	add	a, -15 (ix)
	ld	-10 (ix),a
	ld	a,#>(_monthDays)
	adc	a, #0x00
	ld	-9 (ix),a
	ld	hl, 7 (sp)
	ld	c,(hl)
00109$:
;../time.c:164: if (epoch>=monthLength) {
	ld	-14 (ix),c
	ld	-13 (ix),#0x00
	ld	-12 (ix),#0x00
	ld	-11 (ix),#0x00
	ld	a,-8 (ix)
	sub	a, -14 (ix)
	ld	a,-7 (ix)
	sbc	a, -13 (ix)
	ld	a,-6 (ix)
	sbc	a, -12 (ix)
	ld	a,-5 (ix)
	sbc	a, -11 (ix)
	jr	C,00113$
;../time.c:165: epoch-=monthLength;
	ld	a,-8 (ix)
	sub	a, -14 (ix)
	ld	-8 (ix),a
	ld	a,-7 (ix)
	sbc	a, -13 (ix)
	ld	-7 (ix),a
	ld	a,-6 (ix)
	sbc	a, -12 (ix)
	ld	-6 (ix),a
	ld	a,-5 (ix)
	sbc	a, -11 (ix)
	ld	-5 (ix),a
;../time.c:153: for (month=0; month<12; month++) {
	inc	-15 (ix)
	ld	a,-15 (ix)
	sub	a, #0x0C
	jp	C,00114$
00113$:
;../time.c:170: lastTime.tm_mon=month;
	ld	hl,#_lastTime + 4
	ld	a,-15 (ix)
	ld	(hl),a
;../time.c:171: lastTime.tm_mday=epoch+1;
	ld	hl,#_lastTime + 3
	ld	a,-8 (ix)
	inc	a
	ld	(hl),a
;../time.c:173: lastTime.tm_isdst=0;
	ld	hl,#_lastTime + 10
	ld	(hl),#0x00
;../time.c:175: return &lastTime;
	ld	hl,#_lastTime
	ld	sp, ix
	pop	ix
	ret
;../time.c:179: time_t mktime(struct tm *timeptr) {
;	---------------------------------
; Function mktime
; ---------------------------------
_mktime::
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-14
;../time.c:180: int year=timeptr->tm_year+1900, month=timeptr->tm_mon, i;
	ld	a,4 (ix)
	ld	-6 (ix),a
	ld	a,5 (ix)
	ld	-5 (ix),a
	ld	a,-6 (ix)
	add	a, #0x05
	ld	l,a
	ld	a,-5 (ix)
	adc	a, #0x00
	ld	h,a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x076C
	add	hl,de
	ld	2 (sp), hl
	ld	iy,#0x0004
	ex	de, hl
	ld	hl, 8 (sp)
	ex	de, hl
	add	iy, de
	ld	a, 0 (iy)
	ld	-14 (ix),a
	ld	-13 (ix),#0x00
;../time.c:183: CheckTime(timeptr);
	ld	hl, 8 (sp)
	push	hl
	call	_CheckTime
	add	sp, #2
;../time.c:186: seconds= (year-1970)*(60*60*24L*365);
	ld	a,-12 (ix)
	add	a,#0x4E
	ld	e,a
	ld	a,-11 (ix)
	adc	a,#0xF8
	ld	d,a
	rla
	sbc	a, a
	ld	l,a
	ld	h,a
	push	hl
	push	de
	ld	hl,#0x01E1
	push	hl
	ld	hl,#0x3380
	push	hl
	call	__mullong
	add	sp, #8
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	-2 (ix),e
	ld	-1 (ix),d
;../time.c:189: for (i=1970; i<year; i++) {
	ld	hl,#0x07B2
	ld	4 (sp), hl
00110$:
	ld	a,-10 (ix)
	sub	a, -12 (ix)
	ld	a,-9 (ix)
	sbc	a, -11 (ix)
	jp	PO, 00147$
	xor	a, #0x80
00147$:
	jp	P,00124$
;../time.c:190: if (LEAP_YEAR(i)) {
	ld	hl,#0x0004
	push	hl
	ld	hl, 6 (sp)
	push	hl
	call	__modsint
	add	sp, #4
	ld	a,h
	or	a,l
	jr	NZ,00111$
;../time.c:191: seconds+= 60*60*24L;
	ld	a,-4 (ix)
	add	a, #0x80
	ld	-4 (ix),a
	ld	a,-3 (ix)
	adc	a, #0x51
	ld	-3 (ix),a
	ld	a,-2 (ix)
	adc	a, #0x01
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
00111$:
;../time.c:189: for (i=1970; i<year; i++) {
	inc	-10 (ix)
	jp	NZ,00110$
	inc	-9 (ix)
	jp	00110$
00124$:
;../time.c:196: for (i=0; i<month; i++) {
	ld	hl,#0x0004
	push	hl
	ld	hl, 4 (sp)
	push	hl
	call	__modsint
	add	sp, #4
	ld	-7 (ix),h
	ld	-8 (ix),l
	ld	de,#0x0000
00113$:
	ld	a,e
	sub	a, -14 (ix)
	ld	a,d
	sbc	a, -13 (ix)
	jp	PO, 00149$
	xor	a, #0x80
00149$:
	jp	P,00108$
;../time.c:197: if (i==1 && LEAP_YEAR(year)) { 
	ld	a,e
	dec	a
	jr	NZ,00105$
	ld	a,d
	or	a, a
	jr	NZ,00105$
	ld	a,-7 (ix)
	or	a,-8 (ix)
	jr	NZ,00105$
;../time.c:198: seconds+= 60*60*24L*29;
	ld	a,-4 (ix)
	add	a, #0x80
	ld	-4 (ix),a
	ld	a,-3 (ix)
	adc	a, #0x3B
	ld	-3 (ix),a
	ld	a,-2 (ix)
	adc	a, #0x26
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
	jp	00114$
00105$:
;../time.c:200: seconds+= 60*60*24L*monthDays[i];
	ld	hl,#_monthDays
	add	hl,de
	ld	a,(hl)
	ld	c,a
	rla
	sbc	a, a
	ld	b,a
	ld	l,a
	ld	h,a
	push	de
	push	hl
	push	bc
	ld	hl,#0x0001
	push	hl
	ld	hl,#0x5180
	push	hl
	call	__mullong
	add	sp, #8
	ld	b,e
	ld	c,d
	pop	de
	ld	a,-4 (ix)
	add	a, l
	ld	-4 (ix),a
	ld	a,-3 (ix)
	adc	a, h
	ld	-3 (ix),a
	ld	a,-2 (ix)
	adc	a, b
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a, c
	ld	-1 (ix),a
00114$:
;../time.c:196: for (i=0; i<month; i++) {
	inc	de
	jp	00113$
00108$:
;../time.c:204: seconds+= (timeptr->tm_mday-1)*60*60*24L;
	ld	hl, 8 (sp)
	inc	hl
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	d,#0x00
	dec	de
	ld	a,d
	rla
	sbc	a, a
	ld	l,a
	ld	h,a
	push	hl
	push	de
	ld	hl,#0x0001
	push	hl
	ld	hl,#0x5180
	push	hl
	call	__mullong
	add	sp, #8
	ld	a,-4 (ix)
	add	a, l
	ld	-4 (ix),a
	ld	a,-3 (ix)
	adc	a, h
	ld	-3 (ix),a
	ld	a,-2 (ix)
	adc	a, e
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a, d
	ld	-1 (ix),a
;../time.c:205: seconds+= timeptr->tm_hour*60*60L;
	ld	hl, 8 (sp)
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#0x0000
	push	hl
	push	de
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0E10
	push	hl
	call	__mullong
	add	sp, #8
	ld	a,-4 (ix)
	add	a, l
	ld	-4 (ix),a
	ld	a,-3 (ix)
	adc	a, h
	ld	-3 (ix),a
	ld	a,-2 (ix)
	adc	a, e
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a, d
	ld	-1 (ix),a
;../time.c:206: seconds+= timeptr->tm_min*60;
	ld	hl, 8 (sp)
	inc	hl
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	a,h
	rla
	sbc	a, a
	ld	e,a
	ld	d,a
	ld	a,-4 (ix)
	add	a, l
	ld	c,a
	ld	a,-3 (ix)
	adc	a, h
	ld	b,a
	ld	a,-2 (ix)
	adc	a, e
	ld	e,a
	ld	a,-1 (ix)
	adc	a, d
	ld	d,a
;../time.c:207: seconds+= timeptr->tm_sec;
	ld	hl, 8 (sp)
	ld	l,(hl)
	ld	h,#0x00
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	a,h
	rla
	sbc	a, a
	ld	-2 (ix),a
	ld	-1 (ix),a
	ld	a,c
	add	a, -4 (ix)
	ld	l,a
	ld	a,b
	adc	a, -3 (ix)
	ld	h,a
	ld	a,e
	adc	a, -2 (ix)
	ld	e,a
	ld	a,d
	adc	a, -1 (ix)
	ld	d,a
;../time.c:208: return seconds;
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
___str_1:
	.ascii "Jan"
	.db 0x00
___str_2:
	.ascii "Feb"
	.db 0x00
___str_3:
	.ascii "Mar"
	.db 0x00
___str_4:
	.ascii "Apr"
	.db 0x00
___str_5:
	.ascii "May"
	.db 0x00
___str_6:
	.ascii "Jun"
	.db 0x00
___str_7:
	.ascii "Jul"
	.db 0x00
___str_8:
	.ascii "Aug"
	.db 0x00
___str_9:
	.ascii "Sep"
	.db 0x00
___str_10:
	.ascii "Oct"
	.db 0x00
___str_11:
	.ascii "Nov"
	.db 0x00
___str_12:
	.ascii "Dec"
	.db 0x00
___str_13:
	.ascii "Sun"
	.db 0x00
___str_14:
	.ascii "Mon"
	.db 0x00
___str_15:
	.ascii "Tue"
	.db 0x00
___str_16:
	.ascii "Wed"
	.db 0x00
___str_17:
	.ascii "Thu"
	.db 0x00
___str_18:
	.ascii "Fri"
	.db 0x00
___str_19:
	.ascii "Sat"
	.db 0x00
	.area _INITIALIZER
__xinit__monthDays:
	.db #0x1F	;  31
	.db #0x1C	;  28
	.db #0x1F	;  31
	.db #0x1E	;  30
	.db #0x1F	;  31
	.db #0x1E	;  30
	.db #0x1F	;  31
	.db #0x1F	;  31
	.db #0x1E	;  30
	.db #0x1F	;  31
	.db #0x1E	;  30
	.db #0x1F	;  31
__xinit____month:
	.dw ___str_1
	.dw ___str_2
	.dw ___str_3
	.dw ___str_4
	.dw ___str_5
	.dw ___str_6
	.dw ___str_7
	.dw ___str_8
	.dw ___str_9
	.dw ___str_10
	.dw ___str_11
	.dw ___str_12
__xinit____day:
	.dw ___str_13
	.dw ___str_14
	.dw ___str_15
	.dw ___str_16
	.dw ___str_17
	.dw ___str_18
	.dw ___str_19
	.area _CABS (ABS)
