;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:39 2022
;--------------------------------------------------------
	.cs08
	.module time
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
	.globl ___day
	.globl ___month
	.globl _RtcRead
	.globl _sprintf
	.globl _time
	.globl _asctime
	.globl _ctime
	.globl _localtime
	.globl _gmtime
	.globl _mktime
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_asctime_sloc0_1_0:
	.ds 2
_asctime_sloc1_1_0:
	.ds 2
_asctime_sloc2_1_0:
	.ds 2
_asctime_sloc3_1_0:
	.ds 2
_asctime_sloc4_1_0:
	.ds 2
_asctime_sloc5_1_0:
	.ds 2
_gmtime_sloc0_1_0:
	.ds 4
_gmtime_sloc1_1_0:
	.ds 4
_gmtime_sloc2_1_0:
	.ds 2
_gmtime_sloc3_1_0:
	.ds 4
_mktime_sloc0_1_0:
	.ds 4
_mktime_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_CheckTime_sloc0_1_0:
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
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
_time_now_1_21:
	.ds 12
_time_t_1_21:
	.ds 4
_ascTimeBuffer:
	.ds 32
_CheckTime_timeptr_1_24:
	.ds 2
_asctime_timeptr_1_26:
	.ds 2
_lastTime:
	.ds 12
_gmtime_epoch_1_33:
	.ds 4
_gmtime_days_1_33:
	.ds 4
_mktime_timeptr_1_42:
	.ds 2
_mktime_year_1_43:
	.ds 2
_mktime_month_1_43:
	.ds 2
