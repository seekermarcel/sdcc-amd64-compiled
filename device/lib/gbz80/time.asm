;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:51 2022
;--------------------------------------------------------
	.module time
	.optsdcc -mgbz80
	
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
_monthDays:
	.ds 12
___month::
	.ds 24
___day::
	.ds 14
_ascTimeBuffer:
	.ds 32
_lastTime:
	.ds 12
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
;../time.c:63: static _CODE char monthDays[]={31,28,31,30,31,30,31,31,30,31,30,31};
	ld	hl,#_monthDays
	ld	(hl),#0x1F
	ld	hl,#(_monthDays + 0x0001)
	ld	(hl),#0x1C
	ld	hl,#(_monthDays + 0x0002)
	ld	(hl),#0x1F
	ld	hl,#(_monthDays + 0x0003)
	ld	(hl),#0x1E
	ld	hl,#(_monthDays + 0x0004)
	ld	(hl),#0x1F
	ld	hl,#(_monthDays + 0x0005)
	ld	(hl),#0x1E
	ld	hl,#(_monthDays + 0x0006)
	ld	(hl),#0x1F
	ld	hl,#(_monthDays + 0x0007)
	ld	(hl),#0x1F
	ld	hl,#(_monthDays + 0x0008)
	ld	(hl),#0x1E
	ld	hl,#(_monthDays + 0x0009)
	ld	(hl),#0x1F
	ld	hl,#(_monthDays + 0x000a)
	ld	(hl),#0x1E
	ld	hl,#(_monthDays + 0x000b)
	ld	(hl),#0x1F
