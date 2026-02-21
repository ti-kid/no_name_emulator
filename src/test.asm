.org 0

	xor a
	out ($10),a
	ld a,5
	out ($10),a
	ld a,$21
	out ($10),a
	ld a,$81
	out ($10),a
	ld a,3
	out ($10),a

	ld b,7 
	ld hl,sprite
loop:
	ld a,(hl)
	inc hl
	out ($11),a
	djnz loop
	
	ld a,57
	in a,($11)
	dec a
	out ($11),a

	jr $

sprite:
.db 0,$12,$12,0,0,$21,$1E,0
