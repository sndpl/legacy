	MACRO	msxbios,routine
	psect	text
	push	ix
	push	iy
	ld	ix,routine
	ld	iy,(0fcc0h)
	call	001ch
	ei
	pop	iy
	pop	ix
	ENDM

; void disscr()

; disable screen

	psect	text
	global	_disscr

DISSCR	equ	0041h

_disscr:
	msxbios DISSCR
	ret

; void enascr()

; enable screen

	psect	text
	global	_enascr

ENASCR	equ	0044h

_enascr:
	msxbios ENASCR
	ret

; void beep()

BEEP	equ	00C0h
	psect	text
	global	_beep

_beep:
	msxbios BEEP
	ret

; void cls()

;	CLS	clears the screen.

CLS	equ	00C3h
	psect	text
	global	_cls
_cls:
	xor	a
	msxbios CLS
	ret

; void locate(csrx, csry)
; unsigned char csrx, csry;

;	POSIT	locates the cursor at the specified position.
;	Entry:	Column in [A], row in [E].

POSIT	equ	00C6h
	psect	text
	global	_locate,csv,cret

_locate:
	call	csv
	ld	h,(ix+6)
	ld	l,(ix+8)
	msxbios POSIT
	jp	cret


   