;../time.c:65: _CODE const char * _CODE __month[]={"Jan","Feb","Mar","Apr","May","Jun",
	ld	hl,#___month
	ld	(hl),#<(___str_1)
	inc	hl
	ld	(hl),#>(___str_1)
	ld	hl,#(___month + 0x0002)
	ld	(hl),#<(___str_2)
	inc	hl
	ld	(hl),#>(___str_2)
	ld	hl,#(___month + 0x0004)
	ld	(hl),#<(___str_3)
	inc	hl
	ld	(hl),#>(___str_3)
	ld	hl,#(___month + 0x0006)
	ld	(hl),#<(___str_4)
	inc	hl
	ld	(hl),#>(___str_4)
	ld	hl,#(___month + 0x0008)
	ld	(hl),#<(___str_5)
	inc	hl
	ld	(hl),#>(___str_5)
	ld	hl,#(___month + 0x000a)
	ld	(hl),#<(___str_6)
	inc	hl
	ld	(hl),#>(___str_6)
	ld	hl,#(___month + 0x000c)
	ld	(hl),#<(___str_7)
	inc	hl
	ld	(hl),#>(___str_7)
	ld	hl,#(___month + 0x000e)
	ld	(hl),#<(___str_8)
	inc	hl
	ld	(hl),#>(___str_8)
	ld	hl,#(___month + 0x0010)
	ld	(hl),#<(___str_9)
	inc	hl
	ld	(hl),#>(___str_9)
	ld	hl,#(___month + 0x0012)
	ld	(hl),#<(___str_10)
	inc	hl
	ld	(hl),#>(___str_10)
	ld	hl,#(___month + 0x0014)
	ld	(hl),#<(___str_11)
	inc	hl
	ld	(hl),#>(___str_11)
	ld	hl,#(___month + 0x0016)
	ld	(hl),#<(___str_12)
	inc	hl
	ld	(hl),#>(___str_12)
;../time.c:68: _CODE const char * _CODE __day[]={"Sun","Mon","Tue","Wed","Thu","Fri","Sat"};
	ld	hl,#___day
	ld	(hl),#<(___str_13)
	inc	hl
	ld	(hl),#>(___str_13)
	ld	hl,#(___day + 0x0002)
	ld	(hl),#<(___str_14)
	inc	hl
	ld	(hl),#>(___str_14)
	ld	hl,#(___day + 0x0004)
	ld	(hl),#<(___str_15)
	inc	hl
	ld	(hl),#>(___str_15)
	ld	hl,#(___day + 0x0006)
	ld	(hl),#<(___str_16)
	inc	hl
	ld	(hl),#>(___str_16)
	ld	hl,#(___day + 0x0008)
	ld	(hl),#<(___str_17)
	inc	hl
	ld	(hl),#>(___str_17)
	ld	hl,#(___day + 0x000a)
	ld	(hl),#<(___str_18)
	inc	hl
	ld	(hl),#>(___str_18)
	ld	hl,#(___day + 0x000c)
	ld	(hl),#<(___str_19)
	inc	hl
	ld	(hl),#>(___str_19)
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
	ld	e,#0x00
	ret
;../time.c:50: time_t time(time_t *timeptr) {
;	---------------------------------
; Function time
; ---------------------------------
_time::
	add	sp, #-16
;../time.c:52: time_t t=(time_t) -1;
	ldhl	sp,#0
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;../time.c:54: if (RtcRead(&now)) {
	ldhl	sp,#4
	ld	e,l
	ld	d,h
	ld	c, e
	ld	b, d
	push	de
	push	bc
	call	_RtcRead
	add	sp, #2
	ld	a,e
	pop	de
	or	a, a
	jr	Z,00102$
;../time.c:55: t=mktime(&now);
	push	de
	call	_mktime
	add	sp, #2
	ld	b,l
	ld	c,h
	ldhl	sp,#0
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
00102$:
;../time.c:57: if (timeptr) {
	ldhl	sp,#19
	ld	a,(hl-)
	or	a,(hl)
	jr	Z,00104$
;../time.c:58: *timeptr=t;
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#0
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
00104$:
;../time.c:60: return t;
	pop	de
	push	de
	ldhl	sp,#2
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	sp, #16
	ret
;../time.c:73: static void CheckTime(struct tm *timeptr) {
;	---------------------------------
; Function CheckTime
; ---------------------------------
_CheckTime:
	add	sp, #-3
;../time.c:84: if (timeptr->tm_sec>59) timeptr->tm_sec=59;
	ldhl	sp,#5
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#1
	ld	(hl+),a
	ld	(hl),e
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	ld	a,#0x3B
	sub	a, b
	jr	NC,00102$
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x3B
00102$:
;../time.c:85: if (timeptr->tm_min>59) timeptr->tm_min=59;
	ldhl	sp,#2
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	ld	a,(bc)
	dec	hl
	dec	hl
	ld	(hl),a
	ld	a,#0x3B
	cp	a,(hl)
	jr	NC,00104$
	ld	(bc),a
00104$:
;../time.c:86: if (timeptr->tm_hour>23) timeptr->tm_hour=23;
	ldhl	sp,#2
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	ld	a,(bc)
	dec	hl
	dec	hl
	ld	(hl),a
	ld	a,#0x17
	cp	a,(hl)
	jr	NC,00106$
	ld	(bc),a
00106$:
;../time.c:87: if (timeptr->tm_wday>6) timeptr->tm_wday=6;
	ldhl	sp,#2
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0007
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ldhl	sp,#0
	ld	(hl),a
	ld	a,#0x06
	cp	a,(hl)
	jr	NC,00108$
	ld	(bc),a
00108$:
;../time.c:88: if (timeptr->tm_mday<1) timeptr->tm_mday=1;
	ldhl	sp,#2
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	dec	hl
	dec	hl
	ld	(hl),a
	ld	a,(hl)
	sub	a, #0x01
	jr	NC,00112$
	ld	a,#0x01
	ld	(bc),a
	jr	00113$
00112$:
;../time.c:89: else if (timeptr->tm_mday>31) timeptr->tm_mday=31;
	ld	a,#0x1F
	ldhl	sp,#0
	sub	a, (hl)
	jr	NC,00113$
	ld	a,#0x1F
	ld	(bc),a
00113$:
;../time.c:90: if (timeptr->tm_mon>11) timeptr->tm_mon=11;
	ldhl	sp,#2
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ldhl	sp,#0
	ld	(hl),a
	ld	a,#0x0B
	cp	a,(hl)
	jr	NC,00115$
	ld	(bc),a
00115$:
;../time.c:91: if (timeptr->tm_year<0) timeptr->tm_year=0;
	ldhl	sp,#2
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0005
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#1
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	inc	de
	ld	a,(de)
	ld	c,a
	ld	a,#0x00
	ld	e,a
	ld	a,c
	ld	d,a
	bit	7, c
	jr	Z,00118$
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
00118$:
	add	sp, #3
	ret
;../time.c:95: char *asctime(struct tm *timeptr) {
;	---------------------------------
; Function asctime
; ---------------------------------
_asctime::
	add	sp, #-14
;../time.c:96: CheckTime(timeptr);
	ldhl	sp,#16
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_CheckTime
	add	sp, #2
;../time.c:100: timeptr->tm_year+1900);
	ldhl	sp,#16
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#2
	ld	(hl+),a
	ld	(hl),e
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0005
	add	hl,de
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
	ld	hl,#0x076C
	add	hl,bc
	inc	sp
	inc	sp
	push	hl
;../time.c:99: timeptr->tm_hour, timeptr->tm_min, timeptr->tm_sec, 
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#12
	ld	(hl+),a
	ld	(hl),#0x00
	ldhl	sp,#3
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	ld	a,(bc)
	ldhl	sp,#10
	ld	(hl+),a
	ld	(hl),#0x00
	ldhl	sp,#3
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	ld	a,(bc)
	ldhl	sp,#8
	ld	(hl+),a
	ld	(hl),#0x00
;../time.c:98: __day[timeptr->tm_wday], __month[timeptr->tm_mon], timeptr->tm_mday,
	ldhl	sp,#3
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	ldhl	sp,#6
	ld	(hl+),a
	ld	(hl),#0x00
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ld	c,a
	ld	b,#0x00
	sla	c
	rl	b
	ld	hl,#___month
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ldhl	sp,#4
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl-),a
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0007
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ld	c,a
	ld	b,#0x00
	sla	c
	rl	b
	ld	hl,#___day
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;../time.c:97: sprintf (ascTimeBuffer, "%s %s %2d %02d:%02d:%02d %04d\n",
	ld	de,#_ascTimeBuffer
	pop	hl
	push	hl
	push	hl
	ldhl	sp,#14
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#14
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#14
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#14
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#14
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
	ld	hl,#___str_0
	push	hl
	push	de
	call	_sprintf
	add	sp, #18
;../time.c:101: return ascTimeBuffer;
	ld	de,#_ascTimeBuffer
	add	sp, #14
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
	push	de
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
	add	sp, #-26
;../time.c:126: unsigned long epoch=*timep;
	ldhl	sp,#29
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	e, c
	ld	d, b
	ld	a,(de)
	ldhl	sp,#16
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;../time.c:131: lastTime.tm_sec=epoch%60;
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x003C
	push	hl
	ldhl	sp,#22
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#22
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__modulong
	add	sp, #8
	ld	b,l
	ld	c,h
	ld	a,e
	ld	de,#_lastTime
	ld	(de),a
;../time.c:132: epoch/=60; // now it is minutes
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x003C
	push	hl
	ldhl	sp,#22
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#22
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__divulong
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#16
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../time.c:133: lastTime.tm_min=epoch%60;
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x003C
	push	hl
	ldhl	sp,#22
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#22
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__modulong
	add	sp, #8
	ld	b,l
	ld	c,h
	ld	a,e
	ld	de,#(_lastTime + 0x0001)
	ld	(de),a
;../time.c:134: epoch/=60; // now it is hours
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x003C
	push	hl
	ldhl	sp,#22
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#22
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__divulong
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#0
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../time.c:135: lastTime.tm_hour=epoch%24;
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0018
	push	hl
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__modulong
	add	sp, #8
	ld	b,l
	ld	c,h
	ld	a,e
	ld	de,#(_lastTime + 0x0002)
	ld	(de),a
;../time.c:136: epoch/=24; // now it is days
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0018
	push	hl
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__divulong
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#16
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../time.c:137: lastTime.tm_wday=(epoch+4)%7;
	dec	hl
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	add	a, #0x04
	ld	e,a
	ld	a,d
	adc	a, #0x00
	push	af
	ldhl	sp,#23
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	af
	ld	a,e
	adc	a, #0x00
	ld	e,a
	ld	a,d
	adc	a, #0x00
	ldhl	sp,#23
	ld	(hl-),a
	ld	(hl),e
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0007
	push	hl
	ldhl	sp,#26
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#26
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__modulong
	add	sp, #8
	ld	b,l
	ld	c,h
	ld	a,e
	ld	de,#(_lastTime + 0x0007)
	ld	(de),a
;../time.c:140: days=0;
	xor	a, a
	ldhl	sp,#20
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;../time.c:141: while((days += (LEAP_YEAR(year) ? 366 : 365)) <= epoch) {
	ld	bc,#0x07B2
00101$:
	ld	a,c
	and	a, #0x03
	ldhl	sp,#24
	ld	(hl+),a
	ld	(hl),#0x00
	ld	a,(hl-)
	or	a,(hl)
	jr	NZ,00118$
	ld	de,#0x016E
	jr	00119$
00118$:
	ld	de,#0x016D
00119$:
	ldhl	sp,#12
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ld	a,d
	rla
	sbc	a, a
	inc	hl
	ld	(hl+),a
	ld	(hl),a
	ldhl	sp,#21
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#12
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#25
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#16
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	d,h
	ld	e,l
	ldhl	sp,#20
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#16
	ld	d, h
	ld	e, l
	ldhl	sp,#12
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	jr	C,00103$
;../time.c:142: year++;
	inc	bc
	jp	00101$
00103$:
;../time.c:144: lastTime.tm_year=year-1900;
	ld	a,c
	add	a,#0x94
	ld	c,a
	ld	a,b
	adc	a,#0xF8
	ld	b,a
	ld	hl,#(_lastTime + 0x0005)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../time.c:146: days -= LEAP_YEAR(year) ? 366 : 365;
	ldhl	sp,#24
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#12
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#25
	ld	a,(hl-)
	or	a,(hl)
	jr	NZ,00120$
	ld	de,#0x016E
	jr	00121$
00120$:
	ld	de,#0x016D
00121$:
	ldhl	sp,#8
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ld	a,d
	rla
	sbc	a, a
	inc	hl
	ld	(hl+),a
	ld	(hl),a
	ldhl	sp,#21
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#8
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#25
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#12
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	d,h
	ld	e,l
	ldhl	sp,#4
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;../time.c:147: epoch -= days; // now it is days in this year, starting at 0
	ldhl	sp,#17
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#4
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ldhl	sp,#11
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#21
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#8
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ldhl	sp,#11
	ld	(hl-),a
	ld	(hl),e
;../time.c:148: lastTime.tm_yday=epoch;
	dec	hl
	dec	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	hl,#(_lastTime + 0x0008)
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../time.c:153: for (month=0; month<12; month++) {
	ld	b,#0x00
00114$:
;../time.c:154: if (month==1) { // februari
	ld	a,b
	dec	a
	jr	NZ,00108$
;../time.c:155: if (LEAP_YEAR(year)) {
	ldhl	sp,#13
	ld	a,(hl-)
	or	a,(hl)
	jr	NZ,00105$
;../time.c:156: monthLength=29;
	ld	a,#0x1D
	jr	00109$
00105$:
;../time.c:158: monthLength=28;
	ld	a,#0x1C
	jr	00109$
00108$:
;../time.c:161: monthLength = monthDays[month];
	ld	de,#_monthDays
	ld	l,b
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#24
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
00109$:
;../time.c:164: if (epoch>=monthLength) {
	ldhl	sp,#20
	ld	(hl+),a
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	ldhl	sp,#8
	ld	d, h
	ld	e, l
	ldhl	sp,#20
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	jp	C,00113$
;../time.c:165: epoch-=monthLength;
	ldhl	sp,#9
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#20
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ldhl	sp,#11
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#13
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#24
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ldhl	sp,#11
	ld	(hl-),a
	ld	(hl),e
;../time.c:153: for (month=0; month<12; month++) {
	inc	b
	ld	a,b
	sub	a, #0x0C
	jp	C,00114$
00113$:
;../time.c:170: lastTime.tm_mon=month;
	ld	hl,#(_lastTime + 0x0004)
	ld	(hl),b
;../time.c:171: lastTime.tm_mday=epoch+1;
	ld	bc,#_lastTime + 3
	ldhl	sp,#8
	ld	a,(hl)
	inc	a
	ld	(bc),a
;../time.c:173: lastTime.tm_isdst=0;
	ld	bc,#_lastTime + 10
	xor	a, a
	ld	(bc),a
;../time.c:175: return &lastTime;
	ld	de,#_lastTime
	add	sp, #26
	ret
;../time.c:179: time_t mktime(struct tm *timeptr) {
;	---------------------------------
; Function mktime
; ---------------------------------
_mktime::
	add	sp, #-22
;../time.c:180: int year=timeptr->tm_year+1900, month=timeptr->tm_mon, i;
	ldhl	sp,#24
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#16
	ld	(hl+),a
	ld	(hl),e
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0005
	add	hl,de
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
	ld	hl,#0x076C
	add	hl,bc
	ld	a,l
	ld	d,h
	ldhl	sp,#2
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#17
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ldhl	sp,#0
	ld	(hl+),a
	ld	(hl),#0x00
;../time.c:183: CheckTime(timeptr);
	ldhl	sp,#16
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_CheckTime
	add	sp, #2
;../time.c:186: seconds= (year-1970)*(60*60*24L*365);
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x07B2
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	ld	b,a
	ld	c,e
	ld	a,b
	rla
	sbc	a, a
	ld	e,a
	ld	d,a
	push	de
	push	bc
	ld	hl,#0x01E1
	push	hl
	ld	hl,#0x3380
	push	hl
	call	__mullong
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#18
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../time.c:189: for (i=1970; i<year; i++) {
	ld	bc,#0x07B2
00110$:
	ldhl	sp,#2
	ld	a,c
	sub	a, (hl)
	inc	hl
	ld	a,b
	sbc	a, (hl)
	ld	a,b
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z,00147$
	bit	7, d
	jr	NZ,00148$
	cp	a, a
	jr	00148$
00147$:
	bit	7, d
	jr	Z,00148$
	scf
00148$:
	jp	NC,00124$
;../time.c:190: if (LEAP_YEAR(i)) {
	push	bc
	ld	hl,#0x0004
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
	pop	bc
	ld	a,d
	or	a,e
	jr	NZ,00111$
;../time.c:191: seconds+= 60*60*24L;
	ldhl	sp,#19
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	add	a, #0x80
	ld	e,a
	ld	a,d
	adc	a, #0x51
	push	af
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#23
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	af
	ld	a,e
	adc	a, #0x01
	ld	e,a
	ld	a,d
	adc	a, #0x00
	ld	(hl-),a
	ld	(hl),e
00111$:
;../time.c:189: for (i=1970; i<year; i++) {
	inc	bc
	jp	00110$
00124$:
;../time.c:196: for (i=0; i<month; i++) {
	ld	hl,#0x0004
	push	hl
	ldhl	sp,#4
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__modsint
	add	sp, #4
	ldhl	sp,#15
	ld	(hl),d
	dec	hl
	ld	(hl),e
	ldhl	sp,#8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
00113$:
	ldhl	sp,#8
	ld	d, h
	ld	e, l
	ldhl	sp,#0
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z,00149$
	bit	7, d
	jr	NZ,00150$
	cp	a, a
	jr	00150$
00149$:
	bit	7, d
	jr	Z,00150$
	scf
00150$:
	jp	NC,00108$
;../time.c:197: if (i==1 && LEAP_YEAR(year)) { 
	ldhl	sp,#8
	ld	a,(hl)
	dec	a
	jp	NZ,00105$
	inc	hl
	ld	a,(hl)
	or	a, a
	jp	NZ,00105$
	ldhl	sp,#15
	ld	a,(hl-)
	or	a,(hl)
	jr	NZ,00105$
;../time.c:198: seconds+= 60*60*24L*29;
	ldhl	sp,#19
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	add	a, #0x80
	ld	e,a
	ld	a,d
	adc	a, #0x3B
	push	af
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#23
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	af
	ld	a,e
	adc	a, #0x26
	ld	e,a
	ld	a,d
	adc	a, #0x00
	ld	(hl-),a
	ld	(hl),e
	jp	00114$
00105$:
;../time.c:200: seconds+= 60*60*24L*monthDays[i];
	ld	de,#_monthDays
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	ld	c,a
	ld	b,a
	push	bc
	push	de
	ld	hl,#0x0001
	push	hl
	ld	hl,#0x5180
	push	hl
	call	__mullong
	add	sp, #8
	push	hl
	ldhl	sp,#12
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ldhl	sp,#19
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#10
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#21
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#23
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#14
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ldhl	sp,#21
	ld	(hl-),a
	ld	(hl),e
00114$:
;../time.c:196: for (i=0; i<month; i++) {
	ldhl	sp,#8
	inc	(hl)
	jp	NZ,00113$
	inc	hl
	inc	(hl)
	jp	00113$
00108$:
;../time.c:204: seconds+= (timeptr->tm_mday-1)*60*60*24L;
	ldhl	sp,#17
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	ld	c,a
	ld	b,#0x00
	dec	bc
	ld	a,b
	rla
	sbc	a, a
	ld	e,a
	ld	d,a
	push	de
	push	bc
	ld	hl,#0x0001
	push	hl
	ld	hl,#0x5180
	push	hl
	call	__mullong
	add	sp, #8
	push	hl
	ldhl	sp,#12
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ldhl	sp,#19
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#10
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#23
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#14
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ld	(hl-),a
	ld	(hl),e
;../time.c:205: seconds+= timeptr->tm_hour*60*60L;
	ldhl	sp,#17
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	ld	a,(bc)
	ld	e,a
	ld	d,#0x00
	ld	bc,#0x0000
	push	bc
	push	de
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0E10
	push	hl
	call	__mullong
	add	sp, #8
	push	hl
	ldhl	sp,#20
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ldhl	sp,#11
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#18
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#13
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#15
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#22
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ldhl	sp,#13
	ld	(hl-),a
	ld	(hl),e
;../time.c:206: seconds+= timeptr->tm_min*60;
	ldhl	sp,#17
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	ld	a,(bc)
	ld	c,a
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
	ld	b,l
	ld	c,h
	ldhl	sp,#18
	ld	(hl),b
	inc	hl
	ld	(hl),c
	ld	a,c
	rla
	sbc	a, a
	inc	hl
	ld	(hl+),a
	ld	(hl),a
	ldhl	sp,#11
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#18
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#13
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#15
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#22
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ldhl	sp,#13
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	d,h
	ld	e,l
	ldhl	sp,#4
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;../time.c:207: seconds+= timeptr->tm_sec;
	ldhl	sp,#17
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	d,a
	ld	e,#0x00
	ldhl	sp,#10
	ld	(hl),d
	inc	hl
	ld	(hl),e
	ld	a,e
	rla
	sbc	a, a
	inc	hl
	ld	(hl+),a
	ld	(hl),a
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#10
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#9
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#14
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ld	(hl-),a
	ld	(hl),e
;../time.c:208: return seconds;
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	sp, #22
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
	.area _CABS (ABS)