_mktime_seconds_1_43:
	.ds 4
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
;Allocation info for local variables in function 'RtcRead'
;------------------------------------------------------------
;timeptr                   Allocated to registers 
;------------------------------------------------------------
;../time.c:42: unsigned char RtcRead(struct tm *timeptr) {
;	-----------------------------------------
;	 function RtcRead
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_RtcRead:
;../time.c:45: return 0;
	clra
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'time'
;------------------------------------------------------------
;timeptr                   Allocated to registers x h 
;now                       Allocated with name '_time_now_1_21'
;t                         Allocated with name '_time_t_1_21'
;------------------------------------------------------------
;../time.c:50: time_t time(time_t *timeptr) {
;	-----------------------------------------
;	 function time
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_time:
	pshx
	tax
	pulh
;../time.c:52: time_t t=(time_t) -1;
	lda	#0xFF
	sta	_time_t_1_21
	sta	(_time_t_1_21 + 1)
	sta	(_time_t_1_21 + 2)
	sta	(_time_t_1_21 + 3)
;../time.c:54: if (RtcRead(&now)) {
	pshx
	pshh
	lda	#_time_now_1_21
	ldx	#>_time_now_1_21
	jsr	_RtcRead
	pulh
	pulx
	tsta
	beq	00102$
;../time.c:55: t=mktime(&now);
	pshx
	pshh
	lda	#_time_now_1_21
	ldx	#>_time_now_1_21
	jsr	_mktime
	sta	(_time_t_1_21 + 3)
	stx	(_time_t_1_21 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_time_t_1_21 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_time_t_1_21
	pulh
	pulx
00102$:
;../time.c:57: if (timeptr) {
	cphx	#0x00
	beq	00104$
;../time.c:58: *timeptr=t;
	lda	_time_t_1_21
	sta	,x
	lda	(_time_t_1_21 + 1)
	sta	1,x
	lda	(_time_t_1_21 + 2)
	sta	2,x
	lda	(_time_t_1_21 + 3)
	sta	3,x
00104$:
;../time.c:60: return t;
	lda	_time_t_1_21
	sta	*___SDCC_hc08_ret3
	lda	(_time_t_1_21 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(_time_t_1_21 + 2)
	lda	(_time_t_1_21 + 3)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'CheckTime'
;------------------------------------------------------------
;timeptr                   Allocated with name '_CheckTime_timeptr_1_24'
;sloc0                     Allocated with name '_CheckTime_sloc0_1_0'
;------------------------------------------------------------
;../time.c:73: static void CheckTime(struct tm *timeptr) {
;	-----------------------------------------
;	 function CheckTime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CheckTime:
	sta	(_CheckTime_timeptr_1_24 + 1)
	stx	_CheckTime_timeptr_1_24
;../time.c:84: if (timeptr->tm_sec>59) timeptr->tm_sec=59;
	ldhx	_CheckTime_timeptr_1_24
	ldx	,x
	cpx	#0x3B
	bls	00102$
	ldhx	_CheckTime_timeptr_1_24
	lda	#0x3B
	sta	,x
00102$:
;../time.c:85: if (timeptr->tm_min>59) timeptr->tm_min=59;
	ldhx	_CheckTime_timeptr_1_24
	lda	1,x
	cmp	#0x3B
	bls	00104$
	lda	#0x3B
	sta	1,x
00104$:
;../time.c:86: if (timeptr->tm_hour>23) timeptr->tm_hour=23;
	ldhx	_CheckTime_timeptr_1_24
	lda	2,x
	cmp	#0x17
	bls	00106$
	lda	#0x17
	sta	2,x
00106$:
;../time.c:87: if (timeptr->tm_wday>6) timeptr->tm_wday=6;
	ldhx	_CheckTime_timeptr_1_24
	lda	7,x
	cmp	#0x06
	bls	00108$
	lda	#0x06
	sta	7,x
00108$:
;../time.c:88: if (timeptr->tm_mday<1) timeptr->tm_mday=1;
	ldhx	_CheckTime_timeptr_1_24
	lda	3,x
	cmp	#0x01
	bcc	00112$
	lda	#0x01
	sta	3,x
	bra	00113$
00112$:
;../time.c:89: else if (timeptr->tm_mday>31) timeptr->tm_mday=31;
	cmp	#0x1F
	bls	00113$
	lda	#0x1F
	sta	3,x
00113$:
;../time.c:90: if (timeptr->tm_mon>11) timeptr->tm_mon=11;
	ldhx	_CheckTime_timeptr_1_24
	lda	4,x
	cmp	#0x0B
	bls	00115$
	lda	#0x0B
	sta	4,x
00115$:
;../time.c:91: if (timeptr->tm_year<0) timeptr->tm_year=0;
	ldhx	_CheckTime_timeptr_1_24
	lda	5,x
	sta	*_CheckTime_sloc0_1_0
	lda	6,x
	sta	*(_CheckTime_sloc0_1_0 + 1)
	lda	*_CheckTime_sloc0_1_0
	sub	#0x00
	bge	00118$
	clra
	sta	5,x
	sta	6,x
00118$:
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'asctime'
;------------------------------------------------------------
;sloc0                     Allocated with name '_asctime_sloc0_1_0'
;sloc1                     Allocated with name '_asctime_sloc1_1_0'
;sloc2                     Allocated with name '_asctime_sloc2_1_0'
;sloc3                     Allocated with name '_asctime_sloc3_1_0'
;sloc4                     Allocated with name '_asctime_sloc4_1_0'
;sloc5                     Allocated with name '_asctime_sloc5_1_0'
;timeptr                   Allocated with name '_asctime_timeptr_1_26'
;------------------------------------------------------------
;../time.c:95: char *asctime(struct tm *timeptr) {
;	-----------------------------------------
;	 function asctime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_asctime:
	sta	(_asctime_timeptr_1_26 + 1)
	stx	_asctime_timeptr_1_26
;../time.c:96: CheckTime(timeptr);
	lda	(_asctime_timeptr_1_26 + 1)
	ldx	_asctime_timeptr_1_26
	jsr	_CheckTime
;../time.c:100: timeptr->tm_year+1900);
	ldhx	_asctime_timeptr_1_26
	lda	6,x
	ldx	5,x
	add	#0x6C
	sta	*(_asctime_sloc0_1_0 + 1)
	txa
	adc	#0x07
	sta	*_asctime_sloc0_1_0
;../time.c:99: timeptr->tm_hour, timeptr->tm_min, timeptr->tm_sec, 
	ldhx	_asctime_timeptr_1_26
	ldx	,x
	stx	*(_asctime_sloc1_1_0 + 1)
	mov	#0x00,*_asctime_sloc1_1_0
	ldhx	_asctime_timeptr_1_26
	ldx	1,x
	stx	*(_asctime_sloc2_1_0 + 1)
	mov	#0x00,*_asctime_sloc2_1_0
	ldhx	_asctime_timeptr_1_26
	ldx	2,x
	stx	*(_asctime_sloc3_1_0 + 1)
	mov	#0x00,*_asctime_sloc3_1_0
;../time.c:98: __day[timeptr->tm_wday], __month[timeptr->tm_mon], timeptr->tm_mday,
	ldhx	_asctime_timeptr_1_26
	ldx	3,x
	stx	*(_asctime_sloc4_1_0 + 1)
	mov	#0x00,*_asctime_sloc4_1_0
	ldhx	_asctime_timeptr_1_26
	lda	4,x
	ldx	#0x02
	mul
	pshx
	pulh
	tax
	ldhx	(___month),x
	stx	*(_asctime_sloc5_1_0 + 1)
	pshh
	pula
	sta	*_asctime_sloc5_1_0
	ldhx	_asctime_timeptr_1_26
	lda	7,x
	ldx	#0x02
	mul
	pshx
	pulh
	tax
	ldhx	(___day),x
;../time.c:97: sprintf (ascTimeBuffer, "%s %s %2d %02d:%02d:%02d %04d\n",
	lda	*(_asctime_sloc0_1_0 + 1)
	psha
	lda	*_asctime_sloc0_1_0
	psha
	lda	*(_asctime_sloc1_1_0 + 1)
	psha
	lda	*_asctime_sloc1_1_0
	psha
	lda	*(_asctime_sloc2_1_0 + 1)
	psha
	lda	*_asctime_sloc2_1_0
	psha
	lda	*(_asctime_sloc3_1_0 + 1)
	psha
	lda	*_asctime_sloc3_1_0
	psha
	lda	*(_asctime_sloc4_1_0 + 1)
	psha
	lda	*_asctime_sloc4_1_0
	psha
	lda	*(_asctime_sloc5_1_0 + 1)
	psha
	lda	*_asctime_sloc5_1_0
	psha
	pshx
	pshh
	lda	#___str_0
	psha
	lda	#>___str_0
	psha
	lda	#_ascTimeBuffer
	psha
	lda	#>_ascTimeBuffer
	psha
	jsr	_sprintf
	ais	#18
;../time.c:101: return ascTimeBuffer;
	ldx	#>_ascTimeBuffer
	lda	#_ascTimeBuffer
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'ctime'
;------------------------------------------------------------
;timep                     Allocated to registers a x 
;------------------------------------------------------------
;../time.c:104: char *ctime(time_t *timep) {
;	-----------------------------------------
;	 function ctime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ctime:
;../time.c:105: return asctime(localtime(timep));
	jsr	_localtime
	jmp	_asctime
;------------------------------------------------------------
;Allocation info for local variables in function 'localtime'
;------------------------------------------------------------
;timep                     Allocated to registers a x 
;------------------------------------------------------------
;../time.c:121: struct tm *localtime(time_t *timep) {
;	-----------------------------------------
;	 function localtime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_localtime:
;../time.c:122: return gmtime(timep);
	jmp	_gmtime
;------------------------------------------------------------
;Allocation info for local variables in function 'gmtime'
;------------------------------------------------------------
;sloc0                     Allocated with name '_gmtime_sloc0_1_0'
;sloc1                     Allocated with name '_gmtime_sloc1_1_0'
;sloc2                     Allocated with name '_gmtime_sloc2_1_0'
;sloc3                     Allocated with name '_gmtime_sloc3_1_0'
;timep                     Allocated to registers x h 
;epoch                     Allocated with name '_gmtime_epoch_1_33'
;year                      Allocated to registers 
;month                     Allocated to registers 
;monthLength               Allocated to registers x 
;days                      Allocated with name '_gmtime_days_1_33'
;------------------------------------------------------------
;../time.c:125: struct tm *gmtime(time_t *timep) {
;	-----------------------------------------
;	 function gmtime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_gmtime:
	pshx
	tax
	pulh
;../time.c:126: unsigned long epoch=*timep;
	lda	,x
	sta	*_gmtime_sloc0_1_0
	lda	1,x
	sta	*(_gmtime_sloc0_1_0 + 1)
	lda	2,x
	sta	*(_gmtime_sloc0_1_0 + 2)
	lda	3,x
	sta	*(_gmtime_sloc0_1_0 + 3)
;../time.c:131: lastTime.tm_sec=epoch%60;
	lda	*_gmtime_sloc0_1_0
	sta	__modulong_PARM_1
	lda	*(_gmtime_sloc0_1_0 + 1)
	sta	(__modulong_PARM_1 + 1)
	lda	*(_gmtime_sloc0_1_0 + 2)
	sta	(__modulong_PARM_1 + 2)
	lda	*(_gmtime_sloc0_1_0 + 3)
	sta	(__modulong_PARM_1 + 3)
	clrh
	clrx
	sthx	__modulong_PARM_2
	ldx	#0x3C
	sthx	(__modulong_PARM_2 + 2)
	jsr	__modulong
	sta	*(_gmtime_sloc1_1_0 + 3)
	stx	*(_gmtime_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_gmtime_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_gmtime_sloc1_1_0
	ldx	*(_gmtime_sloc1_1_0 + 3)
	stx	_lastTime
;../time.c:132: epoch/=60; // now it is minutes
	lda	*_gmtime_sloc0_1_0
	sta	__divulong_PARM_1
	lda	*(_gmtime_sloc0_1_0 + 1)
	sta	(__divulong_PARM_1 + 1)
	lda	*(_gmtime_sloc0_1_0 + 2)
	sta	(__divulong_PARM_1 + 2)
	lda	*(_gmtime_sloc0_1_0 + 3)
	sta	(__divulong_PARM_1 + 3)
	clrh
	clrx
	sthx	__divulong_PARM_2
	ldx	#0x3C
	sthx	(__divulong_PARM_2 + 2)
;../time.c:133: lastTime.tm_min=epoch%60;
	jsr	__divulong
	sta	*(_gmtime_sloc1_1_0 + 3)
	stx	*(_gmtime_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_gmtime_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_gmtime_sloc1_1_0
	lda	*_gmtime_sloc1_1_0
	sta	__modulong_PARM_1
	lda	*(_gmtime_sloc1_1_0 + 1)
	sta	(__modulong_PARM_1 + 1)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sta	(__modulong_PARM_1 + 2)
	lda	*(_gmtime_sloc1_1_0 + 3)
	sta	(__modulong_PARM_1 + 3)
	clrh
	clrx
	sthx	__modulong_PARM_2
	ldx	#0x3C
	sthx	(__modulong_PARM_2 + 2)
	jsr	__modulong
	sta	*(_gmtime_sloc0_1_0 + 3)
	stx	*(_gmtime_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_gmtime_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_gmtime_sloc0_1_0
	ldx	*(_gmtime_sloc0_1_0 + 3)
	stx	(_lastTime + 0x0001)
;../time.c:134: epoch/=60; // now it is hours
	lda	*_gmtime_sloc1_1_0
	sta	__divulong_PARM_1
	lda	*(_gmtime_sloc1_1_0 + 1)
	sta	(__divulong_PARM_1 + 1)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sta	(__divulong_PARM_1 + 2)
	lda	*(_gmtime_sloc1_1_0 + 3)
	sta	(__divulong_PARM_1 + 3)
	clrh
	clrx
	sthx	__divulong_PARM_2
	ldx	#0x3C
	sthx	(__divulong_PARM_2 + 2)
;../time.c:135: lastTime.tm_hour=epoch%24;
	jsr	__divulong
	sta	*(_gmtime_sloc1_1_0 + 3)
	stx	*(_gmtime_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_gmtime_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_gmtime_sloc1_1_0
	lda	*_gmtime_sloc1_1_0
	sta	__modulong_PARM_1
	lda	*(_gmtime_sloc1_1_0 + 1)
	sta	(__modulong_PARM_1 + 1)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sta	(__modulong_PARM_1 + 2)
	lda	*(_gmtime_sloc1_1_0 + 3)
	sta	(__modulong_PARM_1 + 3)
	clrh
	clrx
	sthx	__modulong_PARM_2
	ldx	#0x18
	sthx	(__modulong_PARM_2 + 2)
	jsr	__modulong
	sta	*(_gmtime_sloc0_1_0 + 3)
	stx	*(_gmtime_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_gmtime_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_gmtime_sloc0_1_0
	ldx	*(_gmtime_sloc0_1_0 + 3)
	stx	(_lastTime + 0x0002)
;../time.c:136: epoch/=24; // now it is days
	lda	*_gmtime_sloc1_1_0
	sta	__divulong_PARM_1
	lda	*(_gmtime_sloc1_1_0 + 1)
	sta	(__divulong_PARM_1 + 1)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sta	(__divulong_PARM_1 + 2)
	lda	*(_gmtime_sloc1_1_0 + 3)
	sta	(__divulong_PARM_1 + 3)
	clrh
	clrx
	sthx	__divulong_PARM_2
	ldx	#0x18
	sthx	(__divulong_PARM_2 + 2)
;../time.c:137: lastTime.tm_wday=(epoch+4)%7;
	jsr	__divulong
	sta	*(_gmtime_sloc1_1_0 + 3)
	stx	*(_gmtime_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_gmtime_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_gmtime_sloc1_1_0
	ldhx	#__modulong_PARM_1
	lda	*(_gmtime_sloc1_1_0 + 3)
	add	#0x04
	sta	3,x
	lda	*(_gmtime_sloc1_1_0 + 2)
	adc	#0x00
	sta	2,x
	lda	*(_gmtime_sloc1_1_0 + 1)
	adc	#0x00
	sta	1,x
	lda	*_gmtime_sloc1_1_0
	adc	#0x00
	sta	,x
	clrh
	clrx
	sthx	__modulong_PARM_2
	ldx	#0x07
	sthx	(__modulong_PARM_2 + 2)
	jsr	__modulong
	sta	*(_gmtime_sloc0_1_0 + 3)
	stx	*(_gmtime_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_gmtime_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_gmtime_sloc0_1_0
	ldx	*(_gmtime_sloc0_1_0 + 3)
	stx	(_lastTime + 0x0007)
;../time.c:140: days=0;
	clrh
	clrx
	sthx	_gmtime_days_1_33
	sthx	(_gmtime_days_1_33 + 2)
;../time.c:141: while((days += (LEAP_YEAR(year) ? 366 : 365)) <= epoch) {
	ldhx	#0x07B2
00101$:
	txa
	and	#0x03
	sta	*(_gmtime_sloc0_1_0 + 1)
	mov	#0x00,*_gmtime_sloc0_1_0
	lda	*(_gmtime_sloc0_1_0 + 1)
	ora	*_gmtime_sloc0_1_0
	bne	00118$
	mov	#0x01,*_gmtime_sloc2_1_0
	mov	#0x6E,*(_gmtime_sloc2_1_0 + 1)
	bra	00119$
00118$:
	mov	#0x01,*_gmtime_sloc2_1_0
	mov	#0x6D,*(_gmtime_sloc2_1_0 + 1)
00119$:
	mov	*(_gmtime_sloc2_1_0 + 1),*(_gmtime_sloc3_1_0 + 3)
	lda	*_gmtime_sloc2_1_0
	sta	*(_gmtime_sloc3_1_0 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	*(_gmtime_sloc3_1_0 + 1)
	sta	*_gmtime_sloc3_1_0
	lda	(_gmtime_days_1_33 + 3)
	add	*(_gmtime_sloc3_1_0 + 3)
	sta	*(_gmtime_sloc3_1_0 + 3)
	lda	(_gmtime_days_1_33 + 2)
	adc	*(_gmtime_sloc3_1_0 + 2)
	sta	*(_gmtime_sloc3_1_0 + 2)
	lda	(_gmtime_days_1_33 + 1)
	adc	*(_gmtime_sloc3_1_0 + 1)
	sta	*(_gmtime_sloc3_1_0 + 1)
	lda	_gmtime_days_1_33
	adc	*_gmtime_sloc3_1_0
	sta	*_gmtime_sloc3_1_0
	lda	*_gmtime_sloc3_1_0
	sta	_gmtime_days_1_33
	lda	*(_gmtime_sloc3_1_0 + 1)
	sta	(_gmtime_days_1_33 + 1)
	lda	*(_gmtime_sloc3_1_0 + 2)
	sta	(_gmtime_days_1_33 + 2)
	lda	*(_gmtime_sloc3_1_0 + 3)
	sta	(_gmtime_days_1_33 + 3)
	lda	*(_gmtime_sloc1_1_0 + 3)
	sub	*(_gmtime_sloc3_1_0 + 3)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sbc	*(_gmtime_sloc3_1_0 + 2)
	lda	*(_gmtime_sloc1_1_0 + 1)
	sbc	*(_gmtime_sloc3_1_0 + 1)
	lda	*_gmtime_sloc1_1_0
	sbc	*_gmtime_sloc3_1_0
	bcs	00103$
;../time.c:142: year++;
	aix	#1
	bra	00101$
00103$:
;../time.c:144: lastTime.tm_year=year-1900;
	txa
	sub	#0x6C
	tax
	pshh
	pula
	sbc	#0x07
	psha
	pulh
	sthx	(_lastTime + 0x0005)
;../time.c:146: days -= LEAP_YEAR(year) ? 366 : 365;
	mov	*_gmtime_sloc0_1_0,*_gmtime_sloc3_1_0
	mov	*(_gmtime_sloc0_1_0 + 1),*(_gmtime_sloc3_1_0 + 1)
	lda	*(_gmtime_sloc0_1_0 + 1)
	ora	*_gmtime_sloc0_1_0
	bne	00120$
	ldhx	#0x016E
	bra	00121$
00120$:
	ldhx	#0x016D
00121$:
	stx	*(_gmtime_sloc0_1_0 + 3)
	pshh
	pula
	sta	*(_gmtime_sloc0_1_0 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	*(_gmtime_sloc0_1_0 + 1)
	sta	*_gmtime_sloc0_1_0
	ldhx	#_gmtime_days_1_33
	lda	3,x
	sub	*(_gmtime_sloc0_1_0 + 3)
	sta	3,x
	lda	2,x
	sbc	*(_gmtime_sloc0_1_0 + 2)
	sta	2,x
	lda	1,x
	sbc	*(_gmtime_sloc0_1_0 + 1)
	sta	1,x
	lda	,x
	sbc	*_gmtime_sloc0_1_0
	sta	,x
;../time.c:147: epoch -= days; // now it is days in this year, starting at 0
	ldhx	#_gmtime_days_1_33
	lda	*(_gmtime_sloc1_1_0 + 3)
	sub	3,x
	sta	*(_gmtime_sloc1_1_0 + 3)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sbc	2,x
	sta	*(_gmtime_sloc1_1_0 + 2)
	lda	*(_gmtime_sloc1_1_0 + 1)
	sbc	1,x
	sta	*(_gmtime_sloc1_1_0 + 1)
	lda	*_gmtime_sloc1_1_0
	sbc	,x
	sta	*_gmtime_sloc1_1_0
	lda	*_gmtime_sloc1_1_0
	sta	_gmtime_epoch_1_33
	lda	*(_gmtime_sloc1_1_0 + 1)
	sta	(_gmtime_epoch_1_33 + 1)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sta	(_gmtime_epoch_1_33 + 2)
	lda	*(_gmtime_sloc1_1_0 + 3)
	sta	(_gmtime_epoch_1_33 + 3)
;../time.c:148: lastTime.tm_yday=epoch;
	ldx	*(_gmtime_sloc1_1_0 + 3)
	lda	*(_gmtime_sloc1_1_0 + 2)
	psha
	pulh
	sthx	(_lastTime + 0x0008)
;../time.c:153: for (month=0; month<12; month++) {
	clra
00114$:
;../time.c:154: if (month==1) { // februari
	cmp	#0x01
	bne	00108$
;../time.c:155: if (LEAP_YEAR(year)) {
	tst	*(_gmtime_sloc3_1_0 + 1)
	bne	00160$
	tst	*_gmtime_sloc3_1_0
00160$:
	bne	00105$
;../time.c:156: monthLength=29;
	ldx	#0x1D
	bra	00109$
00105$:
;../time.c:158: monthLength=28;
	ldx	#0x1C
	bra	00109$
00108$:
;../time.c:161: monthLength = monthDays[month];
	tax
	clrh
	ldx	(_monthDays),x
00109$:
;../time.c:164: if (epoch>=monthLength) {
	stx	*(_gmtime_sloc1_1_0 + 3)
	mov	#0x00,*(_gmtime_sloc1_1_0 + 2)
	mov	#0x00,*(_gmtime_sloc1_1_0 + 1)
	mov	#0x00,*_gmtime_sloc1_1_0
	psha
	lda	(_gmtime_epoch_1_33 + 3)
	sub	*(_gmtime_sloc1_1_0 + 3)
	lda	(_gmtime_epoch_1_33 + 2)
	sbc	*(_gmtime_sloc1_1_0 + 2)
	lda	(_gmtime_epoch_1_33 + 1)
	sbc	*(_gmtime_sloc1_1_0 + 1)
	lda	_gmtime_epoch_1_33
	sbc	*_gmtime_sloc1_1_0
	pula
	bcs	00113$
;../time.c:165: epoch-=monthLength;
	ldhx	#_gmtime_epoch_1_33
	psha
	lda	3,x
	sub	*(_gmtime_sloc1_1_0 + 3)
	sta	3,x
	lda	2,x
	sbc	*(_gmtime_sloc1_1_0 + 2)
	sta	2,x
	lda	1,x
	sbc	*(_gmtime_sloc1_1_0 + 1)
	sta	1,x
	lda	,x
	sbc	*_gmtime_sloc1_1_0
	sta	,x
	pula
;../time.c:153: for (month=0; month<12; month++) {
	inca
	cmp	#0x0C
	bcs	00114$
00113$:
;../time.c:170: lastTime.tm_mon=month;
	sta	(_lastTime + 0x0004)
;../time.c:171: lastTime.tm_mday=epoch+1;
	lda	(_gmtime_epoch_1_33 + 3)
	inca
	sta	(_lastTime + 0x0003)
;../time.c:173: lastTime.tm_isdst=0;
	clra
	sta	(_lastTime + 0x000a)
;../time.c:175: return &lastTime;
	ldx	#>_lastTime
	lda	#_lastTime
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'mktime'
;------------------------------------------------------------
;sloc0                     Allocated with name '_mktime_sloc0_1_0'
;sloc1                     Allocated with name '_mktime_sloc1_1_0'
;timeptr                   Allocated with name '_mktime_timeptr_1_42'
;year                      Allocated with name '_mktime_year_1_43'
;month                     Allocated with name '_mktime_month_1_43'
;i                         Allocated to registers 
;seconds                   Allocated with name '_mktime_seconds_1_43'
;------------------------------------------------------------
;../time.c:179: time_t mktime(struct tm *timeptr) {
;	-----------------------------------------
;	 function mktime
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_mktime:
	sta	(_mktime_timeptr_1_42 + 1)
	stx	_mktime_timeptr_1_42
;../time.c:180: int year=timeptr->tm_year+1900, month=timeptr->tm_mon, i;
	ldhx	_mktime_timeptr_1_42
	lda	6,x
	ldx	5,x
	add	#0x6C
	sta	(_mktime_year_1_43 + 1)
	txa
	adc	#0x07
	sta	_mktime_year_1_43
	ldhx	_mktime_timeptr_1_42
	ldx	4,x
	stx	(_mktime_month_1_43 + 1)
	clra
	sta	_mktime_month_1_43
;../time.c:183: CheckTime(timeptr);
	lda	(_mktime_timeptr_1_42 + 1)
	ldx	_mktime_timeptr_1_42
	jsr	_CheckTime
;../time.c:186: seconds= (year-1970)*(60*60*24L*365);
	lda	(_mktime_year_1_43 + 1)
	sub	#0xB2
	psha
	lda	_mktime_year_1_43
	sbc	#0x07
	tax
	pula
	sta	(__mullong_PARM_2 + 3)
	txa
	sta	(__mullong_PARM_2 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	(__mullong_PARM_2 + 1)
	sta	__mullong_PARM_2
	ldhx	#0x01E1
	sthx	__mullong_PARM_1
	ldhx	#0x3380
	sthx	(__mullong_PARM_1 + 2)
;../time.c:189: for (i=1970; i<year; i++) {
	jsr	__mullong
	sta	*(_mktime_sloc0_1_0 + 3)
	stx	*(_mktime_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_mktime_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_mktime_sloc0_1_0
	ldhx	#0x07B2
00110$:
	cphx	_mktime_year_1_43
	bge	00124$
;../time.c:190: if (LEAP_YEAR(i)) {
	clra
	sta	__modsint_PARM_2
	lda	#0x04
	sta	(__modsint_PARM_2 + 1)
	pshx
	pshh
	txa
	pshh
	pulx
	jsr	__modsint
	sta	*(_mktime_sloc1_1_0 + 1)
	stx	*_mktime_sloc1_1_0
	pulh
	pulx
	lda	*(_mktime_sloc1_1_0 + 1)
	ora	*_mktime_sloc1_1_0
	bne	00111$
;../time.c:191: seconds+= 60*60*24L;
	lda	*(_mktime_sloc0_1_0 + 3)
	add	#0x80
	sta	*(_mktime_sloc0_1_0 + 3)
	lda	*(_mktime_sloc0_1_0 + 2)
	adc	#0x51
	sta	*(_mktime_sloc0_1_0 + 2)
	lda	*(_mktime_sloc0_1_0 + 1)
	adc	#0x01
	sta	*(_mktime_sloc0_1_0 + 1)
	lda	*_mktime_sloc0_1_0
	adc	#0x00
	sta	*_mktime_sloc0_1_0
00111$:
;../time.c:189: for (i=1970; i<year; i++) {
	aix	#1
	bra	00110$
00124$:
	lda	*_mktime_sloc0_1_0
	sta	_mktime_seconds_1_43
	lda	*(_mktime_sloc0_1_0 + 1)
	sta	(_mktime_seconds_1_43 + 1)
	lda	*(_mktime_sloc0_1_0 + 2)
	sta	(_mktime_seconds_1_43 + 2)
	lda	*(_mktime_sloc0_1_0 + 3)
	sta	(_mktime_seconds_1_43 + 3)
;../time.c:196: for (i=0; i<month; i++) {
	ldhx	#0x0004
	sthx	__modsint_PARM_2
	lda	(_mktime_year_1_43 + 1)
	ldx	_mktime_year_1_43
	jsr	__modsint
	sta	*(_mktime_sloc1_1_0 + 1)
	stx	*_mktime_sloc1_1_0
	clrh
	clrx
00113$:
	cphx	_mktime_month_1_43
	blt	00149$
	jmp	00108$
00149$:
;../time.c:197: if (i==1 && LEAP_YEAR(year)) { 
	cpx	#0x01
	bne	00150$
	pshh
	pula
	cbeqa	#0x00,00151$
00150$:
	bra	00105$
00151$:
	lda	*(_mktime_sloc1_1_0 + 1)
	ora	*_mktime_sloc1_1_0
	bne	00105$
;../time.c:198: seconds+= 60*60*24L*29;
	lda	(_mktime_seconds_1_43 + 3)
	add	#0x80
	sta	(_mktime_seconds_1_43 + 3)
	lda	(_mktime_seconds_1_43 + 2)
	adc	#0x3B
	sta	(_mktime_seconds_1_43 + 2)
	lda	(_mktime_seconds_1_43 + 1)
	adc	#0x26
	sta	(_mktime_seconds_1_43 + 1)
	lda	_mktime_seconds_1_43
	adc	#0x00
	sta	_mktime_seconds_1_43
	bra	00114$
00105$:
;../time.c:200: seconds+= 60*60*24L*monthDays[i];
	sthx	*_mktime_sloc0_1_0
	pshx
	pshh
	ldhx	*_mktime_sloc0_1_0
	lda	(_monthDays),x
	pulh
	pulx
	sta	(__mullong_PARM_2 + 3)
	rola	
	clra	
	sbc	#0x00
	sta	(__mullong_PARM_2 + 2)
	sta	(__mullong_PARM_2 + 1)
	sta	__mullong_PARM_2
	clra
	sta	__mullong_PARM_1
	inca
	sta	(__mullong_PARM_1 + 1)
	lda	#0x51
	sta	(__mullong_PARM_1 + 2)
	lda	#0x80
	sta	(__mullong_PARM_1 + 3)
	pshx
	pshh
	jsr	__mullong
	sta	*(_mktime_sloc0_1_0 + 3)
	stx	*(_mktime_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_mktime_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_mktime_sloc0_1_0
	pulh
	pulx
	lda	(_mktime_seconds_1_43 + 3)
	add	*(_mktime_sloc0_1_0 + 3)
	sta	(_mktime_seconds_1_43 + 3)
	lda	(_mktime_seconds_1_43 + 2)
	adc	*(_mktime_sloc0_1_0 + 2)
	sta	(_mktime_seconds_1_43 + 2)
	lda	(_mktime_seconds_1_43 + 1)
	adc	*(_mktime_sloc0_1_0 + 1)
	sta	(_mktime_seconds_1_43 + 1)
	lda	_mktime_seconds_1_43
	adc	*_mktime_sloc0_1_0
	sta	_mktime_seconds_1_43
00114$:
;../time.c:196: for (i=0; i<month; i++) {
	aix	#1
	jmp	00113$
00108$:
;../time.c:204: seconds+= (timeptr->tm_mday-1)*60*60*24L;
	ldhx	_mktime_timeptr_1_42
	ldx	3,x
	clrh
	aix	#-1
	stx	(__mullong_PARM_2 + 3)
	pshh
	pula
	sta	(__mullong_PARM_2 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	(__mullong_PARM_2 + 1)
	sta	__mullong_PARM_2
	ldhx	#0x0001
	sthx	__mullong_PARM_1
	ldhx	#0x5180
	sthx	(__mullong_PARM_1 + 2)
	jsr	__mullong
	sta	*(_mktime_sloc0_1_0 + 3)
	stx	*(_mktime_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_mktime_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_mktime_sloc0_1_0
	ldhx	#_mktime_seconds_1_43
	lda	3,x
	add	*(_mktime_sloc0_1_0 + 3)
	sta	3,x
	lda	2,x
	adc	*(_mktime_sloc0_1_0 + 2)
	sta	2,x
	lda	1,x
	adc	*(_mktime_sloc0_1_0 + 1)
	sta	1,x
	lda	,x
	adc	*_mktime_sloc0_1_0
	sta	,x
;../time.c:205: seconds+= timeptr->tm_hour*60*60L;
	ldhx	_mktime_timeptr_1_42
	ldx	2,x
	stx	(__mullong_PARM_2 + 3)
	clra
	sta	(__mullong_PARM_2 + 2)
	sta	(__mullong_PARM_2 + 1)
	sta	__mullong_PARM_2
	clrh
	tax
	sthx	__mullong_PARM_1
	ldhx	#0x0E10
	sthx	(__mullong_PARM_1 + 2)
	jsr	__mullong
	sta	*(_mktime_sloc0_1_0 + 3)
	stx	*(_mktime_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_mktime_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_mktime_sloc0_1_0
	ldhx	#_mktime_seconds_1_43
	lda	3,x
	add	*(_mktime_sloc0_1_0 + 3)
	sta	3,x
	lda	2,x
	adc	*(_mktime_sloc0_1_0 + 2)
	sta	2,x
	lda	1,x
	adc	*(_mktime_sloc0_1_0 + 1)
	sta	1,x
	lda	,x
	adc	*_mktime_sloc0_1_0
	sta	,x
;../time.c:206: seconds+= timeptr->tm_min*60;
	ldhx	_mktime_timeptr_1_42
	lda	1,x
	ldx	#0x3C
	mul
	sta	*(_mktime_sloc0_1_0 + 3)
	txa
	sta	*(_mktime_sloc0_1_0 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	*(_mktime_sloc0_1_0 + 1)
	sta	*_mktime_sloc0_1_0
	ldhx	#_mktime_seconds_1_43
	lda	3,x
	add	*(_mktime_sloc0_1_0 + 3)
	sta	3,x
	lda	2,x
	adc	*(_mktime_sloc0_1_0 + 2)
	sta	2,x
	lda	1,x
	adc	*(_mktime_sloc0_1_0 + 1)
	sta	1,x
	lda	,x
	adc	*_mktime_sloc0_1_0
	sta	,x
;../time.c:207: seconds+= timeptr->tm_sec;
	ldhx	_mktime_timeptr_1_42
	lda	,x
	clrx
	sta	*(_mktime_sloc0_1_0 + 3)
	txa
	sta	*(_mktime_sloc0_1_0 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	*(_mktime_sloc0_1_0 + 1)
	sta	*_mktime_sloc0_1_0
	ldhx	#_mktime_seconds_1_43
	lda	3,x
	add	*(_mktime_sloc0_1_0 + 3)
	sta	3,x
	lda	2,x
	adc	*(_mktime_sloc0_1_0 + 2)
	sta	2,x
	lda	1,x
	adc	*(_mktime_sloc0_1_0 + 1)
	sta	1,x
	lda	,x
	adc	*_mktime_sloc0_1_0
	sta	,x
;../time.c:208: return seconds;
	lda	_mktime_seconds_1_43
	sta	*___SDCC_hc08_ret3
	lda	(_mktime_seconds_1_43 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(_mktime_seconds_1_43 + 2)
	lda	(_mktime_seconds_1_43 + 3)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
_monthDays:
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
___month:
	.dw __str_1
	.dw __str_2
	.dw __str_3
	.dw __str_4
	.dw __str_5
	.dw __str_6
	.dw __str_7
	.dw __str_8
	.dw __str_9
	.dw __str_10
	.dw __str_11
	.dw __str_12
___day:
	.dw __str_13
	.dw __str_14
	.dw __str_15
	.dw __str_16
	.dw __str_17
	.dw __str_18
	.dw __str_19
___str_0:
	.ascii "%s %s %2d %02d:%02d:%02d %04d"
	.db 0x0A
	.db 0x00
__str_1:
	.ascii "Jan"
	.db 0x00
__str_2:
	.ascii "Feb"
	.db 0x00
__str_3:
	.ascii "Mar"
	.db 0x00
__str_4:
	.ascii "Apr"
	.db 0x00
__str_5:
	.ascii "May"
	.db 0x00
__str_6:
	.ascii "Jun"
	.db 0x00
__str_7:
	.ascii "Jul"
	.db 0x00
__str_8:
	.ascii "Aug"
	.db 0x00
__str_9:
	.ascii "Sep"
	.db 0x00
__str_10:
	.ascii "Oct"
	.db 0x00
__str_11:
	.ascii "Nov"
	.db 0x00
__str_12:
	.ascii "Dec"
	.db 0x00
__str_13:
	.ascii "Sun"
	.db 0x00
__str_14:
	.ascii "Mon"
	.db 0x00
__str_15:
	.ascii "Tue"
	.db 0x00
__str_16:
	.ascii "Wed"
	.db 0x00
__str_17:
	.ascii "Thu"
	.db 0x00
__str_18:
	.ascii "Fri"
	.db 0x00
__str_19:
	.ascii "Sat"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
