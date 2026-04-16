	.section	.text,"ax",@progbits
	.assume	ADL = 1
	.file	"z80.c"
	.section	.text._z80_init,"ax",@progbits
	.globl	_z80_init                       ; -- Begin function z80_init
	.type	_z80_init,@function
_z80_init:                              ; @z80_init
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	(hl), 0
	push	hl
	pop	iy
	inc	iy
	ld	bc, 20
	lea	de, iy + 0
	push	hl
	pop	iy
	ldir
	ld.sis	hl, -1
	ld	(iy + 21), l
	ld	(iy + 22), h
	lea	hl, iy + 23
	ld	(iy + 23), 0
	push	hl
	pop	de
	inc	de
	ld	bc, 5
	ldir
	ld	(iy + 29), -1
	lea	hl, iy + 30
	ld	(iy + 30), 0
	push	hl
	pop	de
	inc	de
	ld	bc, 15
	ldir
	ld	(iy + 46), -1
	ld	(iy + 47), 0
	ld	(iy + 48), 0
	ld	a, (iy + 50)
	ld	l, -32
	and	a, l
	ld	l, a
	ld	(iy + 50), l
	ld	(iy + 49), 0
	pop	ix
	ret
	.local	.Lfunc_end0
.Lfunc_end0:
	.size	_z80_init, .Lfunc_end0-_z80_init
                                        ; -- End function
	.section	.text._z80_step,"ax",@progbits
	.globl	_z80_step                       ; -- Begin function z80_step
	.type	_z80_step,@function
_z80_step:                              ; @z80_step
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	or	a, a
	sbc	hl, hl
	bit	2, (iy + 50)
	jr	nz, .LBB1_2
; %bb.1:
	push	iy
	call	_nextb
	ld	iy, (ix + 6)
	ld	l, a
	pop	de
	.local	.LBB1_2
.LBB1_2:
	push	hl
	push	iy
	call	_exec_opcode
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	ld	l, (iy + 47)
	ld	a, l
	or	a, a
	jr	nz, .LBB1_7
; %bb.3:
	ld	h, -128
	ld	e, 127
	ld	bc, 11
	ld	d, (iy + 50)
	bit	4, d
	jr	nz, .LBB1_9
; %bb.4:
	ld	l, 9
	ld	a, d
	and	a, l
	ld	l, a
	cp	a, 9
	jp	nz, .LBB1_13
; %bb.5:
	ld	l, -16
	ld	a, d
	and	a, l
	ld	l, a
	ld	(iy + 50), l
	ld	l, (iy + 45)
	ld	a, l
	and	a, h
	ld	h, a
	inc	l
	ld	a, l
	and	a, e
	ld	l, a
	ld	a, l
	add	a, h
	ld	l, a
	ld	(iy + 45), l
	ld	l, (iy + 48)
	ld	a, l
	or	a, a
	jp	nz, .LBB1_14
; %bb.6:
	lea	de, iy + 15
	ld	hl, (iy + 15)
	push	de
	pop	iy
	lea	iy, iy + 3
	ld	e, (iy)
	ld	iyh, 0
	ld	a, iyh
	call	__ladd
	ld	iy, (ix + 6)
	ld	(iy + 15), hl
	ld	(iy + 18), e
	ld	a, (iy + 49)
	ld	l, a
	push	hl
	push	iy
	call	_exec_opcode
	jr	.LBB1_12
	.local	.LBB1_7
.LBB1_7:
	dec	l
	ld	(iy + 47), l
	ld	a, l
	or	a, a
	jr	nz, .LBB1_13
; %bb.8:
	ld	l, 3
	ld	a, (iy + 50)
	or	a, l
	ld	l, a
	ld	(iy + 50), l
	jr	.LBB1_13
	.local	.LBB1_9
.LBB1_9:
	ld	l, -22
	ld	a, d
	and	a, l
	ld	l, a
	ld	(iy + 50), l
	ld	l, (iy + 45)
	ld	a, l
	and	a, h
	ld	h, a
	inc	l
	ld	a, l
	and	a, e
	ld	l, a
	ld	a, l
	add	a, h
	ld	l, a
	ld	(iy + 45), l
	lea	de, iy + 15
	ld	hl, (iy + 15)
	push	de
	pop	iy
	lea	iy, iy + 3
	ld	e, (iy)
	ld	iyh, 0
	ld	a, iyh
	call	__ladd
	ld	iy, (ix + 6)
	ld	(iy + 15), hl
	ld	(iy + 18), e
	ld	hl, 102
	.local	.LBB1_10
.LBB1_10:
	push	hl
	push	iy
	.local	.LBB1_11
.LBB1_11:
	call	_call
	.local	.LBB1_12
.LBB1_12:
	pop	hl
	pop	hl
	.local	.LBB1_13
.LBB1_13:
	pop	ix
	ret
	.local	.LBB1_14
.LBB1_14:
	ld	a, l
	cp	a, 1
	jr	nz, .LBB1_16
; %bb.15:
	ld	bc, 13
	lea	de, iy + 15
	ld	hl, (iy + 15)
	push	de
	pop	iy
	lea	iy, iy + 3
	ld	e, (iy)
	ld	iyh, b
	ld	a, iyh
	call	__ladd
	ld	iy, (ix + 6)
	ld	(iy + 15), hl
	ld	(iy + 18), e
	ld	hl, 56
	jr	.LBB1_10
	.local	.LBB1_16
.LBB1_16:
	ld	a, l
	cp	a, 2
	jp	nz, .LBB1_18
; %bb.17:
	ld	bc, 19
	lea	de, iy + 15
	ld	hl, (iy + 15)
	push	de
	pop	iy
	lea	iy, iy + 3
	ld	e, (iy)
	ld	iyh, b
	ld	a, iyh
	call	__ladd
	ld	iy, (ix + 6)
	ld	(iy + 15), hl
	ld	(iy + 18), e
	ld	a, (iy + 44)
	ld	d, b
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 49)
	add.sis	hl, de
	push	hl
	push	iy
	call	_rw
                                        ; kill: def $hl killed $hl def $uhl
	pop	de
	pop	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	jp	.LBB1_11
	.local	.LBB1_18
.LBB1_18:
	ld	iy, 2
	ld	bc, _.str.2
	ld	de, 0
	ld	e, l
	push	de
	push	bc
	push	iy
	call	_fprintf
	pop	hl
	jp	.LBB1_12
	.local	.Lfunc_end1
.Lfunc_end1:
	.size	_z80_step, .Lfunc_end1-_z80_step
                                        ; -- End function
	.section	.text._exec_opcode,"ax",@progbits
	.type	_exec_opcode,@function          ; -- Begin function exec_opcode
_exec_opcode:                           ; @exec_opcode
; %bb.0:
	ld	hl, -23
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, _cyc_00
	ld	e, 0
	ld	bc, 0
	ld	c, (ix + 9)
	add	hl, bc
	ld	a, (hl)
	ld	(ix - 4), e
	ld	bc, (ix - 6)
	ld	b, e
	ld	c, a
	or	a, a
	sbc	hl, hl
	ld	a, l
	lea	de, iy + 15
	ld	hl, (iy + 15)
	push	de
	pop	iy
	lea	iy, iy + 3
	ld	(ix - 7), iy
	ld	e, (iy)
	ld	iy, (ix + 6)
	call	__ladd
	ld	bc, 0
	ld	(iy + 15), hl
	ld	(iy + 18), e
	ld	l, (iy + 45)
	ld	d, -128
	ld	a, l
	and	a, d
	ld	e, a
	inc	l
	ld	h, 127
	ld	a, l
	and	a, h
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	(iy + 45), l
	ld	a, (ix + 9)
	add	a, d
	ld	l, a
	push	bc
	pop	de
	ld	e, l
	ld	hl, JTI2_0
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB2_1
.LBB2_1:
	ld	a, (iy + 29)
	ld	l, (iy + 30)
	jp	.LBB2_139
	.local	.LBB2_2
.LBB2_2:
	ld	a, (iy + 29)
	ld	l, (iy + 32)
	jp	.LBB2_139
	.local	.LBB2_3
.LBB2_3:
	ld	l, (iy + 29)
	ld	e, (iy + 30)
	jp	.LBB2_144
	.local	.LBB2_4
.LBB2_4:
	ld	l, (iy + 29)
	ld	e, (iy + 31)
	jp	.LBB2_144
	.local	.LBB2_5
.LBB2_5:
	ld	l, (iy + 29)
	ld	e, (iy + 33)
	jp	.LBB2_144
	.local	.LBB2_6
.LBB2_6:
	ld	l, (iy + 29)
	ld	e, (iy + 35)
	jp	.LBB2_144
	.local	.LBB2_7
.LBB2_7:
	ld	l, (iy + 29)
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB2_379
; %bb.8:
	ld	de, 0
	jp	.LBB2_380
	.local	.LBB2_9
.LBB2_9:
	ld	a, (iy + 29)
	ld	l, (iy + 34)
	jp	.LBB2_156
	.local	.LBB2_10
.LBB2_10:
	ld	a, (iy + 29)
	ld	l, (iy + 35)
	jp	.LBB2_156
	.local	.LBB2_11
.LBB2_11:
	ld	l, (iy + 29)
	ld	e, (iy + 30)
	jp	.LBB2_160
	.local	.LBB2_12
.LBB2_12:
	ld	l, (iy + 29)
	ld	e, (iy + 31)
	jp	.LBB2_160
	.local	.LBB2_13
.LBB2_13:
	ld	l, (iy + 29)
	ld	e, (iy + 32)
	jp	.LBB2_160
	.local	.LBB2_14
.LBB2_14:
	ld	l, (iy + 29)
	ld	e, (iy + 33)
	jp	.LBB2_160
	.local	.LBB2_15
.LBB2_15:
	ld	l, (iy + 29)
	ld	e, (iy + 34)
	jp	.LBB2_160
	.local	.LBB2_16
.LBB2_16:
	ld	a, (iy + 31)
	jp	.LBB2_171
	.local	.LBB2_17
.LBB2_17:
	ld	a, (iy + 34)
	jp	.LBB2_171
	.local	.LBB2_18
.LBB2_18:
	ld	a, (iy + 35)
	jp	.LBB2_171
	.local	.LBB2_19
.LBB2_19:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	ld	l, a
	pop	de
	jp	.LBB2_217
	.local	.LBB2_20
.LBB2_20:
	ld	a, (iy + 29)
	jp	.LBB2_171
	.local	.LBB2_21
.LBB2_21:
	ld	a, (iy + 31)
	jp	.LBB2_177
	.local	.LBB2_22
.LBB2_22:
	ld	a, (iy + 33)
	jp	.LBB2_177
	.local	.LBB2_23
.LBB2_23:
	ld	a, (iy + 34)
	jp	.LBB2_177
	.local	.LBB2_24
.LBB2_24:
	ld	a, (iy + 35)
	jp	.LBB2_177
	.local	.LBB2_25
.LBB2_25:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	ld	l, a
	pop	de
	jp	.LBB2_68
	.local	.LBB2_26
.LBB2_26:
	ld	a, (iy + 31)
	jp	.LBB2_192
	.local	.LBB2_27
.LBB2_27:
	ld	a, (iy + 32)
	jp	.LBB2_192
	.local	.LBB2_28
.LBB2_28:
	ld	a, (iy + 33)
	jp	.LBB2_192
	.local	.LBB2_29
.LBB2_29:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	ld	l, a
	pop	de
	jp	.LBB2_73
	.local	.LBB2_30
.LBB2_30:
	bit	1, (iy + 46)
	jr	z, .LBB2_39
	.local	.LBB2_31
.LBB2_31:
	ld	hl, 0
	jp	.LBB2_232
	.local	.LBB2_32
.LBB2_32:
	push	iy
	call	_popw
	jp	.LBB2_243
	.local	.LBB2_33
.LBB2_33:
	push	iy
	call	_nextw
	pop	de
	ld	iy, (ix + 6)
	ld	(iy + 19), l
	ld	(iy + 20), h
	jp	.LBB2_267
	.local	.LBB2_34
.LBB2_34:
	bit	1, (iy + 46)
	jp	z, .LBB2_51
	.local	.LBB2_35
.LBB2_35:
	ld	hl, 0
	jp	.LBB2_241
	.local	.LBB2_36
.LBB2_36:
	ld	a, (iy + 30)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	jp	.LBB2_207
	.local	.LBB2_37
.LBB2_37:
	push	bc
	jp	.LBB2_221
	.local	.LBB2_38
.LBB2_38:
	bit	1, (iy + 46)
	jr	z, .LBB2_31
	.local	.LBB2_39
.LBB2_39:
	ld	hl, -1
	jp	.LBB2_232
	.local	.LBB2_40
.LBB2_40:
	ld	a, (iy + 29)
	ld	(ix - 7), a
	push	iy
	call	_nextb
	ld	iy, (ix + 6)
	ld	l, a
	jp	.LBB2_150
	.local	.LBB2_41
.LBB2_41:
	ld	hl, 8
	jp	.LBB2_220
	.local	.LBB2_42
.LBB2_42:
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB2_31
	jr	.LBB2_39
	.local	.LBB2_43
.LBB2_43:
	push	iy
	call	_popw
	jp	.LBB2_253
	.local	.LBB2_44
.LBB2_44:
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	p, .LBB2_195
	.local	.LBB2_45
.LBB2_45:
	ld	hl, 0
	jp	.LBB2_237
	.local	.LBB2_46
.LBB2_46:
	ld	hl, 16
	jp	.LBB2_220
	.local	.LBB2_47
.LBB2_47:
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	p, .LBB2_31
	jr	.LBB2_39
	.local	.LBB2_48
.LBB2_48:
	ld	a, (iy + 30)
	ld	l, (iy + 31)
	ld	e, (iy + 32)
	ld	c, (iy + 33)
	ld	h, (iy + 34)
	ld	d, (iy + 35)
	ld	b, (iy + 37)
	ld	(iy + 30), b
	ld	b, (iy + 38)
	ld	(iy + 31), b
	ld	b, (iy + 39)
	ld	(iy + 32), b
	ld	b, (iy + 40)
	ld	(iy + 33), b
	ld	b, (iy + 41)
	ld	(iy + 34), b
	ld	b, (iy + 42)
	ld	(iy + 35), b
	ld	(iy + 37), a
	ld	(iy + 38), l
	ld	(iy + 39), e
	ld	(iy + 40), c
	ld	(iy + 41), h
	ld	(iy + 42), d
	jp	.LBB2_378
	.local	.LBB2_49
.LBB2_49:
	push	iy
	call	_nextb
	ld	e, a
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 29)
	ld	(ix - 7), a
	ld	hl, (iy + 6)
	push	de
	push	iy
	call	__indcallhl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	(iy + 29), a
	ld	h, 0
	ld	l, (ix - 7)                     ; 1-byte Folded Reload
	ld	c, h
	ld	b, l
	ld	l, a
	inc.sis	hl
	jp	.LBB2_204
	.local	.LBB2_50
.LBB2_50:
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	p, .LBB2_35
	.local	.LBB2_51
.LBB2_51:
	ld	hl, -1
	jp	.LBB2_241
	.local	.LBB2_52
.LBB2_52:
	push	iy
	call	_nextb
	ld	l, a
	pop	de
	ld	iy, (ix + 6)
	pea	iy + 23
	jp	.LBB2_71
	.local	.LBB2_53
.LBB2_53:
	bit	5, (iy + 46)
	jp	nz, .LBB2_31
	jp	.LBB2_39
	.local	.LBB2_54
.LBB2_54:
	push	iy
	call	_popw
	jp	.LBB2_272
	.local	.LBB2_55
.LBB2_55:
	ld	hl, (iy + 21)
	push	hl
	push	iy
	call	_rw
	ld	(ix - 7), l
	ld	(ix - 6), h
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	bc, (iy + 21)
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	push	hl
	push	bc
	push	iy
	call	_ww
	pop	hl
	pop	hl
	pop	hl
	ld	l, (ix - 7)
	ld	h, (ix - 6)
	ld	a, h
	ld	iy, (ix + 6)
	ld	(iy + 34), a
	ld	(iy + 35), l
	jp	.LBB2_267
	.local	.LBB2_56
.LBB2_56:
	bit	5, (iy + 46)
	jp	nz, .LBB2_35
	jr	.LBB2_51
	.local	.LBB2_57
.LBB2_57:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	jp	.LBB2_207
	.local	.LBB2_58
.LBB2_58:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	(iy + 19), l
	ld	(iy + 20), h
	jp	.LBB2_378
	.local	.LBB2_59
.LBB2_59:
	ld	a, 2
	ld	(ix - 10), a                    ; 1-byte Folded Spill
	ld	a, 32
	ld	(ix - 16), a                    ; 1-byte Folded Spill
	push	iy
	call	_nextb
	ld	iy, (ix + 6)
	ld	de, 0
	ld	e, a
	ld	(ix - 13), de
	pop	hl
	ld	hl, _cyc_ed
	add	hl, de
	ld	a, (hl)
	ld	h, d
	ld	(ix - 3), h
	ld	bc, (ix - 5)
	ld	b, h
	ld	c, a
	or	a, a
	sbc	hl, hl
	ld	a, l
	ld	hl, (iy + 15)
	ld	iy, (ix - 7)
	ld	e, (iy)
	call	__ladd
	ld	iy, (ix + 6)
	ld	(iy + 15), hl
	ld	(iy + 18), e
	ld	e, (iy + 45)
	ld	l, -128
	ld	a, e
	and	a, l
	ld	l, a
	ld	a, e
	inc	a
	ld	c, 127
	and	a, c
	ld	c, a
	ld	a, c
	add	a, l
	ld	d, a
	ld	(iy + 45), d
	ld	l, 96
	ld	bc, (ix - 13)
	push	bc
	pop	iy
	ld	a, c
	add	a, l
	ld	c, a
	cp	a, 28
	jp	c, .LBB2_381
; %bb.60:
	ld	bc, 0
	ld	l, -64
	ld	a, iyl
	add	a, l
	ld	l, a
	cp	a, 63
	jp	c, .LBB2_404
	.local	.LBB2_61
.LBB2_61:
	ld	hl, 2
	ld	de, _.str.4
	ld	bc, (ix - 13)
	push	bc
	push	de
	push	hl
	call	_fprintf
	jp	.LBB2_357
	.local	.LBB2_62
.LBB2_62:
	push	iy
	call	_nextb
	ld	l, a
	jp	.LBB2_175
	.local	.LBB2_63
.LBB2_63:
	ld	hl, 40
	jp	.LBB2_220
	.local	.LBB2_64
.LBB2_64:
	push	iy
	call	_popw
	pop	de
	ld	a, h
	ld	iy, (ix + 6)
	ld	(iy + 29), a
	ld	a, l
	call	__bbitrev
	ld	(iy + 46), a
	jp	.LBB2_378
	.local	.LBB2_65
.LBB2_65:
	ld	a, (iy + 46)
	ld	l, 1
	ld	e, l
	and	a, e
	ld	l, a
	ld	a, l
	xor	a, e
	jp	.LBB2_240
	.local	.LBB2_66
.LBB2_66:
	ld	a, (iy + 29)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	a, (iy + 46)
	call	__bbitrev
	ld	e, a
	jp	.LBB2_207
	.local	.LBB2_67
.LBB2_67:
	push	iy
	call	_nextb
	ld	l, a
	.local	.LBB2_68
.LBB2_68:
	pop	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	jp	.LBB2_187
	.local	.LBB2_69
.LBB2_69:
	ld	hl, 48
	jp	.LBB2_220
	.local	.LBB2_70
.LBB2_70:
	push	iy
	call	_nextb
	ld	l, a
	pop	de
	ld	iy, (ix + 6)
	pea	iy + 25
	.local	.LBB2_71
.LBB2_71:
	push	hl
	push	iy
	call	_exec_opcode_ddfd
	jp	.LBB2_357
	.local	.LBB2_72
.LBB2_72:
	push	iy
	call	_nextb
	ld	l, a
	.local	.LBB2_73
.LBB2_73:
	pop	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	jp	.LBB2_193
	.local	.LBB2_74
.LBB2_74:
	ld	hl, 56
	jp	.LBB2_220
	.local	.LBB2_75
.LBB2_75:
	ld	a, (iy + 30)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	add.sis	hl, de
	inc.sis	hl
	jr	.LBB2_81
	.local	.LBB2_76
.LBB2_76:
	push	iy
	call	_nextb
	jp	.LBB2_312
	.local	.LBB2_77
.LBB2_77:
	ld	l, (iy + 29)
	ld	e, -128
	ld	a, l
	and	a, e
	ld	e, a
	ld	a, (iy + 46)
	ld	c, 35
	and	a, c
	ld	c, a
	ld	a, c
	add	a, e
	ld	e, a
	rlc	l
	jp	.LBB2_86
	.local	.LBB2_78
.LBB2_78:
	ld	a, (iy + 30)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	ld	(ix - 7), e
	ld	(ix - 6), d
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	(iy + 29), a
	ld	e, (ix - 7)
	ld	d, (ix - 6)
	.local	.LBB2_79
.LBB2_79:
	ld	e, (iy + 30)
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	jp	.LBB2_266
	.local	.LBB2_80
.LBB2_80:
	ld	a, (iy + 30)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	add.sis	hl, de
	dec.sis	hl
	.local	.LBB2_81
.LBB2_81:
	ld	a, h
	jp	.LBB2_244
	.local	.LBB2_82
.LBB2_82:
	ld	a, (iy + 31)
	ld	l, a
	push	hl
	push	iy
	call	_inc
	jp	.LBB2_122
	.local	.LBB2_83
.LBB2_83:
	ld	a, (iy + 31)
	ld	l, a
	push	hl
	push	iy
	call	_dec
	jp	.LBB2_122
	.local	.LBB2_84
.LBB2_84:
	push	iy
	call	_nextb
	jp	.LBB2_123
	.local	.LBB2_85
.LBB2_85:
	ld	l, (iy + 29)
	ld	e, (iy + 46)
	ld	a, l
	ld	b, 7
	call	__bshl
	ld	c, a
	ld	h, 35
	ld	a, e
	and	a, h
	ld	e, a
	ld	a, e
	add	a, c
	ld	e, a
	rrc	l
	.local	.LBB2_86
.LBB2_86:
	ld	(iy + 29), l
	ld	a, l
	add	a, a
	ld	c, 16
	and	a, c
	ld	c, a
	ld	a, l
	ld	b, 3
	call	__bshru
	ld	l, 4
	and	a, l
	jp	.LBB2_287
	.local	.LBB2_87
.LBB2_87:
	ld	a, (iy + 32)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 33)
	ld	(ix - 7), e
	ld	(ix - 6), d
	add.sis	hl, de
	ld	a, (iy + 29)
	ld	de, (iy + 3)
	ld	(ix - 10), de
	ld	de, (iy + 12)
	ld	c, a
	push	bc
	push	hl
	push	de
	ld	hl, (ix - 10)
	call	__indcallhl
	pop	hl
	pop	hl
	pop	hl
	ld	e, (ix - 7)
	ld	d, (ix - 6)
	ld	iy, (ix + 6)
	ld	e, (iy + 29)
	ld	l, d
	ld	h, e
	ld	e, (iy + 33)
	jp	.LBB2_246
	.local	.LBB2_88
.LBB2_88:
	push	iy
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	iy, (ix + 6)
	ld	hl, (iy + 19)
	.local	.LBB2_89
.LBB2_89:
	add.sis	hl, de
	ld	(iy + 19), l
	ld	(iy + 20), h
	jp	.LBB2_378
	.local	.LBB2_90
.LBB2_90:
	ld	a, (iy + 32)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 33)
	add.sis	hl, de
	dec.sis	hl
	jp	.LBB2_255
	.local	.LBB2_91
.LBB2_91:
	ld	a, (iy + 33)
	ld	l, a
	push	hl
	push	iy
	call	_dec
	jp	.LBB2_326
	.local	.LBB2_92
.LBB2_92:
	bit	1, (iy + 46)
	jp	z, .LBB2_104
	.local	.LBB2_93
.LBB2_93:
	ld	hl, 0
	jp	.LBB2_105
	.local	.LBB2_94
.LBB2_94:
	ld	a, (iy + 34)
	ld	l, a
	push	hl
	push	iy
	call	_inc
	jp	.LBB2_335
	.local	.LBB2_95
.LBB2_95:
	ld	a, (iy + 34)
	ld	l, a
	push	hl
	push	iy
	call	_dec
	jp	.LBB2_335
	.local	.LBB2_96
.LBB2_96:
	push	iy
	call	_nextb
	jp	.LBB2_336
	.local	.LBB2_97
.LBB2_97:
	ld	c, 6
	ld	b, 96
	ld	a, 8
	ld	(ix - 13), a                    ; 1-byte Folded Spill
	ld	a, 2
	ld	(ix - 10), a                    ; 1-byte Folded Spill
	ld	l, 14
	ld	a, (iy + 29)
	ld	(ix - 7), a                     ; 1-byte Folded Spill
	and	a, l
	ld	h, a
	ld	l, (iy + 46)
	cp	a, 10
                                        ; kill: def $a killed $a
	sbc	a, a
	bit	3, l
	ld	e, -1
	jr	z, .LBB2_99
; %bb.98:
	ld	e, 0
	.local	.LBB2_99
.LBB2_99:
	and	a, e
	ld	e, a
	bit	0, e
	ld	iyl, 0
	ld	d, iyl
	jr	nz, .LBB2_101
; %bb.100:
	ld	d, c
	.local	.LBB2_101
.LBB2_101:
	ld	a, (ix - 7)                     ; 1-byte Folded Reload
	cp	a, -102
                                        ; kill: def $a killed $a
	sbc	a, a
	ld	c, a
	ld	a, l
	cp	a, 0
	call	pe, __setflag
	ld	e, b
	jp	p, .LBB2_383
; %bb.102:
	ld	b, 0
	jp	.LBB2_384
	.local	.LBB2_103
.LBB2_103:
	bit	1, (iy + 46)
	jp	z, .LBB2_93
	.local	.LBB2_104
.LBB2_104:
	ld	hl, -1
	.local	.LBB2_105
.LBB2_105:
	push	hl
	push	iy
	call	_cond_jr
	jp	.LBB2_358
	.local	.LBB2_106
.LBB2_106:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	jp	.LBB2_264
	.local	.LBB2_107
.LBB2_107:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	dec.sis	hl
	jp	.LBB2_278
	.local	.LBB2_108
.LBB2_108:
	ld	a, (iy + 35)
	ld	l, a
	push	hl
	push	iy
	call	_dec
	jp	.LBB2_283
	.local	.LBB2_109
.LBB2_109:
	push	iy
	call	_nextw
	pop	de
	ld	iy, (ix + 6)
	jp	.LBB2_234
	.local	.LBB2_110
.LBB2_110:
	push	iy
	call	_nextw
	ld	e, l
	ld	d, h
	ld	(ix - 7), de
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 29)
	ld	hl, (iy + 3)
	ld	iy, (iy + 12)
	ld	c, a
	push	bc
	push	de
	push	iy
	call	__indcallhl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 29)
	ld	h, 0
	ld	l, a
	ld	e, h
	ld	d, l
	ld	iyl, e
	ld	iyh, d
	ld	hl, (ix - 7)
	inc.sis	hl
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 255
	call	__sand
	ld	e, l
	ld	d, h
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	add.sis	hl, de
	ld	iy, (ix + 6)
	jp	.LBB2_267
	.local	.LBB2_111
.LBB2_111:
	ld	hl, (iy + 21)
	inc.sis	hl
	jp	.LBB2_303
	.local	.LBB2_112
.LBB2_112:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	ld	(ix - 7), e
	ld	(ix - 6), d
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	ld	l, a
	pop	de
	pop	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_dec
	jp	.LBB2_290
	.local	.LBB2_113
.LBB2_113:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	(ix - 7), hl
	push	iy
	call	_nextb
	ld	e, a
	pop	hl
	ld	iy, (ix + 6)
	ld	hl, (iy + 3)
	ld	bc, (iy + 12)
	push	de
	ld	de, (ix - 7)
	push	de
	push	bc
	jp	.LBB2_356
	.local	.LBB2_114
.LBB2_114:
	push	iy
	call	_nextb
	jp	.LBB2_376
	.local	.LBB2_115
.LBB2_115:
	ld	a, (iy + 31)
	jp	.LBB2_313
	.local	.LBB2_116
.LBB2_116:
	ld	a, (iy + 34)
	jp	.LBB2_313
	.local	.LBB2_117
.LBB2_117:
	ld	a, (iy + 29)
	jp	.LBB2_313
	.local	.LBB2_118
.LBB2_118:
	ld	a, (iy + 30)
	jp	.LBB2_316
	.local	.LBB2_119
.LBB2_119:
	ld	a, (iy + 32)
	jp	.LBB2_316
	.local	.LBB2_120
.LBB2_120:
	ld	a, (iy + 33)
	jp	.LBB2_316
	.local	.LBB2_121
.LBB2_121:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	.local	.LBB2_122
.LBB2_122:
	pop	hl
	.local	.LBB2_123
.LBB2_123:
	pop	hl
	ld	iy, (ix + 6)
	jp	.LBB2_316
	.local	.LBB2_124
.LBB2_124:
	ld	a, (iy + 29)
	jp	.LBB2_316
	.local	.LBB2_125
.LBB2_125:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	jp	.LBB2_259
	.local	.LBB2_126
.LBB2_126:
	ld	a, (iy + 29)
	jp	.LBB2_322
	.local	.LBB2_127
.LBB2_127:
	ld	a, (iy + 30)
	jp	.LBB2_329
	.local	.LBB2_128
.LBB2_128:
	ld	a, (iy + 31)
	jp	.LBB2_329
	.local	.LBB2_129
.LBB2_129:
	ld	a, (iy + 32)
	jp	.LBB2_329
	.local	.LBB2_130
.LBB2_130:
	ld	a, (iy + 31)
	jp	.LBB2_337
	.local	.LBB2_131
.LBB2_131:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	jp	.LBB2_283
	.local	.LBB2_132
.LBB2_132:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	a, (iy + 30)
	jp	.LBB2_353
	.local	.LBB2_133
.LBB2_133:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	a, (iy + 33)
	jp	.LBB2_353
	.local	.LBB2_134
.LBB2_134:
	ld	a, (iy + 32)
	jp	.LBB2_377
	.local	.LBB2_135
.LBB2_135:
	ld	a, (iy + 29)
	ld	l, (iy + 31)
	jr	.LBB2_139
	.local	.LBB2_136
.LBB2_136:
	ld	a, (iy + 29)
	ld	l, (iy + 33)
	jr	.LBB2_139
	.local	.LBB2_137
.LBB2_137:
	ld	a, (iy + 29)
	ld	l, (iy + 34)
	jr	.LBB2_139
	.local	.LBB2_138
.LBB2_138:
	ld	a, (iy + 29)
	ld	l, (iy + 35)
	.local	.LBB2_139
.LBB2_139:
	ld	de, 0
	push	de
                                        ; kill: def $l killed $l def $uhl
	push	hl
	ld	l, a
	jp	.LBB2_368
	.local	.LBB2_140
.LBB2_140:
	ld	a, (iy + 29)
	ld	(ix - 7), a
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	ld	l, a
	pop	de
	jp	.LBB2_197
	.local	.LBB2_141
.LBB2_141:
	ld	a, (iy + 29)
	or	a, a
	sbc	hl, hl
	push	hl
	ld	l, a
	push	hl
	jp	.LBB2_368
	.local	.LBB2_142
.LBB2_142:
	ld	l, (iy + 29)
	ld	e, (iy + 32)
	jr	.LBB2_144
	.local	.LBB2_143
.LBB2_143:
	ld	l, (iy + 29)
	ld	e, (iy + 34)
	.local	.LBB2_144
.LBB2_144:
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB2_146
; %bb.145:
	ld	bc, 0
	jr	.LBB2_147
	.local	.LBB2_146
.LBB2_146:
	ld	bc, -1
	.local	.LBB2_147
.LBB2_147:
	push	bc
                                        ; kill: def $e killed $e def $ude
	.local	.LBB2_148
.LBB2_148:
	push	de
                                        ; kill: def $l killed $l def $uhl
	jp	.LBB2_368
	.local	.LBB2_149
.LBB2_149:
	ld	a, (iy + 29)
	ld	(ix - 7), a
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	push	hl
	pop	bc
	ld	hl, (ix + 6)
	ld	hl, (hl)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	ld	iy, (ix + 6)
	ld	l, a
	pop	de
	.local	.LBB2_150
.LBB2_150:
	pop	de
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB2_366
; %bb.151:
	ld	de, 0
	jp	.LBB2_367
	.local	.LBB2_152
.LBB2_152:
	ld	a, (iy + 29)
	ld	l, (iy + 30)
	jr	.LBB2_156
	.local	.LBB2_153
.LBB2_153:
	ld	a, (iy + 29)
	ld	l, (iy + 31)
	jr	.LBB2_156
	.local	.LBB2_154
.LBB2_154:
	ld	a, (iy + 29)
	ld	l, (iy + 32)
	jr	.LBB2_156
	.local	.LBB2_155
.LBB2_155:
	ld	a, (iy + 29)
	ld	l, (iy + 33)
	.local	.LBB2_156
.LBB2_156:
	ld	de, 0
	push	de
                                        ; kill: def $l killed $l def $uhl
	push	hl
	ld	l, a
	jp	.LBB2_372
	.local	.LBB2_157
.LBB2_157:
	ld	a, (iy + 29)
	ld	(ix - 7), a
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	ld	l, a
	pop	de
	jp	.LBB2_209
	.local	.LBB2_158
.LBB2_158:
	ld	a, (iy + 29)
	or	a, a
	sbc	hl, hl
	push	hl
	ld	l, a
	push	hl
	jp	.LBB2_372
	.local	.LBB2_159
.LBB2_159:
	ld	l, (iy + 29)
	ld	e, (iy + 35)
	.local	.LBB2_160
.LBB2_160:
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB2_162
; %bb.161:
	ld	bc, 0
	jr	.LBB2_163
	.local	.LBB2_162
.LBB2_162:
	ld	bc, -1
	.local	.LBB2_163
.LBB2_163:
	push	bc
                                        ; kill: def $e killed $e def $ude
	.local	.LBB2_164
.LBB2_164:
	push	de
                                        ; kill: def $l killed $l def $uhl
	jp	.LBB2_372
	.local	.LBB2_165
.LBB2_165:
	ld	a, (iy + 29)
	ld	(ix - 7), a
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	push	hl
	pop	bc
	ld	hl, (ix + 6)
	ld	hl, (hl)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	ld	iy, (ix + 6)
	ld	l, a
	pop	de
	jp	.LBB2_212
	.local	.LBB2_166
.LBB2_166:
	ld	l, (iy + 29)
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB2_402
; %bb.167:
	ld	de, 0
	jp	.LBB2_403
	.local	.LBB2_168
.LBB2_168:
	ld	a, (iy + 30)
	jr	.LBB2_171
	.local	.LBB2_169
.LBB2_169:
	ld	a, (iy + 32)
	jr	.LBB2_171
	.local	.LBB2_170
.LBB2_170:
	ld	a, (iy + 33)
	.local	.LBB2_171
.LBB2_171:
	ld	l, a
	push	hl
	push	iy
	jp	.LBB2_218
	.local	.LBB2_172
.LBB2_172:
	ld	a, (iy + 30)
	jr	.LBB2_177
	.local	.LBB2_173
.LBB2_173:
	ld	a, (iy + 32)
	jr	.LBB2_177
	.local	.LBB2_174
.LBB2_174:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	ld	l, a
	pop	de
	.local	.LBB2_175
.LBB2_175:
	pop	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	jr	.LBB2_178
	.local	.LBB2_176
.LBB2_176:
	ld	a, (iy + 29)
	.local	.LBB2_177
.LBB2_177:
	ld	l, a
	push	hl
	push	iy
	.local	.LBB2_178
.LBB2_178:
	call	_lxor
	jp	.LBB2_358
	.local	.LBB2_179
.LBB2_179:
	ld	a, (iy + 30)
	jr	.LBB2_186
	.local	.LBB2_180
.LBB2_180:
	ld	a, (iy + 31)
	jr	.LBB2_186
	.local	.LBB2_181
.LBB2_181:
	ld	a, (iy + 32)
	jr	.LBB2_186
	.local	.LBB2_182
.LBB2_182:
	ld	a, (iy + 33)
	jr	.LBB2_186
	.local	.LBB2_183
.LBB2_183:
	ld	a, (iy + 34)
	jr	.LBB2_186
	.local	.LBB2_184
.LBB2_184:
	ld	a, (iy + 35)
	jr	.LBB2_186
	.local	.LBB2_185
.LBB2_185:
	ld	a, (iy + 29)
	.local	.LBB2_186
.LBB2_186:
	ld	l, a
	push	hl
	push	iy
	.local	.LBB2_187
.LBB2_187:
	call	_lor
	jp	.LBB2_358
	.local	.LBB2_188
.LBB2_188:
	ld	a, (iy + 30)
	jr	.LBB2_192
	.local	.LBB2_189
.LBB2_189:
	ld	a, (iy + 34)
	jr	.LBB2_192
	.local	.LBB2_190
.LBB2_190:
	ld	a, (iy + 35)
	jr	.LBB2_192
	.local	.LBB2_191
.LBB2_191:
	ld	a, (iy + 29)
	.local	.LBB2_192
.LBB2_192:
	ld	l, a
	push	hl
	push	iy
	.local	.LBB2_193
.LBB2_193:
	call	_cp
	jp	.LBB2_358
	.local	.LBB2_194
.LBB2_194:
	bit	1, (iy + 46)
	jp	nz, .LBB2_45
	.local	.LBB2_195
.LBB2_195:
	ld	hl, -1
	jp	.LBB2_237
	.local	.LBB2_196
.LBB2_196:
	ld	a, (iy + 29)
	ld	(ix - 7), a
	push	iy
	call	_nextb
	ld	l, a
	.local	.LBB2_197
.LBB2_197:
	pop	de
	ld	de, 0
	push	de
	push	hl
	ld	l, (ix - 7)                     ; 1-byte Folded Reload
	push	hl
	ld	hl, (ix + 6)
	push	hl
	jp	.LBB2_369
	.local	.LBB2_198
.LBB2_198:
	bit	1, (iy + 46)
	jp	z, .LBB2_45
	jr	.LBB2_195
	.local	.LBB2_199
.LBB2_199:
	lea	hl, ix - 2
	ld	(ix - 13), hl
	push	iy
	call	_nextb
	ld	iy, (ix + 6)
	ld	d, a
	pop	hl
	ld	hl, (iy + 15)
	lea	bc, iy + 0
	ld	iy, (ix - 7)
	ld	e, (iy)
	push	bc
	pop	iy
	ld	bc, 8
	xor	a, a
	call	__ladd
	ld	(iy + 15), hl
	ld	(iy + 18), e
	ld	l, (iy + 45)
	ld	e, -128
	ld	a, l
	and	a, e
	ld	e, a
	inc	l
	ld	c, 127
	ld	a, l
	and	a, c
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	(iy + 45), l
	ld	a, d
	ld	b, 6
	call	__bshru
	ld	(ix - 10), a                    ; 1-byte Folded Spill
	ld	a, d
	ld	b, 3
	call	__bshru
	ld	l, 7
	ld	e, l
	and	a, e
	ld	l, a
	ld	(ix - 16), hl
	ld	c, d
	ld	a, d
	and	a, e
	ld	l, a
	ld	(ix - 2), 0
	ld	de, 0
	ld	(ix - 17), l                    ; 1-byte Folded Spill
	ld	e, l
	ld	hl, JTI2_3
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB2_200
.LBB2_200:
	lea	iy, iy + 30
	ld	de, 0
	ld	e, (ix - 10)                    ; 1-byte Folded Reload
	ld	hl, JTI2_4
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB2_201
.LBB2_201:
	bit	1, (iy + 46)
	jp	z, .LBB2_35
	jp	.LBB2_51
	.local	.LBB2_202
.LBB2_202:
	push	iy
	call	_nextw
                                        ; kill: def $hl killed $hl def $uhl
	pop	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	jp	.LBB2_222
	.local	.LBB2_203
.LBB2_203:
	push	iy
	call	_nextb
	ld	c, a
	ld	(ix - 7), bc
	pop	hl
	ld	iy, (ix + 6)
	ld	hl, (iy + 9)
	ld	a, (iy + 29)
	ld	e, a
	push	de
	push	bc
	push	iy
	call	__indcallhl
	pop	hl
	pop	hl
	pop	hl
	ld	de, (ix - 7)
	ld	d, 0
	ld	c, e
	ld	b, d
	inc.sis	bc
	ld	iy, (ix + 6)
	ld	a, (iy + 29)
	ld	e, a
	ld	l, d
	ld	h, e
	.local	.LBB2_204
.LBB2_204:
	call	__sor
	jp	.LBB2_267
	.local	.LBB2_205
.LBB2_205:
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB2_35
	jp	.LBB2_51
	.local	.LBB2_206
.LBB2_206:
	ld	a, (iy + 32)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 33)
	.local	.LBB2_207
.LBB2_207:
	add.sis	hl, de
	push	hl
	push	iy
	call	_pushw
	jp	.LBB2_358
	.local	.LBB2_208
.LBB2_208:
	ld	a, (iy + 29)
	ld	(ix - 7), a
	push	iy
	call	_nextb
	ld	l, a
	.local	.LBB2_209
.LBB2_209:
	pop	de
	ld	de, 0
	push	de
	push	hl
	ld	l, (ix - 7)                     ; 1-byte Folded Reload
	push	hl
	ld	hl, (ix + 6)
	push	hl
	jp	.LBB2_373
	.local	.LBB2_210
.LBB2_210:
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	p, .LBB2_45
	jp	.LBB2_195
	.local	.LBB2_211
.LBB2_211:
	ld	a, (iy + 29)
	ld	(ix - 7), a
	push	iy
	call	_nextb
	ld	iy, (ix + 6)
	ld	l, a
	.local	.LBB2_212
.LBB2_212:
	pop	de
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB2_370
; %bb.213:
	ld	de, 0
	jp	.LBB2_371
	.local	.LBB2_214
.LBB2_214:
	ld	hl, 24
	jr	.LBB2_220
	.local	.LBB2_215
.LBB2_215:
	bit	5, (iy + 46)
	jp	nz, .LBB2_45
	jp	.LBB2_195
	.local	.LBB2_216
.LBB2_216:
	push	iy
	call	_nextb
	ld	l, a
	.local	.LBB2_217
.LBB2_217:
	pop	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	.local	.LBB2_218
.LBB2_218:
	call	_land
	jp	.LBB2_358
	.local	.LBB2_219
.LBB2_219:
	ld	hl, 32
	.local	.LBB2_220
.LBB2_220:
	push	hl
	.local	.LBB2_221
.LBB2_221:
	push	iy
	.local	.LBB2_222
.LBB2_222:
	call	_call
	jp	.LBB2_358
	.local	.LBB2_223
.LBB2_223:
	bit	5, (iy + 46)
	jp	z, .LBB2_31
	jp	.LBB2_39
	.local	.LBB2_224
.LBB2_224:
	bit	5, (iy + 46)
	jp	z, .LBB2_45
	jp	.LBB2_195
	.local	.LBB2_225
.LBB2_225:
	ld	a, (iy + 32)
	ld	l, (iy + 33)
	ld	e, (iy + 34)
	ld	c, (iy + 35)
	ld	(iy + 32), e
	ld	(iy + 33), c
	ld	(iy + 34), a
	ld	(iy + 35), l
	jp	.LBB2_378
	.local	.LBB2_226
.LBB2_226:
	bit	5, (iy + 46)
	jp	z, .LBB2_35
	jp	.LBB2_51
	.local	.LBB2_227
.LBB2_227:
	ld	a, (iy + 46)
	ld	l, 1
	ld	e, l
	and	a, e
	ld	l, a
	ld	a, l
	xor	a, e
	jr	.LBB2_231
	.local	.LBB2_228
.LBB2_228:
	ld	a, (iy + 46)
	ld	l, 1
	ld	e, l
	and	a, e
	ld	l, a
	ld	a, l
	xor	a, e
	jr	.LBB2_236
	.local	.LBB2_229
.LBB2_229:
	ld	l, -4
	ld	a, (iy + 50)
	and	a, l
	ld	l, a
	ld	(iy + 50), l
	jp	.LBB2_378
	.local	.LBB2_230
.LBB2_230:
	ld	a, (iy + 46)
	ld	l, 1
	and	a, l
	.local	.LBB2_231
.LBB2_231:
	ld	l, a
	.local	.LBB2_232
.LBB2_232:
	push	hl
	push	iy
	call	_cond_ret
	jp	.LBB2_358
	.local	.LBB2_233
.LBB2_233:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	.local	.LBB2_234
.LBB2_234:
	ld	(iy + 21), l
	ld	(iy + 22), h
	jp	.LBB2_378
	.local	.LBB2_235
.LBB2_235:
	ld	a, (iy + 46)
	ld	l, 1
	and	a, l
	.local	.LBB2_236
.LBB2_236:
	ld	l, a
	.local	.LBB2_237
.LBB2_237:
	push	hl
	push	iy
	call	_cond_jump
	jp	.LBB2_358
	.local	.LBB2_238
.LBB2_238:
	ld	(iy + 47), 1
	jp	.LBB2_378
	.local	.LBB2_239
.LBB2_239:
	ld	a, (iy + 46)
	ld	l, 1
	and	a, l
	.local	.LBB2_240
.LBB2_240:
	ld	l, a
	.local	.LBB2_241
.LBB2_241:
	push	hl
	push	iy
	call	_cond_call
	jp	.LBB2_358
	.local	.LBB2_242
.LBB2_242:
	push	iy
	call	_nextw
	.local	.LBB2_243
.LBB2_243:
	pop	de
	ld	a, h
	ld	iy, (ix + 6)
	.local	.LBB2_244
.LBB2_244:
	ld	(iy + 30), a
	ld	a, l
	jp	.LBB2_316
	.local	.LBB2_245
.LBB2_245:
	ld	a, (iy + 30)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	ld	(ix - 7), e
	ld	(ix - 6), d
	add.sis	hl, de
	ld	a, (iy + 29)
	ld	de, (iy + 3)
	ld	(ix - 10), de
	ld	de, (iy + 12)
	ld	c, a
	push	bc
	push	hl
	push	de
	ld	hl, (ix - 10)
	call	__indcallhl
	pop	hl
	pop	hl
	pop	hl
	ld	e, (ix - 7)
	ld	d, (ix - 6)
	ld	iy, (ix + 6)
	ld	e, (iy + 29)
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	.local	.LBB2_246
.LBB2_246:
	inc	e
	add.sis	hl, de
	jp	.LBB2_267
	.local	.LBB2_247
.LBB2_247:
	ld	a, (iy + 30)
	ld	l, a
	push	hl
	push	iy
	call	_inc
	jp	.LBB2_311
	.local	.LBB2_248
.LBB2_248:
	ld	a, (iy + 30)
	ld	l, a
	push	hl
	push	iy
	call	_dec
	jp	.LBB2_311
	.local	.LBB2_249
.LBB2_249:
	ld	e, (iy + 29)
	ld	a, (iy + 46)
	call	__bbitrev
	ld	l, a
	ld	a, (iy + 36)
	ld	(iy + 29), a
	ld	a, (iy + 43)
	call	__bbitrev
	ld	(iy + 46), a
	ld	(iy + 36), e
	ld	(iy + 43), l
	jp	.LBB2_378
	.local	.LBB2_250
.LBB2_250:
	ld	a, (iy + 30)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	jp	.LBB2_264
	.local	.LBB2_251
.LBB2_251:
	dec	(iy + 30)
	ld	a, (iy + 30)
	or	a, a
	jp	z, .LBB2_93
	jp	.LBB2_104
	.local	.LBB2_252
.LBB2_252:
	push	iy
	call	_nextw
	.local	.LBB2_253
.LBB2_253:
	pop	de
	ld	a, h
	ld	iy, (ix + 6)
	jr	.LBB2_256
	.local	.LBB2_254
.LBB2_254:
	ld	a, (iy + 32)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 33)
	add.sis	hl, de
	inc.sis	hl
	.local	.LBB2_255
.LBB2_255:
	ld	a, h
	.local	.LBB2_256
.LBB2_256:
	ld	(iy + 32), a
	ld	a, l
	jp	.LBB2_329
	.local	.LBB2_257
.LBB2_257:
	ld	a, (iy + 32)
	ld	l, a
	push	hl
	push	iy
	call	_inc
	jr	.LBB2_259
	.local	.LBB2_258
.LBB2_258:
	ld	a, (iy + 32)
	ld	l, a
	push	hl
	push	iy
	call	_dec
	.local	.LBB2_259
.LBB2_259:
	pop	hl
	jr	.LBB2_261
	.local	.LBB2_260
.LBB2_260:
	push	iy
	call	_nextb
	.local	.LBB2_261
.LBB2_261:
	pop	hl
	ld	iy, (ix + 6)
	jp	.LBB2_322
	.local	.LBB2_262
.LBB2_262:
	ld	e, (iy + 46)
	ld	l, (iy + 29)
	ld	c, -128
	ld	a, l
	and	a, c
	ld	c, a
	ld	h, 35
	ld	a, e
	and	a, h
	ld	h, a
	ld	a, c
	add	a, h
	ld	c, a
	rlc	e
	rl	l
	ld	(iy + 29), l
	ld	a, l
	add	a, a
	ld	e, 16
	and	a, e
	ld	e, a
	ld	a, c
	add	a, e
	ld	e, a
	ld	a, l
	ld	b, 3
	call	__bshru
	ld	l, 4
	and	a, l
	ld	l, a
	ld	a, e
	add	a, l
	jp	.LBB2_293
	.local	.LBB2_263
.LBB2_263:
	ld	a, (iy + 32)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 33)
	.local	.LBB2_264
.LBB2_264:
	add.sis	hl, de
	jp	.LBB2_297
	.local	.LBB2_265
.LBB2_265:
	ld	a, (iy + 32)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 33)
	ld	(ix - 7), e
	ld	(ix - 6), d
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	(iy + 29), a
	ld	e, (ix - 7)
	ld	d, (ix - 6)
	ld	e, (iy + 32)
	ld	l, d
	ld	h, e
	ld	e, (iy + 33)
	.local	.LBB2_266
.LBB2_266:
	add.sis	hl, de
	inc.sis	hl
	.local	.LBB2_267
.LBB2_267:
	ld	(iy + 27), l
	ld	(iy + 28), h
	jp	.LBB2_378
	.local	.LBB2_268
.LBB2_268:
	ld	a, (iy + 33)
	ld	l, a
	push	hl
	push	iy
	call	_inc
	jp	.LBB2_326
	.local	.LBB2_269
.LBB2_269:
	push	iy
	call	_nextb
	jp	.LBB2_327
	.local	.LBB2_270
.LBB2_270:
	ld	c, (iy + 46)
	ld	l, (iy + 29)
	ld	a, l
	ld	b, 7
	call	__bshl
	ld	e, a
	ld	h, 35
	ld	a, c
	and	a, h
	ld	h, a
	ld	a, e
	add	a, h
	ld	e, a
	ld	h, l
	srl	h
	ld	d, -128
	ld	a, c
	and	a, d
	ld	c, a
	ld	a, h
	add	a, c
	ld	c, a
	ld	(iy + 29), c
	ld	c, 16
	ld	a, l
	and	a, c
	ld	c, a
	ld	a, l
	ld	b, 4
	call	__bshru
	and	a, b
	jp	.LBB2_287
	.local	.LBB2_271
.LBB2_271:
	push	iy
	call	_nextw
	.local	.LBB2_272
.LBB2_272:
	pop	de
	ld	a, h
	ld	iy, (ix + 6)
	jr	.LBB2_279
	.local	.LBB2_273
.LBB2_273:
	push	iy
	call	_nextw
	ld	c, l
	ld	b, h
	ld	(ix - 7), bc
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	.local	.LBB2_274
.LBB2_274:
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	.local	.LBB2_275
.LBB2_275:
	add.sis	hl, de
	push	hl
	push	bc
	.local	.LBB2_276
.LBB2_276:
	push	iy
	call	_ww
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 7)
	inc.sis	hl
	ld	iy, (ix + 6)
	jp	.LBB2_301
	.local	.LBB2_277
.LBB2_277:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	inc.sis	hl
	.local	.LBB2_278
.LBB2_278:
	ld	a, h
	.local	.LBB2_279
.LBB2_279:
	ld	(iy + 34), a
	ld	a, l
	jp	.LBB2_345
	.local	.LBB2_280
.LBB2_280:
	push	iy
	.local	.LBB2_281
.LBB2_281:
	call	_nextw
                                        ; kill: def $hl killed $hl def $uhl
	ld	(ix - 7), hl
	pop	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_rw
	pop	de
	pop	de
	ld	a, h
	ld	iy, (ix + 6)
	ld	(iy + 34), a
	ld	a, l
	ld	(iy + 35), a
	jp	.LBB2_299
	.local	.LBB2_282
.LBB2_282:
	ld	a, (iy + 35)
	ld	l, a
	push	hl
	push	iy
	call	_inc
	.local	.LBB2_283
.LBB2_283:
	pop	hl
	jr	.LBB2_285
	.local	.LBB2_284
.LBB2_284:
	push	iy
	call	_nextb
	.local	.LBB2_285
.LBB2_285:
	pop	hl
	ld	iy, (ix + 6)
	jp	.LBB2_345
	.local	.LBB2_286
.LBB2_286:
	ld	e, 72
	ld	a, (iy + 29)
	ld	l, -1
	xor	a, l
	ld	l, a
	ld	(iy + 29), l
	ld	c, (iy + 46)
	add	a, a
	ld	h, 16
	and	a, h
	ld	h, a
	ld	d, -93
	ld	a, c
	and	a, d
	ld	c, a
	ld	a, l
	ld	b, 3
	call	__bshru
	ld	l, 4
	and	a, l
	ld	l, a
	ld	a, h
	add	a, l
	.local	.LBB2_287
.LBB2_287:
	ld	l, a
	ld	a, l
	add	a, c
	ld	l, a
	jp	.LBB2_292
	.local	.LBB2_288
.LBB2_288:
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB2_93
	jp	.LBB2_104
	.local	.LBB2_289
.LBB2_289:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	ld	(ix - 7), e
	ld	(ix - 6), d
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	ld	l, a
	pop	de
	pop	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_inc
	.local	.LBB2_290
.LBB2_290:
	ld	l, a
	ld	(ix - 10), hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	c, (ix - 7)
	ld	b, (ix - 6)
	ld	c, (iy + 34)
	ld	l, b
	ld	h, c
	ld	c, (iy + 35)
	add.sis	hl, bc
	ld	bc, (iy + 3)
	ld	(ix - 7), bc
	ld	bc, (iy + 12)
	ld	de, (ix - 10)
	jp	.LBB2_350
	.local	.LBB2_291
.LBB2_291:
	ld	e, (iy + 46)
	ld	l, (iy + 29)
	ld	a, l
	add	a, a
	ld	c, 16
	and	a, c
	ld	c, a
	ld	h, 35
	ld	a, e
	and	a, h
	ld	e, a
	ld	a, e
	add	a, c
	ld	e, a
	ld	a, l
	ld	b, 3
	call	__bshru
	ld	l, 4
	and	a, l
	ld	l, a
	ld	a, e
	add	a, l
	ld	l, a
	ld	e, -128
	.local	.LBB2_292
.LBB2_292:
	ld	a, l
	add	a, e
	.local	.LBB2_293
.LBB2_293:
	ld	l, a
	.local	.LBB2_294
.LBB2_294:
	ld	(iy + 46), l
	jp	.LBB2_378
	.local	.LBB2_295
.LBB2_295:
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	p, .LBB2_93
	jp	.LBB2_104
	.local	.LBB2_296
.LBB2_296:
	ld	hl, (iy + 21)
	.local	.LBB2_297
.LBB2_297:
	push	hl
	push	iy
	call	_addhl
	jp	.LBB2_358
	.local	.LBB2_298
.LBB2_298:
	push	iy
	call	_nextw
	ld	c, l
	ld	b, h
	ld	(ix - 7), bc
	pop	hl
	ld	iy, (ix + 6)
	ld	hl, (iy)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	(iy + 29), a
	.local	.LBB2_299
.LBB2_299:
	ld	hl, (ix - 7)
	.local	.LBB2_300
.LBB2_300:
	inc.sis	hl
	.local	.LBB2_301
.LBB2_301:
	ld	(iy + 27), l
	ld	(iy + 28), h
	jp	.LBB2_378
	.local	.LBB2_302
.LBB2_302:
	ld	hl, (iy + 21)
	dec.sis	hl
	.local	.LBB2_303
.LBB2_303:
	ld	(iy + 21), l
	ld	(iy + 22), h
	jp	.LBB2_378
	.local	.LBB2_304
.LBB2_304:
	ld	a, (iy + 29)
	ld	l, a
	push	hl
	push	iy
	call	_inc
	jp	.LBB2_375
	.local	.LBB2_305
.LBB2_305:
	ld	a, (iy + 29)
	ld	l, a
	push	hl
	push	iy
	call	_dec
	jp	.LBB2_375
	.local	.LBB2_306
.LBB2_306:
	ld	l, (iy + 46)
	ld	a, l
	ld	h, 4
	ld	b, h
	call	__bshru
	ld	e, 8
	and	a, e
	ld	e, a
	ld	c, -93
	ld	a, l
	and	a, c
	ld	l, a
	ld	a, e
	add	a, l
	ld	e, a
	ld	l, (iy + 29)
	ld	a, l
	add	a, a
	ld	c, 16
	and	a, c
	ld	c, a
	ld	a, l
	ld	b, 3
	call	__bshru
	and	a, h
	ld	l, a
	ld	a, l
	add	a, c
	ld	l, a
	ld	a, e
	add	a, l
	ld	l, a
	ld	e, -128
	ld	a, l
	xor	a, e
	jp	.LBB2_293
	.local	.LBB2_307
.LBB2_307:
	ld	a, (iy + 32)
	jr	.LBB2_313
	.local	.LBB2_308
.LBB2_308:
	ld	a, (iy + 33)
	jr	.LBB2_313
	.local	.LBB2_309
.LBB2_309:
	ld	a, (iy + 35)
	jr	.LBB2_313
	.local	.LBB2_310
.LBB2_310:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	.local	.LBB2_311
.LBB2_311:
	pop	hl
	.local	.LBB2_312
.LBB2_312:
	pop	hl
	ld	iy, (ix + 6)
	.local	.LBB2_313
.LBB2_313:
	ld	(iy + 30), a
	jp	.LBB2_378
	.local	.LBB2_314
.LBB2_314:
	ld	a, (iy + 34)
	jr	.LBB2_316
	.local	.LBB2_315
.LBB2_315:
	ld	a, (iy + 35)
	.local	.LBB2_316
.LBB2_316:
	ld	(iy + 31), a
	jp	.LBB2_378
	.local	.LBB2_317
.LBB2_317:
	ld	a, (iy + 30)
	jr	.LBB2_322
	.local	.LBB2_318
.LBB2_318:
	ld	a, (iy + 31)
	jr	.LBB2_322
	.local	.LBB2_319
.LBB2_319:
	ld	a, (iy + 33)
	jr	.LBB2_322
	.local	.LBB2_320
.LBB2_320:
	ld	a, (iy + 34)
	jr	.LBB2_322
	.local	.LBB2_321
.LBB2_321:
	ld	a, (iy + 35)
	.local	.LBB2_322
.LBB2_322:
	ld	(iy + 32), a
	jp	.LBB2_378
	.local	.LBB2_323
.LBB2_323:
	ld	a, (iy + 34)
	jr	.LBB2_329
	.local	.LBB2_324
.LBB2_324:
	ld	a, (iy + 35)
	jr	.LBB2_329
	.local	.LBB2_325
.LBB2_325:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	.local	.LBB2_326
.LBB2_326:
	pop	hl
	.local	.LBB2_327
.LBB2_327:
	pop	hl
	ld	iy, (ix + 6)
	jr	.LBB2_329
	.local	.LBB2_328
.LBB2_328:
	ld	a, (iy + 29)
	.local	.LBB2_329
.LBB2_329:
	ld	(iy + 33), a
	jp	.LBB2_378
	.local	.LBB2_330
.LBB2_330:
	ld	a, (iy + 30)
	jr	.LBB2_337
	.local	.LBB2_331
.LBB2_331:
	ld	a, (iy + 32)
	jr	.LBB2_337
	.local	.LBB2_332
.LBB2_332:
	ld	a, (iy + 33)
	jr	.LBB2_337
	.local	.LBB2_333
.LBB2_333:
	ld	a, (iy + 35)
	jr	.LBB2_337
	.local	.LBB2_334
.LBB2_334:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	.local	.LBB2_335
.LBB2_335:
	pop	hl
	.local	.LBB2_336
.LBB2_336:
	pop	hl
	ld	iy, (ix + 6)
	.local	.LBB2_337
.LBB2_337:
	ld	(iy + 34), a
	jp	.LBB2_378
	.local	.LBB2_338
.LBB2_338:
	ld	a, (iy + 29)
	jr	.LBB2_337
	.local	.LBB2_339
.LBB2_339:
	ld	a, (iy + 30)
	jr	.LBB2_345
	.local	.LBB2_340
.LBB2_340:
	ld	a, (iy + 31)
	jr	.LBB2_345
	.local	.LBB2_341
.LBB2_341:
	ld	a, (iy + 32)
	jr	.LBB2_345
	.local	.LBB2_342
.LBB2_342:
	ld	a, (iy + 33)
	jr	.LBB2_345
	.local	.LBB2_343
.LBB2_343:
	ld	a, (iy + 34)
	jr	.LBB2_345
	.local	.LBB2_344
.LBB2_344:
	ld	a, (iy + 29)
	.local	.LBB2_345
.LBB2_345:
	ld	(iy + 35), a
	jp	.LBB2_378
	.local	.LBB2_346
.LBB2_346:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	a, (iy + 31)
	jr	.LBB2_353
	.local	.LBB2_347
.LBB2_347:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	a, (iy + 32)
	jr	.LBB2_353
	.local	.LBB2_348
.LBB2_348:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	jr	.LBB2_353
	.local	.LBB2_349
.LBB2_349:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	bc, (iy + 3)
	ld	(ix - 7), bc
	ld	bc, (iy + 12)
	.local	.LBB2_350
.LBB2_350:
	push	de
	push	hl
	push	bc
	jr	.LBB2_355
	.local	.LBB2_351
.LBB2_351:
	set	2, (iy + 50)
	jp	.LBB2_378
	.local	.LBB2_352
.LBB2_352:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	a, (iy + 29)
	.local	.LBB2_353
.LBB2_353:
	ld	bc, (iy + 3)
	ld	(ix - 7), bc
	.local	.LBB2_354
.LBB2_354:
	ld	de, (iy + 12)
	ld	c, a
	push	bc
	push	hl
	push	de
	.local	.LBB2_355
.LBB2_355:
	ld	hl, (ix - 7)
	.local	.LBB2_356
.LBB2_356:
	call	__indcallhl
	.local	.LBB2_357
.LBB2_357:
	pop	hl
	.local	.LBB2_358
.LBB2_358:
	pop	hl
	.local	.LBB2_359
.LBB2_359:
	pop	hl
	jr	.LBB2_378
	.local	.LBB2_360
.LBB2_360:
	ld	a, (iy + 30)
	jr	.LBB2_377
	.local	.LBB2_361
.LBB2_361:
	ld	a, (iy + 31)
	jr	.LBB2_377
	.local	.LBB2_362
.LBB2_362:
	ld	a, (iy + 33)
	jr	.LBB2_377
	.local	.LBB2_363
.LBB2_363:
	ld	a, (iy + 34)
	jr	.LBB2_377
	.local	.LBB2_364
.LBB2_364:
	ld	a, (iy + 35)
	jr	.LBB2_377
	.local	.LBB2_365
.LBB2_365:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	jr	.LBB2_375
	.local	.LBB2_366
.LBB2_366:
	ld	de, -1
	.local	.LBB2_367
.LBB2_367:
	push	de
	push	hl
	ld	l, (ix - 7)                     ; 1-byte Folded Reload
	.local	.LBB2_368
.LBB2_368:
	push	hl
	push	iy
	.local	.LBB2_369
.LBB2_369:
	call	_addb
	jr	.LBB2_374
	.local	.LBB2_370
.LBB2_370:
	ld	de, -1
	.local	.LBB2_371
.LBB2_371:
	push	de
	push	hl
	ld	l, (ix - 7)                     ; 1-byte Folded Reload
	.local	.LBB2_372
.LBB2_372:
	push	hl
	push	iy
	.local	.LBB2_373
.LBB2_373:
	call	_subb
	.local	.LBB2_374
.LBB2_374:
	pop	hl
	pop	hl
	.local	.LBB2_375
.LBB2_375:
	pop	hl
	.local	.LBB2_376
.LBB2_376:
	pop	hl
	ld	iy, (ix + 6)
	.local	.LBB2_377
.LBB2_377:
	ld	(iy + 29), a
	.local	.LBB2_378
.LBB2_378:
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB2_379
.LBB2_379:
	ld	de, -1
	.local	.LBB2_380
.LBB2_380:
	push	de
	ld	e, l
	jp	.LBB2_148
	.local	.LBB2_381
.LBB2_381:
	ld	de, 0
	ld	e, c
	ld	hl, JTI2_1
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB2_382
.LBB2_382:
	ld	hl, (ix + 6)
	push	hl
	call	_ldi
	jp	.LBB2_359
	.local	.LBB2_383
.LBB2_383:
	ld	b, -1
	.local	.LBB2_384
.LBB2_384:
	ld	a, c
	and	a, b
	ld	b, a
	ld	a, d
	add	a, e
	ld	c, a
	ld	e, -128
	ld	a, l
	or	a, e
	ld	e, a
	bit	0, b
	jr	nz, .LBB2_386
; %bb.385:
	ld	l, e
	.local	.LBB2_386
.LBB2_386:
	bit	0, b
	jr	nz, .LBB2_388
; %bb.387:
	ld	d, c
	.local	.LBB2_388
.LBB2_388:
	ld	b, -9
	ld	c, -56
	ld	a, h
	bit	6, l
	jr	nz, .LBB2_392
; %bb.389:
	cp	a, 10
	ld	e, iyl
	jr	c, .LBB2_391
; %bb.390:
	ld	e, 8
	.local	.LBB2_391
.LBB2_391:
	ld	a, l
	and	a, b
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	e, (ix - 7)
	ld	a, d
	add	a, e
	ld	e, a
	ld	iy, (ix + 6)
	jr	.LBB2_397
	.local	.LBB2_392
.LBB2_392:
	cp	a, 6
	jr	c, .LBB2_394
; %bb.393:
	push	af
	ld	a, iyl
	ld	(ix - 13), a                    ; 1-byte Folded Spill
	pop	af
	.local	.LBB2_394
.LBB2_394:
	bit	3, l
	ld	e, iyl
	ld	iy, (ix + 6)
	jr	z, .LBB2_396
; %bb.395:
	ld	e, (ix - 13)                    ; 1-byte Folded Reload
	.local	.LBB2_396
.LBB2_396:
	ld	a, l
	and	a, b
	ld	l, a
	ld	a, e
	add	a, l
	ld	l, a
	ld	a, (ix - 7)
	sub	a, d
	ld	e, a
	.local	.LBB2_397
.LBB2_397:
	ld	(iy + 29), e
	ld	a, e
	ld	b, 7
	call	__bshru
	ld	(ix - 13), a                    ; 1-byte Folded Spill
	ld	a, l
	and	a, c
	ld	l, a
	ld	(ix - 16), l
	ld	a, e
	or	a, a
	jr	z, .LBB2_399
; %bb.398:
	xor	a, a
	ld	(ix - 10), a                    ; 1-byte Folded Spill
	.local	.LBB2_399
.LBB2_399:
	ld	(ix - 7), e                     ; 1-byte Folded Spill
	ld	l, e
	push	hl
	call	_parity
	pop	hl
	bit	0, a
	ld	h, 32
	jr	nz, .LBB2_401
; %bb.400:
	xor	a, a
	ld	h, a
	.local	.LBB2_401
.LBB2_401:
	ld	e, (ix - 7)                     ; 1-byte Folded Reload
	ld	a, e
	add	a, a
	ld	l, 16
	and	a, l
	ld	l, a
	ld	a, e
	ld	b, 3
	call	__bshru
	ld	e, 4
	and	a, e
	ld	e, a
	ld	a, (ix - 13)
	ld	c, (ix - 16)
	add	a, c
	ld	c, a
	ld	d, (ix - 10)
	ld	a, c
	add	a, d
	ld	c, a
	ld	a, c
	add	a, l
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	a, l
	add	a, h
	ld	l, a
	ld	iy, (ix + 6)
	jp	.LBB2_294
	.local	.LBB2_402
.LBB2_402:
	ld	de, -1
	.local	.LBB2_403
.LBB2_403:
	push	de
	ld	e, l
	jp	.LBB2_164
	.local	.LBB2_404
.LBB2_404:
	ld	c, l
	ld	hl, JTI2_2
	add	hl, bc
	add	hl, bc
	add	hl, bc
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB2_405
.LBB2_405:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	pea	iy + 30
	jp	.LBB2_500
	.local	.LBB2_406
.LBB2_406:
	lea	iy, iy + 31
	ld	de, 0
	ld	e, (ix - 10)                    ; 1-byte Folded Reload
	ld	hl, JTI2_4
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB2_407
.LBB2_407:
	lea	iy, iy + 32
	ld	de, 0
	ld	e, (ix - 10)                    ; 1-byte Folded Reload
	ld	hl, JTI2_4
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB2_408
.LBB2_408:
	lea	iy, iy + 33
	ld	de, 0
	ld	e, (ix - 10)                    ; 1-byte Folded Reload
	ld	hl, JTI2_4
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB2_409
.LBB2_409:
	lea	iy, iy + 34
	ld	de, 0
	ld	e, (ix - 10)                    ; 1-byte Folded Reload
	ld	hl, JTI2_4
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB2_410
.LBB2_410:
	lea	iy, iy + 35
	ld	de, 0
	ld	e, (ix - 10)                    ; 1-byte Folded Reload
	ld	hl, JTI2_4
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB2_411
.LBB2_411:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	(ix - 23), hl
	ld	hl, (ix + 6)
	ld	hl, (hl)
	ld	(ix - 20), c                    ; 1-byte Folded Spill
	ld	iy, (ix + 6)
	ld	de, (iy + 12)
	ld	bc, (ix - 23)
	push	bc
	push	de
	call	__indcallhl
	ld	c, (ix - 20)                    ; 1-byte Folded Reload
	pop	hl
	pop	hl
	ld	(ix - 2), a
	ld	de, 0
	ld	e, (ix - 10)                    ; 1-byte Folded Reload
	ld	hl, JTI2_4
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	ld	iy, (ix - 13)
	jp	(hl)
	.local	.LBB2_412
.LBB2_412:
	lea	iy, iy + 29
	ld	de, 0
	ld	e, (ix - 10)                    ; 1-byte Folded Reload
	ld	hl, JTI2_4
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB2_413
.LBB2_413:
	ld	(ix - 20), c
	ld	de, 0
	ld	hl, (ix - 16)
	ld	e, l
	ld	hl, JTI2_5
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	ld	(ix - 10), iy
	jp	(hl)
	.local	.LBB2_414
.LBB2_414:
	ld	a, (iy)
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_cb_rlc
	jp	.LBB2_427
	.local	.LBB2_415
.LBB2_415:
	ld	(ix - 20), c
	ld	(ix - 10), iy
	ld	a, (iy)
	ld	hl, (ix - 16)
	push	hl
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_cb_bit
	pop	hl
	pop	hl
	pop	hl
	ld	a, (ix - 17)                    ; 1-byte Folded Reload
	cp	a, 6
	jp	nz, .LBB2_428
; %bb.416:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	de, (iy + 27)
	ld	b, (iy + 46)
	ld	c, 11
	ld	l, e
	ld	h, d
	call	__sshru
	ld	c, 4
	ld	a, l
	and	a, c
	ld	l, a
	ld	c, -21
	ld	a, b
	and	a, c
	ld	c, a
	ld	a, l
	add	a, c
	ld	b, a
	ld	c, 7
	ld	l, e
	ld	h, d
	call	__sshru
	ld	e, 16
	ld	a, l
	and	a, e
	ld	l, a
	ld	a, b
	add	a, l
	ld	l, a
	ld	(iy + 46), l
	ld	hl, (iy + 15)
	ld	iy, (ix - 7)
	ld	e, (iy)
	ld	bc, 4
	xor	a, a
	call	__ladd
	ld	iy, (ix + 6)
	ld	(iy + 15), hl
	ld	(iy + 18), e
	jp	.LBB2_428
	.local	.LBB2_417
.LBB2_417:
	ld	a, 1
	ld	hl, (ix - 16)
	ld	b, l
	call	__bshl
	ld	l, -1
	xor	a, l
	ld	l, a
	ld	a, (iy)
	and	a, l
	jr	.LBB2_419
	.local	.LBB2_418
.LBB2_418:
	ld	a, 1
	ld	hl, (ix - 16)
	ld	b, l
	call	__bshl
	ld	l, a
	ld	a, (iy)
	or	a, l
	.local	.LBB2_419
.LBB2_419:
	ld	l, a
	ld	(ix - 10), iy
	ld	(iy), l
	jr	.LBB2_429
	.local	.LBB2_420
.LBB2_420:
	ld	a, (iy)
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_cb_rrc
	jr	.LBB2_427
	.local	.LBB2_421
.LBB2_421:
	ld	a, (iy)
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_cb_rl
	jr	.LBB2_427
	.local	.LBB2_422
.LBB2_422:
	ld	a, (iy)
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_cb_rr
	jr	.LBB2_427
	.local	.LBB2_423
.LBB2_423:
	ld	a, (iy)
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_cb_sla
	jr	.LBB2_427
	.local	.LBB2_424
.LBB2_424:
	ld	a, (iy)
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_cb_sra
	jr	.LBB2_427
	.local	.LBB2_425
.LBB2_425:
	ld	a, (iy)
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_cb_sll
	jr	.LBB2_427
	.local	.LBB2_426
.LBB2_426:
	ld	a, (iy)
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_cb_srl
	.local	.LBB2_427
.LBB2_427:
	pop	hl
	pop	hl
	ld	hl, (ix - 10)
	ld	(hl), a
	.local	.LBB2_428
.LBB2_428:
	ld	c, (ix - 20)                    ; 1-byte Folded Reload
	.local	.LBB2_429
.LBB2_429:
	ld	a, c
	cp	a, 64
	call	pe, __setflag
	ld	iy, (ix + 6)
	jp	p, .LBB2_432
; %bb.430:
	ld	a, (ix - 17)                    ; 1-byte Folded Reload
	cp	a, 6
	jr	nz, .LBB2_432
; %bb.431:
	ld	bc, 7
	ld	hl, (iy + 15)
	ld	iy, (ix - 7)
	ld	e, (iy)
	ld	iy, (ix + 6)
	xor	a, a
	call	__ladd
	ld	(iy + 15), hl
	ld	(iy + 18), e
	.local	.LBB2_432
.LBB2_432:
	ld	hl, (ix - 10)
	ld	de, (ix - 13)
	or	a, a
	sbc	hl, de
	jp	nz, .LBB2_378
; %bb.433:
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	a, (ix - 2)
	ld	de, (iy + 3)
	ld	(ix - 7), de
	jp	.LBB2_354
	.local	.LBB2_434
.LBB2_434:
	ld	hl, (ix + 6)
	push	hl
	call	_cpi
	jp	.LBB2_359
	.local	.LBB2_435
.LBB2_435:
	ld	hl, (ix + 6)
	push	hl
	call	_ini
	jp	.LBB2_359
	.local	.LBB2_436
.LBB2_436:
	ld	hl, (ix + 6)
	push	hl
	call	_outi
	jp	.LBB2_359
	.local	.LBB2_437
.LBB2_437:
	ld	hl, (ix + 6)
	push	hl
	call	_ldd
	jp	.LBB2_359
	.local	.LBB2_438
.LBB2_438:
	ld	hl, (ix + 6)
	push	hl
	call	_cpd
	jp	.LBB2_359
	.local	.LBB2_439
.LBB2_439:
	ld	hl, (ix + 6)
	push	hl
	call	_ind
	jp	.LBB2_359
	.local	.LBB2_440
.LBB2_440:
	ld	hl, (ix + 6)
	push	hl
	call	_outd
	jp	.LBB2_359
	.local	.LBB2_441
.LBB2_441:
	ld	hl, (ix + 6)
	push	hl
	call	_ldi
	ld	iy, (ix + 6)
	pop	hl
	ld	a, (iy + 30)
	ld	d, 0
	ld	e, a
	jp	.LBB2_448
	.local	.LBB2_442
.LBB2_442:
	ld	hl, (ix + 6)
	push	hl
	call	_cpi
	ld	iy, (ix + 6)
	pop	hl
	ld	d, 0
	ld	e, (iy + 30)
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	add.sis	hl, de
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jp	z, .LBB2_454
; %bb.443:
	bit	1, (iy + 46)
	jp	nz, .LBB2_454
; %bb.444:
	ld	hl, (iy + 19)
	ld	(ix - 10), hl
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, -2
	add.sis	hl, de
	ld	(iy + 19), l
	ld	(iy + 20), h
	ld	hl, (iy + 15)
	ld	iy, (ix - 7)
	ld	e, (iy)
	ld	bc, 5
	xor	a, a
	jp	.LBB2_450
	.local	.LBB2_445
.LBB2_445:
	ld	hl, (ix + 6)
	push	hl
	call	_ini
	jp	.LBB2_456
	.local	.LBB2_446
.LBB2_446:
	ld	hl, (ix + 6)
	push	hl
	call	_outi
	jp	.LBB2_456
	.local	.LBB2_447
.LBB2_447:
	ld	hl, (ix + 6)
	push	hl
	call	_ldd
	ld	iy, (ix + 6)
	pop	hl
	ld	d, 0
	ld	e, (iy + 30)
	.local	.LBB2_448
.LBB2_448:
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	add.sis	hl, de
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	ld	a, d
	ld	bc, (ix - 7)
	jp	z, .LBB2_378
; %bb.449:
	ld	hl, (iy + 19)
	ld	(ix - 10), hl
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, -2
	add.sis	hl, de
	ld	(iy + 19), l
	ld	(iy + 20), h
	ld	hl, (iy + 15)
	push	bc
	pop	iy
	ld	e, (iy)
	ld	bc, 5
	.local	.LBB2_450
.LBB2_450:
	call	__ladd
	ld	iy, (ix + 6)
	ld	(iy + 15), hl
	ld	(iy + 18), e
	ld	hl, (ix - 10)
	dec.sis	hl
	jp	.LBB2_301
	.local	.LBB2_451
.LBB2_451:
	ld	hl, (ix + 6)
	push	hl
	call	_cpd
	ld	iy, (ix + 6)
	pop	hl
	ld	d, 0
	ld	e, (iy + 30)
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	add.sis	hl, de
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jr	z, .LBB2_454
; %bb.452:
	bit	1, (iy + 46)
	jr	nz, .LBB2_454
; %bb.453:
	ld	hl, (iy + 19)
	ld.sis	de, -2
	add.sis	hl, de
	ld	(iy + 19), l
	ld	(iy + 20), h
	ld	hl, (iy + 15)
	ld	iy, (ix - 7)
	ld	e, (iy)
	ld	bc, 5
	xor	a, a
	jr	.LBB2_458
	.local	.LBB2_454
.LBB2_454:
	ld	hl, (iy + 27)
	jp	.LBB2_300
	.local	.LBB2_455
.LBB2_455:
	ld	hl, (ix + 6)
	push	hl
	call	_ind
	.local	.LBB2_456
.LBB2_456:
	ld	iy, (ix + 6)
	pop	hl
	lea	hl, iy + 0
	ld	a, (iy + 30)
	or	a, a
	ld	a, 0
	ld	bc, (ix - 7)
	jp	z, .LBB2_378
; %bb.457:
	ex	de, hl
	push	de
	pop	iy
	ld	hl, (iy + 19)
	ld.sis	de, -2
	add.sis	hl, de
	ld	(iy + 19), l
	ld	(iy + 20), h
	ld	hl, (iy + 15)
	push	bc
	pop	iy
	ld	e, (iy)
	ld	bc, 5
	.local	.LBB2_458
.LBB2_458:
	call	__ladd
	ld	iy, (ix + 6)
	ld	(iy + 15), hl
	ld	(iy + 18), e
	jp	.LBB2_378
	.local	.LBB2_459
.LBB2_459:
	ld	hl, (ix + 6)
	push	hl
	call	_outd
	ld	iy, (ix + 6)
	pop	hl
	ld	a, (iy + 30)
	or	a, a
	jp	z, .LBB2_378
; %bb.460:
	ld	hl, (iy + 19)
	ld.sis	de, -2
	jp	.LBB2_89
	.local	.LBB2_461
.LBB2_461:
	ld	iy, (ix + 6)
	ld	hl, (iy + 9)
	ld	a, (iy + 31)
	ld	e, (iy + 30)
	jp	.LBB2_503
	.local	.LBB2_462
.LBB2_462:
	ld	d, 0
	ld	iy, (ix + 6)
	ld	e, (iy + 30)
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	jp	.LBB2_496
	.local	.LBB2_463
.LBB2_463:
	ld	hl, (ix + 6)
	push	hl
	call	_nextw
	ld	c, l
	ld	b, h
	ld	(ix - 7), bc
	pop	hl
	ld	d, 0
	ld	iy, (ix + 6)
	ld	e, (iy + 30)
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	jp	.LBB2_275
	.local	.LBB2_464
.LBB2_464:
	ld	iy, (ix + 6)
	ld	a, (iy + 29)
	or	a, a
	sbc	hl, hl
	push	hl
	ld	e, a
	push	de
	jp	.LBB2_372
	.local	.LBB2_465
.LBB2_465:
	ld	l, -2
	ld	iy, (ix + 6)
	ld	e, (iy + 50)
	ld	a, e
	srl	a
	ld	c, 1
	and	a, c
	ld	c, a
	ld	a, e
	and	a, l
	ld	l, a
	ld	a, c
	add	a, l
	ld	l, a
	ld	(iy + 50), l
	.local	.LBB2_466
.LBB2_466:
	push	iy
	.local	.LBB2_467
.LBB2_467:
	call	_ret
	jp	.LBB2_359
	.local	.LBB2_468
.LBB2_468:
	ld	iy, (ix + 6)
	ld	(iy + 48), 0
	jp	.LBB2_378
	.local	.LBB2_469
.LBB2_469:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	a, (iy + 29)
	ld	(iy + 44), a
	jp	.LBB2_378
	.local	.LBB2_470
.LBB2_470:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	pea	iy + 31
	jp	.LBB2_500
	.local	.LBB2_471
.LBB2_471:
	ld	iy, (ix + 6)
	ld	hl, (iy + 9)
	ld	a, (iy + 31)
	ld	e, a
	push	de
	jp	.LBB2_505
	.local	.LBB2_472
.LBB2_472:
	ld	d, 0
	ld	iy, (ix + 6)
	ld	e, (iy + 30)
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	jp	.LBB2_507
	.local	.LBB2_473
.LBB2_473:
	ld	hl, (ix + 6)
	push	hl
	call	_nextw
                                        ; kill: def $hl killed $hl def $uhl
	ld	(ix - 7), hl
	pop	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_rw
	pop	de
	pop	de
	ld	a, h
	ld	iy, (ix + 6)
	ld	(iy + 30), a
	ld	a, l
	ld	(iy + 31), a
	jp	.LBB2_299
	.local	.LBB2_474
.LBB2_474:
	ld	hl, (ix + 6)
	push	hl
	jp	.LBB2_467
	.local	.LBB2_475
.LBB2_475:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	a, (iy + 29)
	ld	(iy + 45), a
	jp	.LBB2_378
	.local	.LBB2_476
.LBB2_476:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	pea	iy + 32
	jp	.LBB2_500
	.local	.LBB2_477
.LBB2_477:
	ld	iy, (ix + 6)
	ld	hl, (iy + 9)
	ld	a, (iy + 31)
	ld	e, (iy + 32)
	jp	.LBB2_503
	.local	.LBB2_478
.LBB2_478:
	ld	d, 0
	ld	iy, (ix + 6)
	ld	e, (iy + 32)
	ld	l, d
	ld	h, e
	ld	e, (iy + 33)
	jp	.LBB2_496
	.local	.LBB2_479
.LBB2_479:
	ld	hl, (ix + 6)
	push	hl
	call	_nextw
	ld	c, l
	ld	b, h
	ld	(ix - 7), bc
	pop	hl
	ld	d, 0
	ld	iy, (ix + 6)
	ld	e, (iy + 32)
	ld	l, d
	ld	h, e
	ld	e, (iy + 33)
	jp	.LBB2_275
	.local	.LBB2_480
.LBB2_480:
	ld	iy, (ix + 6)
	ld	(iy + 48), 1
	jp	.LBB2_378
	.local	.LBB2_481
.LBB2_481:
	ld	iy, (ix + 6)
	ld	l, (iy + 44)
	ld	(iy + 29), l
	ld	a, l
	ld	b, 7
	call	__bshru
	ld	e, a
	ld	a, (iy + 46)
	ld	c, -108
	and	a, c
	ld	c, a
	ld	a, l
	or	a, a
	jr	z, .LBB2_483
; %bb.482:
	xor	a, a
	ld	(ix - 10), a                    ; 1-byte Folded Spill
	.local	.LBB2_483
.LBB2_483:
	ld	a, (ix - 10)
	add	a, e
	ld	l, a
	ld	a, l
	add	a, c
	jp	.LBB2_492
	.local	.LBB2_484
.LBB2_484:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	pea	iy + 33
	jp	.LBB2_500
	.local	.LBB2_485
.LBB2_485:
	ld	iy, (ix + 6)
	ld	hl, (iy + 9)
	ld	a, (iy + 31)
	ld	e, (iy + 33)
	jp	.LBB2_503
	.local	.LBB2_486
.LBB2_486:
	ld	d, 0
	ld	iy, (ix + 6)
	ld	e, (iy + 32)
	ld	l, d
	ld	h, e
	ld	e, (iy + 33)
	jp	.LBB2_507
	.local	.LBB2_487
.LBB2_487:
	ld	hl, (ix + 6)
	push	hl
	call	_nextw
                                        ; kill: def $hl killed $hl def $uhl
	ld	(ix - 7), hl
	pop	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_rw
	pop	de
	pop	de
	ld	a, h
	ld	iy, (ix + 6)
	ld	(iy + 32), a
	ld	a, l
	ld	(iy + 33), a
	jp	.LBB2_299
	.local	.LBB2_488
.LBB2_488:
	ld	iy, (ix + 6)
	ld	(iy + 48), 2
	jp	.LBB2_378
	.local	.LBB2_489
.LBB2_489:
	ld	iy, (ix + 6)
	ld	(iy + 29), d
	ld	a, e
	ld	b, 7
	call	__bshru
	ld	l, a
	ld	a, (iy + 46)
	ld	e, -108
	and	a, e
	ld	e, a
	ld	a, d
	or	a, a
	jr	z, .LBB2_491
; %bb.490:
	xor	a, a
	ld	(ix - 10), a                    ; 1-byte Folded Spill
	.local	.LBB2_491
.LBB2_491:
	ld	a, (ix - 10)
	add	a, l
	ld	l, a
	ld	a, l
	add	a, e
	.local	.LBB2_492
.LBB2_492:
	ld	l, a
	ld	a, (iy + 50)
	ld	b, 4
	call	__bshl
	ld	e, 32
	and	a, e
	ld	e, a
	jp	.LBB2_292
	.local	.LBB2_493
.LBB2_493:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	pea	iy + 34
	jp	.LBB2_500
	.local	.LBB2_494
.LBB2_494:
	ld	iy, (ix + 6)
	ld	hl, (iy + 9)
	ld	a, (iy + 31)
	ld	e, (iy + 34)
	jp	.LBB2_503
	.local	.LBB2_495
.LBB2_495:
	ld	d, 0
	ld	iy, (ix + 6)
	ld	e, (iy + 34)
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	.local	.LBB2_496
.LBB2_496:
	add.sis	hl, de
	jp	.LBB2_518
	.local	.LBB2_497
.LBB2_497:
	ld	hl, (ix + 6)
	push	hl
	call	_nextw
	ld	c, l
	ld	b, h
	ld	(ix - 7), bc
	pop	hl
	ld	d, 0
	ld	iy, (ix + 6)
	ld	e, (iy + 34)
	jp	.LBB2_274
	.local	.LBB2_498
.LBB2_498:
	ld	iy, (ix + 6)
	ld	l, (iy + 29)
	ld	(ix - 13), l
	ld	h, 0
	ld	c, l
	ld	b, h
	ld	c, (iy + 34)
	ld	(ix - 7), c
	ld	(ix - 6), b
	ld	l, b
	ld	h, c
	ld	e, (iy + 35)
	ld	d, b
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	ld	l, a
	ld	(ix - 17), l
	pop	de
	pop	de
	ld	e, -16
	ld	a, (ix - 13)
	and	a, e
	ld	e, a
	ld	c, 15
	ld	a, l
	and	a, c
	ld	c, a
	ld	a, c
	add	a, e
	ld	e, a
	ld	iy, (ix + 6)
	ld	(iy + 29), e
	ld	a, (iy + 34)
	ld	l, (ix - 7)
	ld	h, (ix - 6)
	ex	de, hl
	ld	iyh, d
	ex	de, hl
	ld	iyl, a
	ld	c, h
	ld	b, iyl
	ld	iy, (ix + 6)
	ld	e, (iy + 35)
	ld	l, (ix - 7)
	ld	h, (ix - 6)
	ld	d, h
	push	bc
	pop	hl
	add.sis	hl, de
	ld	(ix - 20), hl
	ld	a, (ix - 13)                    ; 1-byte Folded Reload
	rrc	a
	ld	l, (ix - 17)                    ; 1-byte Folded Reload
	rr	l
	rrc	a
	rr	l
	rrc	a
	rr	l
	rrc	a
	rr	l
	ld	de, (ix + 6)
	push	de
	pop	iy
	ld	bc, (iy + 3)
	ld	de, (iy + 12)
                                        ; kill: def $l killed $l def $uhl
	push	hl
	ld	hl, (ix - 20)
	push	hl
	push	de
	push	bc
	pop	hl
	jp	.LBB2_510
	.local	.LBB2_499
.LBB2_499:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	pea	iy + 35
	.local	.LBB2_500
.LBB2_500:
	push	iy
	.local	.LBB2_501
.LBB2_501:
	call	_in_r_c
	jp	.LBB2_358
	.local	.LBB2_502
.LBB2_502:
	ld	iy, (ix + 6)
	ld	hl, (iy + 9)
	ld	a, (iy + 31)
	ld	e, (iy + 35)
	.local	.LBB2_503
.LBB2_503:
                                        ; kill: def $e killed $e def $ude
	.local	.LBB2_504
.LBB2_504:
	push	de
	ld	e, a
	.local	.LBB2_505
.LBB2_505:
	push	de
	push	iy
	jp	.LBB2_356
	.local	.LBB2_506
.LBB2_506:
	ld	d, 0
	ld	iy, (ix + 6)
	ld	e, (iy + 34)
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	.local	.LBB2_507
.LBB2_507:
	add.sis	hl, de
	jp	.LBB2_524
	.local	.LBB2_508
.LBB2_508:
	ld	hl, (ix + 6)
	push	hl
	jp	.LBB2_281
	.local	.LBB2_509
.LBB2_509:
	ld	iy, (ix + 6)
	ld	l, (iy + 29)
	ld	(ix - 13), l
	ld	h, 0
	ld	c, l
	ld	b, h
	ld	c, (iy + 34)
	ld	(ix - 7), c
	ld	(ix - 6), b
	ld	l, b
	ld	h, c
	ld	e, (iy + 35)
	ld	d, b
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	ld	e, a
	ld	(ix - 17), e
	pop	hl
	pop	hl
	ld	l, -16
	ld	a, (ix - 13)
	and	a, l
	ld	l, a
	ld	a, e
	ld	c, 4
	ld	b, c
	call	__bshru
	add	a, l
	ld	l, a
	ld	iy, (ix + 6)
	ld	(iy + 29), l
	ld	a, (iy + 34)
	ld	e, (ix - 7)
	ld	d, (ix - 6)
	ld	b, d
	ld	c, a
	ld	l, d
	ld	h, c
	ld	c, (iy + 35)
	ld	b, d
	add.sis	hl, bc
	ld	a, (ix - 17)                    ; 1-byte Folded Reload
	ld	b, 4
	call	__bshl
	ld	e, a
	ld	a, (ix - 13)
	ld	c, 15
	and	a, c
	ld	c, a
	ld	a, e
	add	a, c
	ld	e, a
	ld	bc, (iy + 3)
	ld	(ix - 13), bc
	ld	bc, (iy + 12)
	push	de
	push	hl
	push	bc
	ld	hl, (ix - 13)
	.local	.LBB2_510
.LBB2_510:
	call	__indcallhl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	e, (iy + 46)
	ld	l, (iy + 29)
	ld	a, l
	add	a, a
	ld	c, 16
	and	a, c
	ld	c, a
	ld	(ix - 13), c
	ld	c, -128
	ld	a, e
	and	a, c
	ld	e, a
	ld	(ix - 17), e
	ld	a, l
	ld	b, 3
	call	__bshru
	ld	e, 4
	and	a, e
	ld	e, a
	ld	(ix - 20), e
	ld	a, l
	or	a, a
	jr	z, .LBB2_512
; %bb.511:
	xor	a, a
	ld	(ix - 10), a                    ; 1-byte Folded Spill
	.local	.LBB2_512
.LBB2_512:
	ld	a, l
	ld	b, 7
	call	__bshru
	ld	(ix - 23), a                    ; 1-byte Folded Spill
                                        ; kill: def $l killed $l def $uhl
	push	hl
	call	_parity
	pop	hl
	bit	0, a
	jr	nz, .LBB2_514
; %bb.513:
	xor	a, a
	ld	(ix - 16), a                    ; 1-byte Folded Spill
	.local	.LBB2_514
.LBB2_514:
	ld	l, (ix - 17)
	ld	a, (ix - 23)
	add	a, l
	ld	l, a
	ld	e, (ix - 13)
	ld	a, l
	add	a, e
	ld	l, a
	ld	e, (ix - 20)
	ld	a, l
	add	a, e
	ld	l, a
	ld	e, (ix - 10)
	ld	a, l
	add	a, e
	ld	l, a
	ld	e, (ix - 16)
	ld	a, l
	add	a, e
	ld	l, a
	ld	iy, (ix + 6)
	ld	(iy + 46), l
	ld	e, (ix - 7)
	ld	d, (ix - 6)
	ld	e, (iy + 34)
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	jp	.LBB2_266
	.local	.LBB2_515
.LBB2_515:
	pea	ix - 1
	ld	hl, (ix + 6)
	push	hl
	jp	.LBB2_501
	.local	.LBB2_516
.LBB2_516:
	ld	iy, (ix + 6)
	ld	hl, (iy + 9)
	ld	a, (iy + 31)
	ld	de, 0
	jp	.LBB2_504
	.local	.LBB2_517
.LBB2_517:
	ld	iy, (ix + 6)
	ld	hl, (iy + 21)
	.local	.LBB2_518
.LBB2_518:
	push	hl
	push	iy
	call	_sbchl
	jp	.LBB2_358
	.local	.LBB2_519
.LBB2_519:
	ld	hl, (ix + 6)
	push	hl
	call	_nextw
                                        ; kill: def $hl killed $hl def $uhl
	ld	(ix - 7), hl
	pop	de
	ld	iy, (ix + 6)
	ld	de, (iy + 21)
	push	de
	push	hl
	jp	.LBB2_276
	.local	.LBB2_520
.LBB2_520:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	pea	iy + 29
	push	iy
	call	_in_r_c
	jp	.LBB2_522
	.local	.LBB2_521
.LBB2_521:
	ld	iy, (ix + 6)
	ld	hl, (iy + 9)
	ld	a, (iy + 31)
	ld	e, (iy + 29)
                                        ; kill: def $e killed $e def $ude
	push	de
	ld	e, a
	push	de
	push	iy
	call	__indcallhl
	pop	hl
	.local	.LBB2_522
.LBB2_522:
	pop	hl
	pop	hl
	ld	d, 0
	ld	iy, (ix + 6)
	jp	.LBB2_79
	.local	.LBB2_523
.LBB2_523:
	ld	iy, (ix + 6)
	ld	hl, (iy + 21)
	.local	.LBB2_524
.LBB2_524:
	push	hl
	push	iy
	call	_adchl
	jp	.LBB2_358
	.local	.LBB2_525
.LBB2_525:
	ld	hl, (ix + 6)
	push	hl
	call	_nextw
                                        ; kill: def $hl killed $hl def $uhl
	ld	(ix - 7), hl
	pop	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_rw
	pop	de
	pop	de
	ld	iy, (ix + 6)
	ld	(iy + 21), l
	ld	(iy + 22), h
	jp	.LBB2_299
	.local	.Lfunc_end2
.Lfunc_end2:
	.size	_exec_opcode, .Lfunc_end2-_exec_opcode
	.section	.rodata._exec_opcode,"a",@progbits
JTI2_0:
	d24	.LBB2_1
	d24	.LBB2_135
	d24	.LBB2_2
	d24	.LBB2_136
	d24	.LBB2_137
	d24	.LBB2_138
	d24	.LBB2_140
	d24	.LBB2_141
	d24	.LBB2_3
	d24	.LBB2_4
	d24	.LBB2_142
	d24	.LBB2_5
	d24	.LBB2_143
	d24	.LBB2_6
	d24	.LBB2_149
	d24	.LBB2_7
	d24	.LBB2_152
	d24	.LBB2_153
	d24	.LBB2_154
	d24	.LBB2_155
	d24	.LBB2_9
	d24	.LBB2_10
	d24	.LBB2_157
	d24	.LBB2_158
	d24	.LBB2_11
	d24	.LBB2_12
	d24	.LBB2_13
	d24	.LBB2_14
	d24	.LBB2_15
	d24	.LBB2_159
	d24	.LBB2_165
	d24	.LBB2_166
	d24	.LBB2_168
	d24	.LBB2_16
	d24	.LBB2_169
	d24	.LBB2_170
	d24	.LBB2_17
	d24	.LBB2_18
	d24	.LBB2_19
	d24	.LBB2_20
	d24	.LBB2_172
	d24	.LBB2_21
	d24	.LBB2_173
	d24	.LBB2_22
	d24	.LBB2_23
	d24	.LBB2_24
	d24	.LBB2_174
	d24	.LBB2_176
	d24	.LBB2_179
	d24	.LBB2_180
	d24	.LBB2_181
	d24	.LBB2_182
	d24	.LBB2_183
	d24	.LBB2_184
	d24	.LBB2_25
	d24	.LBB2_185
	d24	.LBB2_188
	d24	.LBB2_26
	d24	.LBB2_27
	d24	.LBB2_28
	d24	.LBB2_189
	d24	.LBB2_190
	d24	.LBB2_29
	d24	.LBB2_191
	d24	.LBB2_30
	d24	.LBB2_32
	d24	.LBB2_194
	d24	.LBB2_33
	d24	.LBB2_34
	d24	.LBB2_36
	d24	.LBB2_196
	d24	.LBB2_37
	d24	.LBB2_38
	d24	.LBB2_466
	d24	.LBB2_198
	d24	.LBB2_199
	d24	.LBB2_201
	d24	.LBB2_202
	d24	.LBB2_40
	d24	.LBB2_41
	d24	.LBB2_42
	d24	.LBB2_43
	d24	.LBB2_44
	d24	.LBB2_203
	d24	.LBB2_205
	d24	.LBB2_206
	d24	.LBB2_208
	d24	.LBB2_46
	d24	.LBB2_47
	d24	.LBB2_48
	d24	.LBB2_210
	d24	.LBB2_49
	d24	.LBB2_50
	d24	.LBB2_52
	d24	.LBB2_211
	d24	.LBB2_214
	d24	.LBB2_53
	d24	.LBB2_54
	d24	.LBB2_215
	d24	.LBB2_55
	d24	.LBB2_56
	d24	.LBB2_57
	d24	.LBB2_216
	d24	.LBB2_219
	d24	.LBB2_223
	d24	.LBB2_58
	d24	.LBB2_224
	d24	.LBB2_225
	d24	.LBB2_226
	d24	.LBB2_59
	d24	.LBB2_62
	d24	.LBB2_63
	d24	.LBB2_227
	d24	.LBB2_64
	d24	.LBB2_228
	d24	.LBB2_229
	d24	.LBB2_65
	d24	.LBB2_66
	d24	.LBB2_67
	d24	.LBB2_69
	d24	.LBB2_230
	d24	.LBB2_233
	d24	.LBB2_235
	d24	.LBB2_238
	d24	.LBB2_239
	d24	.LBB2_70
	d24	.LBB2_72
	d24	.LBB2_74
	d24	.LBB2_378
	d24	.LBB2_242
	d24	.LBB2_245
	d24	.LBB2_75
	d24	.LBB2_247
	d24	.LBB2_248
	d24	.LBB2_76
	d24	.LBB2_77
	d24	.LBB2_249
	d24	.LBB2_250
	d24	.LBB2_78
	d24	.LBB2_80
	d24	.LBB2_82
	d24	.LBB2_83
	d24	.LBB2_84
	d24	.LBB2_85
	d24	.LBB2_251
	d24	.LBB2_252
	d24	.LBB2_87
	d24	.LBB2_254
	d24	.LBB2_257
	d24	.LBB2_258
	d24	.LBB2_260
	d24	.LBB2_262
	d24	.LBB2_88
	d24	.LBB2_263
	d24	.LBB2_265
	d24	.LBB2_90
	d24	.LBB2_268
	d24	.LBB2_91
	d24	.LBB2_269
	d24	.LBB2_270
	d24	.LBB2_92
	d24	.LBB2_271
	d24	.LBB2_273
	d24	.LBB2_277
	d24	.LBB2_94
	d24	.LBB2_95
	d24	.LBB2_96
	d24	.LBB2_97
	d24	.LBB2_103
	d24	.LBB2_106
	d24	.LBB2_280
	d24	.LBB2_107
	d24	.LBB2_282
	d24	.LBB2_108
	d24	.LBB2_284
	d24	.LBB2_286
	d24	.LBB2_288
	d24	.LBB2_109
	d24	.LBB2_110
	d24	.LBB2_111
	d24	.LBB2_289
	d24	.LBB2_112
	d24	.LBB2_113
	d24	.LBB2_291
	d24	.LBB2_295
	d24	.LBB2_296
	d24	.LBB2_298
	d24	.LBB2_302
	d24	.LBB2_304
	d24	.LBB2_305
	d24	.LBB2_114
	d24	.LBB2_306
	d24	.LBB2_378
	d24	.LBB2_115
	d24	.LBB2_307
	d24	.LBB2_308
	d24	.LBB2_116
	d24	.LBB2_309
	d24	.LBB2_310
	d24	.LBB2_117
	d24	.LBB2_118
	d24	.LBB2_378
	d24	.LBB2_119
	d24	.LBB2_120
	d24	.LBB2_314
	d24	.LBB2_315
	d24	.LBB2_121
	d24	.LBB2_124
	d24	.LBB2_317
	d24	.LBB2_318
	d24	.LBB2_378
	d24	.LBB2_319
	d24	.LBB2_320
	d24	.LBB2_321
	d24	.LBB2_125
	d24	.LBB2_126
	d24	.LBB2_127
	d24	.LBB2_128
	d24	.LBB2_129
	d24	.LBB2_378
	d24	.LBB2_323
	d24	.LBB2_324
	d24	.LBB2_325
	d24	.LBB2_328
	d24	.LBB2_330
	d24	.LBB2_130
	d24	.LBB2_331
	d24	.LBB2_332
	d24	.LBB2_378
	d24	.LBB2_333
	d24	.LBB2_334
	d24	.LBB2_338
	d24	.LBB2_339
	d24	.LBB2_340
	d24	.LBB2_341
	d24	.LBB2_342
	d24	.LBB2_343
	d24	.LBB2_378
	d24	.LBB2_131
	d24	.LBB2_344
	d24	.LBB2_132
	d24	.LBB2_346
	d24	.LBB2_347
	d24	.LBB2_133
	d24	.LBB2_348
	d24	.LBB2_349
	d24	.LBB2_351
	d24	.LBB2_352
	d24	.LBB2_360
	d24	.LBB2_361
	d24	.LBB2_134
	d24	.LBB2_362
	d24	.LBB2_363
	d24	.LBB2_364
	d24	.LBB2_365
	d24	.LBB2_378
JTI2_1:
	d24	.LBB2_382
	d24	.LBB2_434
	d24	.LBB2_435
	d24	.LBB2_436
	d24	.LBB2_61
	d24	.LBB2_61
	d24	.LBB2_61
	d24	.LBB2_61
	d24	.LBB2_437
	d24	.LBB2_438
	d24	.LBB2_439
	d24	.LBB2_440
	d24	.LBB2_61
	d24	.LBB2_61
	d24	.LBB2_61
	d24	.LBB2_61
	d24	.LBB2_441
	d24	.LBB2_442
	d24	.LBB2_445
	d24	.LBB2_446
	d24	.LBB2_61
	d24	.LBB2_61
	d24	.LBB2_61
	d24	.LBB2_61
	d24	.LBB2_447
	d24	.LBB2_451
	d24	.LBB2_455
	d24	.LBB2_459
JTI2_2:
	d24	.LBB2_405
	d24	.LBB2_461
	d24	.LBB2_462
	d24	.LBB2_463
	d24	.LBB2_464
	d24	.LBB2_465
	d24	.LBB2_468
	d24	.LBB2_469
	d24	.LBB2_470
	d24	.LBB2_471
	d24	.LBB2_472
	d24	.LBB2_473
	d24	.LBB2_464
	d24	.LBB2_474
	d24	.LBB2_61
	d24	.LBB2_475
	d24	.LBB2_476
	d24	.LBB2_477
	d24	.LBB2_478
	d24	.LBB2_479
	d24	.LBB2_464
	d24	.LBB2_465
	d24	.LBB2_480
	d24	.LBB2_481
	d24	.LBB2_484
	d24	.LBB2_485
	d24	.LBB2_486
	d24	.LBB2_487
	d24	.LBB2_464
	d24	.LBB2_465
	d24	.LBB2_488
	d24	.LBB2_489
	d24	.LBB2_493
	d24	.LBB2_494
	d24	.LBB2_495
	d24	.LBB2_497
	d24	.LBB2_464
	d24	.LBB2_465
	d24	.LBB2_468
	d24	.LBB2_498
	d24	.LBB2_499
	d24	.LBB2_502
	d24	.LBB2_506
	d24	.LBB2_508
	d24	.LBB2_464
	d24	.LBB2_465
	d24	.LBB2_61
	d24	.LBB2_509
	d24	.LBB2_515
	d24	.LBB2_516
	d24	.LBB2_517
	d24	.LBB2_519
	d24	.LBB2_464
	d24	.LBB2_465
	d24	.LBB2_480
	d24	.LBB2_61
	d24	.LBB2_520
	d24	.LBB2_521
	d24	.LBB2_523
	d24	.LBB2_525
	d24	.LBB2_464
	d24	.LBB2_465
	d24	.LBB2_488
JTI2_3:
	d24	.LBB2_200
	d24	.LBB2_406
	d24	.LBB2_407
	d24	.LBB2_408
	d24	.LBB2_409
	d24	.LBB2_410
	d24	.LBB2_411
	d24	.LBB2_412
JTI2_4:
	d24	.LBB2_413
	d24	.LBB2_415
	d24	.LBB2_417
	d24	.LBB2_418
JTI2_5:
	d24	.LBB2_414
	d24	.LBB2_420
	d24	.LBB2_421
	d24	.LBB2_422
	d24	.LBB2_423
	d24	.LBB2_424
	d24	.LBB2_425
	d24	.LBB2_426
                                        ; -- End function
	.section	.text._nextb,"ax",@progbits
	.type	_nextb,@function                ; -- Begin function nextb
_nextb:                                 ; @nextb
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	de, (iy + 19)
	ld	l, e
	ld	h, d
	inc.sis	hl
	ld	(iy + 19), l
	ld	(iy + 20), h
	ld	hl, (iy)
	ld	bc, (iy + 12)
	push	de
	push	bc
	call	__indcallhl
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end3
.Lfunc_end3:
	.size	_nextb, .Lfunc_end3-_nextb
                                        ; -- End function
	.section	.text._z80_debug_output,"ax",@progbits
	.globl	_z80_debug_output               ; -- Begin function z80_debug_output
	.type	_z80_debug_output,@function
_z80_debug_output:                      ; @z80_debug_output
; %bb.0:
	ld	hl, -21
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, (iy + 19)
	ld	bc, 0
	push	bc
	pop	de
	ld	e, l
	ld	d, h
	ld	(ix - 3), de
	ld	a, (iy + 29)
	push	bc
	pop	hl
	push	bc
	pop	de
	ld	l, a
	ld	c, 8
	call	__ishl
	ld	a, (iy + 46)
	call	__bbitrev
	push	de
	pop	bc
	ld	e, a
	add	hl, de
	ld	(ix - 6), hl
	ld	a, (iy + 30)
	push	bc
	pop	hl
	push	bc
	pop	de
	ld	l, a
	ld	c, 8
	call	__ishl
	ld	a, (iy + 31)
	push	de
	pop	bc
	ld	e, a
	add	hl, de
	ld	(ix - 9), hl
	ld	a, (iy + 32)
	push	bc
	pop	de
	push	de
	pop	hl
	ld	l, a
	ld	c, 8
	call	__ishl
	ld	a, (iy + 33)
	push	de
	pop	bc
	ld	e, a
	add	hl, de
	ld	(ix - 12), hl
	ld	a, (iy + 34)
	push	bc
	pop	hl
	push	bc
	pop	de
	ld	l, a
	ld	c, 8
	call	__ishl
	ld	a, (iy + 35)
	push	de
	pop	bc
	ld	e, a
	add	hl, de
	ld	(ix - 15), hl
	ld	hl, (iy + 21)
	push	bc
	pop	de
	ld	c, l
	ld	b, h
	ld	(ix - 18), bc
	ld	hl, (iy + 23)
	push	de
	pop	bc
	ld	c, l
	ld	b, h
	ld	(ix - 21), bc
	ld	hl, (iy + 25)
	push	de
	pop	bc
	ld	c, l
	ld	b, h
	ld	a, (iy + 44)
	ld	e, a
	ld	a, (iy + 45)
	or	a, a
	sbc	hl, hl
	ld	l, a
	push	hl
	push	de
	push	bc
	ld	hl, (ix - 21)
	push	hl
	ld	hl, (ix - 18)
	push	hl
	ld	hl, (ix - 15)
	push	hl
	ld	hl, (ix - 12)
	push	hl
	ld	hl, (ix - 9)
	push	hl
	ld	hl, (ix - 6)
	push	hl
	ld	hl, (ix - 3)
	push	hl
	ld	hl, _.str
	push	hl
	call	_printf
	ld	hl, 33
	add	hl, sp
	ld	sp, hl
	ld	iy, (ix + 6)
	ld	de, (iy + 19)
	ld	hl, (iy)
	ld	bc, (iy + 12)
	push	de
	push	bc
	call	__indcallhl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	ld	(ix - 3), hl
	ld	l, a
	ld	(ix - 6), hl
	ld	iy, (ix + 6)
	ld	de, (iy + 19)
	inc.sis	de
	ld	hl, (iy)
	ld	bc, (iy + 12)
	push	de
	push	bc
	call	__indcallhl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	(ix - 9), hl
	ld	iy, (ix + 6)
	ld	hl, (iy + 19)
	ld.sis	de, 2
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	ld	hl, (ix - 3)
	ld	l, a
	ld	(ix - 3), hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	hl, (iy + 19)
	ld.sis	de, 3
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	iy, (ix + 6)
	ld	de, (iy + 15)
	ld	a, (iy + 18)
	ld	c, a
	push	bc
	push	de
	push	hl
	ld	hl, (ix - 3)
	push	hl
	ld	hl, (ix - 9)
	push	hl
	ld	hl, (ix - 6)
	push	hl
	ld	hl, _.str.1
	push	hl
	call	_printf
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end4
.Lfunc_end4:
	.size	_z80_debug_output, .Lfunc_end4-_z80_debug_output
                                        ; -- End function
	.section	.text._z80_gen_nmi,"ax",@progbits
	.globl	_z80_gen_nmi                    ; -- Begin function z80_gen_nmi
	.type	_z80_gen_nmi,@function
_z80_gen_nmi:                           ; @z80_gen_nmi
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	set	4, (iy + 50)
	pop	ix
	ret
	.local	.Lfunc_end5
.Lfunc_end5:
	.size	_z80_gen_nmi, .Lfunc_end5-_z80_gen_nmi
                                        ; -- End function
	.section	.text._z80_gen_int,"ax",@progbits
	.globl	_z80_gen_int                    ; -- Begin function z80_gen_int
	.type	_z80_gen_int,@function
_z80_gen_int:                           ; @z80_gen_int
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	a, (ix + 9)
	set	3, (iy + 50)
	ld	(iy + 49), a
	pop	ix
	ret
	.local	.Lfunc_end6
.Lfunc_end6:
	.size	_z80_gen_int, .Lfunc_end6-_z80_gen_int
                                        ; -- End function
	.section	.text._call,"ax",@progbits
	.type	_call,@function                 ; -- Begin function call
_call:                                  ; @call
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	hl, (iy + 19)
	push	hl
	push	iy
	call	_pushw
	pop	hl
	pop	hl
	ld	hl, (ix + 9)
	ld	iy, (ix + 6)
	ld	(iy + 19), l
	ld	(iy + 20), h
	ld	(iy + 27), l
	ld	(iy + 28), h
	pop	ix
	ret
	.local	.Lfunc_end7
.Lfunc_end7:
	.size	_call, .Lfunc_end7-_call
                                        ; -- End function
	.section	.text._rw,"ax",@progbits
	.type	_rw,@function                   ; -- Begin function rw
_rw:                                    ; @rw
; %bb.0:
	ld	hl, -4
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, (iy)
	ld	de, (iy + 12)
	ld	bc, (ix + 9)
                                        ; kill: def $bc killed $bc killed $ubc def $ubc
	inc.sis	bc
	push	bc
	push	de
	call	__indcallhl
	ld	e, a
	pop	hl
	pop	hl
	ld	d, 0
	ld	(ix - 4), e
	ld	(ix - 3), d
	ld	l, d
	ld	h, e
	ld	(ix - 2), l
	ld	(ix - 1), h
	ld	iy, (ix + 6)
	ld	hl, (iy)
	ld	de, (iy + 12)
	ld	bc, (ix + 9)
	push	bc
	push	de
	call	__indcallhl
	ld	e, (ix - 4)
	ld	d, (ix - 3)
	ld	e, a
	pop	hl
	pop	hl
	ld	l, (ix - 2)
	ld	h, (ix - 1)
	add.sis	hl, de
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end8
.Lfunc_end8:
	.size	_rw, .Lfunc_end8-_rw
                                        ; -- End function
	.section	.text._pushw,"ax",@progbits
	.type	_pushw,@function                ; -- Begin function pushw
_pushw:                                 ; @pushw
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	de, (ix + 9)
	ld.sis	bc, -2
	ld	hl, (iy + 21)
	add.sis	hl, bc
	ld	(iy + 21), l
	ld	(iy + 22), h
	push	de
	push	hl
	push	iy
	call	_ww
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end9
.Lfunc_end9:
	.size	_pushw, .Lfunc_end9-_pushw
                                        ; -- End function
	.section	.text._ww,"ax",@progbits
	.type	_ww,@function                   ; -- Begin function ww
_ww:                                    ; @ww
; %bb.0:
	ld	hl, -12
	call	__frameset
	ld	iy, (ix + 6)
	ld	(ix - 9), iy
	ld	bc, (ix + 9)
	ld	(ix - 12), bc
	ld	hl, (ix + 12)
	ld	(ix - 3), hl
	ld	de, (iy + 3)
	ld	(ix - 6), de
	ld	de, (iy + 12)
	push	hl
	push	bc
	push	de
	ld	hl, (ix - 6)
	call	__indcallhl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 9)
	ld	hl, (iy + 3)
	ld	(ix - 6), hl
	ld	de, (iy + 12)
	ld	bc, (ix - 12)
	inc.sis	bc
	ld	hl, (ix - 3)
	ld	a, h
	ld	(ix + 6), de
	ld	(ix + 9), c
	ld	(ix + 10), b
	ld	(ix + 12), a
	ld	hl, (ix - 6)
	ld	sp, ix
	pop	ix
	jp	(hl)
	.local	.Lfunc_end10
.Lfunc_end10:
	.size	_ww, .Lfunc_end10-_ww
                                        ; -- End function
	.section	.text._nextw,"ax",@progbits
	.type	_nextw,@function                ; -- Begin function nextw
_nextw:                                 ; @nextw
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld.sis	de, 2
	ld	bc, (iy + 19)
	ld	l, c
	ld	h, b
	add.sis	hl, de
	ld	(iy + 19), l
	ld	(iy + 20), h
	push	bc
	push	iy
	call	_rw
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end11
.Lfunc_end11:
	.size	_nextw, .Lfunc_end11-_nextw
                                        ; -- End function
	.section	.text._addb,"ax",@progbits
	.type	_addb,@function                 ; -- Begin function addb
_addb:                                  ; @addb
; %bb.0:
	ld	hl, -5
	call	__frameset
	ld	h, (ix + 9)
	ld	a, (ix + 12)
	ld	c, (ix + 15)
	ld	b, 7
	ld	l, 0
	ld	d, 1
	ld	iy, 0
	add	a, h
	ld	e, a
	ld	a, c
	and	a, d
	ld	d, a
	ld	a, e
	add	a, d
	ld	d, a
	call	__bshru
	ld	e, a
	ld	(ix - 4), d                     ; 1-byte Folded Spill
	ld	a, d
	or	a, a
	jr	z, .LBB12_2
; %bb.1:
	ld	a, l
	jr	.LBB12_3
	.local	.LBB12_2
.LBB12_2:
	ld	a, 2
	.local	.LBB12_3
.LBB12_3:
	add	a, e
	ld	l, a
	ld	(ix - 5), l
	lea	de, iy + 0
	ld	e, h
	push	af
	ld	a, (ix + 12)
	ld	iyl, a
	pop	af
	lea	hl, iy + 0
	add	hl, de
	ld	(ix - 3), hl
	ld	bc, 1
	ld	l, (ix + 15)
	call	__iand
	push	hl
	pop	bc
	ld	hl, (ix - 3)
	add	hl, bc
	ld	(ix - 3), hl
	lea	hl, iy + 0
	push	de
	pop	bc
	call	__ixor
	ld	bc, (ix - 3)
	call	__ixor
	ld	a, l
	srl	a
	ld	e, 8
	and	a, e
	ld	iyh, a
	ld	e, -128
	ld	a, l
	and	a, e
	ld	e, a
	ld	hl, (ix - 3)
	ld	bc, 256
	call	__iand
	ld	a, h
	ld	bc, 0
	ld	c, b
	cp	a, c
	ld	c, -1
	ld	iyl, c
	jr	nz, .LBB12_5
; %bb.4:
	ld	iyl, b
	.local	.LBB12_5
.LBB12_5:
	ld	a, e
	or	a, a
	jr	nz, .LBB12_7
; %bb.6:
	ld	c, b
	.local	.LBB12_7
.LBB12_7:
	ld	e, 16
	ld	b, 3
	ld	a, iyl
	xor	a, c
	ld	c, a
	bit	0, c
	jr	nz, .LBB12_9
; %bb.8:
	ld	d, 0
	jr	.LBB12_10
	.local	.LBB12_9
.LBB12_9:
	ld	d, 32
	.local	.LBB12_10
.LBB12_10:
	ld	c, 1
	call	__ishru
                                        ; kill: def $l killed $l killed $uhl
	ld	h, (ix - 4)                     ; 1-byte Folded Reload
	ld	a, h
	add	a, a
	and	a, e
	ld	e, a
	ld	a, h
	call	__bshru
	ld	c, 4
	and	a, c
	ld	c, a
	ld	a, (ix - 5)
	add	a, e
	ld	e, a
	ld	a, e
	add	a, c
	ld	e, a
	ld	a, e
	add	a, l
	ld	l, a
	ld	e, iyh
	ld	a, l
	add	a, e
	ld	l, a
	ld	a, l
	or	a, d
	ld	l, a
	ld	iy, (ix + 6)
	ld	(iy + 46), l
	ld	a, h
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end12
.Lfunc_end12:
	.size	_addb, .Lfunc_end12-_addb
                                        ; -- End function
	.section	.text._subb,"ax",@progbits
	.type	_subb,@function                 ; -- Begin function subb
_subb:                                  ; @subb
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	l, (ix + 9)
	ld	a, (ix + 12)
	ld	e, (ix + 15)
	ld	c, -1
	ld	h, 1
	xor	a, c
	ld	c, a
	ld	a, e
	xor	a, h
	ld	e, a
	push	de
	push	bc
                                        ; kill: def $l killed $l def $uhl
	push	hl
	push	iy
	call	_addb
	ld	l, a
	pop	de
	pop	de
	pop	de
	pop	de
	ld	iy, (ix + 6)
	ld	a, (iy + 46)
	ld	e, -65
	and	a, e
	ld	e, a
	ld	c, -56
	ld	a, e
	xor	a, c
	ld	e, a
	ld	(iy + 46), e
	ld	a, l
	pop	ix
	ret
	.local	.Lfunc_end13
.Lfunc_end13:
	.size	_subb, .Lfunc_end13-_subb
                                        ; -- End function
	.section	.text._addhl,"ax",@progbits
	.type	_addhl,@function                ; -- Begin function addhl
_addhl:                                 ; @addhl
; %bb.0:
	ld	hl, -1
	call	__frameset
	ld	iy, (ix + 6)
	ld	bc, (ix + 9)
	ld	a, (iy + 46)
	ld	(ix - 1), a
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	de, 0
	push	de
	push	bc
	push	hl
	push	iy
	call	_addw
	pop	de
	pop	de
	pop	de
	pop	de
	ld	a, h
	ld	iy, (ix + 6)
	ld	(iy + 34), a
	ld	a, l
	ld	(iy + 35), a
	ld	a, (iy + 46)
	ld	l, -36
	and	a, l
	ld	l, a
	ld	e, 35
	ld	a, (ix - 1)
	and	a, e
	ld	e, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	(iy + 46), l
	inc	sp
	pop	ix
	ret
	.local	.Lfunc_end14
.Lfunc_end14:
	.size	_addhl, .Lfunc_end14-_addhl
                                        ; -- End function
	.section	.text._inc,"ax",@progbits
	.type	_inc,@function                  ; -- Begin function inc
_inc:                                   ; @inc
; %bb.0:
	ld	hl, -1
	call	__frameset
	ld	iy, (ix + 6)
	ld	l, (ix + 9)
	ld	e, -128
	ld	a, (iy + 46)
	and	a, e
	ld	e, a
	ld	(ix - 1), e
	ld	de, 0
	push	de
	inc	de
	push	de
                                        ; kill: def $l killed $l def $uhl
	push	hl
	push	iy
	call	_addb
	ld	l, a
	pop	de
	pop	de
	pop	de
	pop	de
	ld	iy, (ix + 6)
	ld	a, (iy + 46)
	ld	e, 127
	and	a, e
	ld	e, a
	ld	c, (ix - 1)
	ld	a, e
	add	a, c
	ld	e, a
	ld	(iy + 46), e
	ld	a, l
	inc	sp
	pop	ix
	ret
	.local	.Lfunc_end15
.Lfunc_end15:
	.size	_inc, .Lfunc_end15-_inc
                                        ; -- End function
	.section	.text._dec,"ax",@progbits
	.type	_dec,@function                  ; -- Begin function dec
_dec:                                   ; @dec
; %bb.0:
	ld	hl, -1
	call	__frameset
	ld	iy, (ix + 6)
	ld	l, (ix + 9)
	ld	e, -128
	ld	a, (iy + 46)
	and	a, e
	ld	e, a
	ld	(ix - 1), e
	ld	de, 0
	push	de
	inc	de
	push	de
                                        ; kill: def $l killed $l def $uhl
	push	hl
	push	iy
	call	_subb
	ld	l, a
	pop	de
	pop	de
	pop	de
	pop	de
	ld	iy, (ix + 6)
	ld	a, (iy + 46)
	ld	e, 127
	and	a, e
	ld	e, a
	ld	c, (ix - 1)
	ld	a, e
	add	a, c
	ld	e, a
	ld	(iy + 46), e
	ld	a, l
	inc	sp
	pop	ix
	ret
	.local	.Lfunc_end16
.Lfunc_end16:
	.size	_dec, .Lfunc_end16-_dec
                                        ; -- End function
	.section	.text._land,"ax",@progbits
	.type	_land,@function                 ; -- Begin function land
_land:                                  ; @land
; %bb.0:
	ld	hl, -3
	call	__frameset
	ld	iy, (ix + 6)
	ld	l, (ix + 9)
	ld	b, 7
	ld	e, 0
	ld	a, (iy + 29)
	and	a, l
	ld	l, a
	call	__bshru
	ld	(ix - 2), a                     ; 1-byte Folded Spill
	ld	a, l
	or	a, a
	jr	z, .LBB17_2
; %bb.1:
	ld	(ix - 3), e                     ; 1-byte Folded Spill
	jr	.LBB17_3
	.local	.LBB17_2
.LBB17_2:
	ld	a, 2
	ld	(ix - 3), a
	.local	.LBB17_3
.LBB17_3:
	ld	(ix - 1), l                     ; 1-byte Folded Spill
                                        ; kill: def $l killed $l def $uhl
	push	hl
	call	_parity
	pop	hl
	bit	0, a
	jr	nz, .LBB17_5
; %bb.4:
	ld	c, 0
	jr	.LBB17_6
	.local	.LBB17_5
.LBB17_5:
	ld	c, 32
	.local	.LBB17_6
.LBB17_6:
	ld	h, (ix - 1)                     ; 1-byte Folded Reload
	ld	a, h
	add	a, a
	ld	l, 16
	and	a, l
	ld	l, a
	ld	a, h
	ld	b, 3
	call	__bshru
	ld	e, 4
	and	a, e
	ld	e, a
	ld	a, (ix - 2)
	add	a, c
	ld	c, a
	ld	d, (ix - 3)
	ld	a, c
	add	a, d
	ld	c, a
	ld	a, c
	add	a, l
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	e, 8
	ld	a, l
	add	a, e
	ld	l, a
	ld	de, (ix + 6)
	push	de
	pop	iy
	ld	(iy + 46), l
	ld	(iy + 29), h
	pop	hl
	pop	ix
	ret
	.local	.Lfunc_end17
.Lfunc_end17:
	.size	_land, .Lfunc_end17-_land
                                        ; -- End function
	.section	.text._lxor,"ax",@progbits
	.type	_lxor,@function                 ; -- Begin function lxor
_lxor:                                  ; @lxor
; %bb.0:
	ld	hl, -3
	call	__frameset
	ld	iy, (ix + 6)
	ld	l, (ix + 9)
	ld	b, 7
	ld	e, 0
	ld	a, (iy + 29)
	xor	a, l
	ld	l, a
	call	__bshru
	ld	(ix - 2), a                     ; 1-byte Folded Spill
	ld	a, l
	or	a, a
	jr	z, .LBB18_2
; %bb.1:
	ld	(ix - 3), e                     ; 1-byte Folded Spill
	jr	.LBB18_3
	.local	.LBB18_2
.LBB18_2:
	ld	a, 2
	ld	(ix - 3), a
	.local	.LBB18_3
.LBB18_3:
	ld	(ix - 1), l                     ; 1-byte Folded Spill
                                        ; kill: def $l killed $l def $uhl
	push	hl
	call	_parity
	pop	hl
	bit	0, a
	jr	nz, .LBB18_5
; %bb.4:
	ld	c, 0
	jr	.LBB18_6
	.local	.LBB18_5
.LBB18_5:
	ld	c, 32
	.local	.LBB18_6
.LBB18_6:
	ld	h, (ix - 1)                     ; 1-byte Folded Reload
	ld	a, h
	add	a, a
	ld	l, 16
	and	a, l
	ld	l, a
	ld	a, h
	ld	b, 3
	call	__bshru
	ld	e, 4
	and	a, e
	ld	e, a
	ld	d, (ix - 2)
	ld	a, c
	add	a, d
	ld	c, a
	ld	d, (ix - 3)
	ld	a, c
	add	a, d
	ld	c, a
	ld	a, c
	add	a, l
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	de, (ix + 6)
	push	de
	pop	iy
	ld	(iy + 46), l
	ld	(iy + 29), h
	pop	hl
	pop	ix
	ret
	.local	.Lfunc_end18
.Lfunc_end18:
	.size	_lxor, .Lfunc_end18-_lxor
                                        ; -- End function
	.section	.text._lor,"ax",@progbits
	.type	_lor,@function                  ; -- Begin function lor
_lor:                                   ; @lor
; %bb.0:
	ld	hl, -3
	call	__frameset
	ld	iy, (ix + 6)
	ld	l, (ix + 9)
	ld	b, 7
	ld	e, 0
	ld	a, (iy + 29)
	or	a, l
	ld	l, a
	call	__bshru
	ld	(ix - 2), a                     ; 1-byte Folded Spill
	ld	a, l
	or	a, a
	jr	z, .LBB19_2
; %bb.1:
	ld	(ix - 3), e                     ; 1-byte Folded Spill
	jr	.LBB19_3
	.local	.LBB19_2
.LBB19_2:
	ld	a, 2
	ld	(ix - 3), a
	.local	.LBB19_3
.LBB19_3:
	ld	(ix - 1), l                     ; 1-byte Folded Spill
                                        ; kill: def $l killed $l def $uhl
	push	hl
	call	_parity
	pop	hl
	bit	0, a
	jr	nz, .LBB19_5
; %bb.4:
	ld	c, 0
	jr	.LBB19_6
	.local	.LBB19_5
.LBB19_5:
	ld	c, 32
	.local	.LBB19_6
.LBB19_6:
	ld	h, (ix - 1)                     ; 1-byte Folded Reload
	ld	a, h
	add	a, a
	ld	l, 16
	and	a, l
	ld	l, a
	ld	a, h
	ld	b, 3
	call	__bshru
	ld	e, 4
	and	a, e
	ld	e, a
	ld	d, (ix - 2)
	ld	a, c
	add	a, d
	ld	c, a
	ld	d, (ix - 3)
	ld	a, c
	add	a, d
	ld	c, a
	ld	a, c
	add	a, l
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	de, (ix + 6)
	push	de
	pop	iy
	ld	(iy + 46), l
	ld	(iy + 29), h
	pop	hl
	pop	ix
	ret
	.local	.Lfunc_end19
.Lfunc_end19:
	.size	_lor, .Lfunc_end19-_lor
                                        ; -- End function
	.section	.text._cp,"ax",@progbits
	.type	_cp,@function                   ; -- Begin function cp
_cp:                                    ; @cp
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	a, (iy + 29)
	or	a, a
	sbc	hl, hl
	push	hl
	ld	l, (ix + 9)
	push	hl
	ld	l, a
	push	hl
	push	iy
	call	_subb
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	l, (iy + 46)
	ld	a, (ix + 9)
	ld	b, 3
	call	__bshru
	ld	e, 4
	and	a, e
	ld	e, a
	ld	c, -21
	ld	a, l
	and	a, c
	ld	l, a
	ld	a, (ix + 9)
	add	a, a
	ld	c, 16
	and	a, c
	ld	c, a
	ld	a, c
	add	a, e
	ld	e, a
	ld	a, e
	add	a, l
	ld	l, a
	ld	(iy + 46), l
	pop	ix
	ret
	.local	.Lfunc_end20
.Lfunc_end20:
	.size	_cp, .Lfunc_end20-_cp
                                        ; -- End function
	.section	.text._cond_jump,"ax",@progbits
	.type	_cond_jump,@function            ; -- Begin function cond_jump
_cond_jump:                             ; @cond_jump
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	push	hl
	call	_nextw
	ld	iy, (ix + 6)
	pop	de
	bit	0, (ix + 9)
	jr	z, .LBB21_2
; %bb.1:
	ld	(iy + 19), l
	ld	(iy + 20), h
	.local	.LBB21_2
.LBB21_2:
	ld	(iy + 27), l
	ld	(iy + 28), h
	pop	ix
	ret
	.local	.Lfunc_end21
.Lfunc_end21:
	.size	_cond_jump, .Lfunc_end21-_cond_jump
                                        ; -- End function
	.section	.text._cond_jr,"ax",@progbits
	.type	_cond_jr,@function              ; -- Begin function cond_jr
_cond_jr:                               ; @cond_jr
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	bit	0, (ix + 9)
	jr	z, .LBB22_2
; %bb.1:
	ld	bc, 5
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	iy, (ix + 6)
	ld	hl, (iy + 19)
	add.sis	hl, de
	ld	(iy + 19), l
	ld	(iy + 20), h
	ld	(iy + 27), l
	ld	(iy + 28), h
	lea	de, iy + 15
	ld	hl, (iy + 15)
	push	de
	pop	iy
	lea	iy, iy + 3
	ld	e, (iy)
	xor	a, a
	call	__ladd
	ld	iy, (ix + 6)
	ld	(iy + 15), hl
	ld	(iy + 18), e
	.local	.LBB22_2
.LBB22_2:
	pop	ix
	ret
	.local	.Lfunc_end22
.Lfunc_end22:
	.size	_cond_jr, .Lfunc_end22-_cond_jr
                                        ; -- End function
	.section	.text._cond_call,"ax",@progbits
	.type	_cond_call,@function            ; -- Begin function cond_call
_cond_call:                             ; @cond_call
; %bb.0:
	ld	hl, -3
	call	__frameset
	ld	hl, (ix + 6)
	push	hl
	call	_nextw
	ld	e, l
	ld	d, h
	pop	hl
	bit	0, (ix + 9)
	jr	z, .LBB23_2
; %bb.1:
	push	de
	ld	hl, (ix + 6)
	push	hl
	ld	(ix - 3), de
	call	_call
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	lea	de, iy + 15
	ld	hl, (iy + 15)
	push	de
	pop	iy
	lea	iy, iy + 3
	ld	e, (iy)
	ld	bc, 7
	xor	a, a
	call	__ladd
	ld	iy, (ix + 6)
	ld	(iy + 15), hl
	ld	(iy + 18), e
	ld	de, (ix - 3)
	.local	.LBB23_2
.LBB23_2:
	ld	iy, (ix + 6)
	ld	(iy + 27), e
	ld	(iy + 28), d
	pop	hl
	pop	ix
	ret
	.local	.Lfunc_end23
.Lfunc_end23:
	.size	_cond_call, .Lfunc_end23-_cond_call
                                        ; -- End function
	.section	.text._ret,"ax",@progbits
	.type	_ret,@function                  ; -- Begin function ret
_ret:                                   ; @ret
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	push	hl
	call	_popw
	pop	de
	ld	iy, (ix + 6)
	ld	(iy + 19), l
	ld	(iy + 20), h
	ld	(iy + 27), l
	ld	(iy + 28), h
	pop	ix
	ret
	.local	.Lfunc_end24
.Lfunc_end24:
	.size	_ret, .Lfunc_end24-_ret
                                        ; -- End function
	.section	.text._cond_ret,"ax",@progbits
	.type	_cond_ret,@function             ; -- Begin function cond_ret
_cond_ret:                              ; @cond_ret
; %bb.0:
	call	__frameset0
	bit	0, (ix + 9)
	jr	z, .LBB25_2
; %bb.1:
	ld	hl, (ix + 6)
	push	hl
	call	_ret
	pop	hl
	ld	iy, (ix + 6)
	lea	de, iy + 15
	ld	hl, (iy + 15)
	push	de
	pop	iy
	lea	iy, iy + 3
	ld	e, (iy)
	ld	bc, 6
	xor	a, a
	call	__ladd
	ld	iy, (ix + 6)
	ld	(iy + 15), hl
	ld	(iy + 18), e
	.local	.LBB25_2
.LBB25_2:
	pop	ix
	ret
	.local	.Lfunc_end25
.Lfunc_end25:
	.size	_cond_ret, .Lfunc_end25-_cond_ret
                                        ; -- End function
	.section	.text._popw,"ax",@progbits
	.type	_popw,@function                 ; -- Begin function popw
_popw:                                  ; @popw
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld.sis	de, 2
	ld	bc, (iy + 21)
	ld	l, c
	ld	h, b
	add.sis	hl, de
	ld	(iy + 21), l
	ld	(iy + 22), h
	push	bc
	push	iy
	call	_rw
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end26
.Lfunc_end26:
	.size	_popw, .Lfunc_end26-_popw
                                        ; -- End function
	.section	.text._exec_opcode_ddfd,"ax",@progbits
	.type	_exec_opcode_ddfd,@function     ; -- Begin function exec_opcode_ddfd
_exec_opcode_ddfd:                      ; @exec_opcode_ddfd
; %bb.0:
	ld	hl, -16
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, _cyc_ddfd
	ld	d, 0
	ld	bc, 0
	ld	c, (ix + 9)
	add	hl, bc
	ld	a, (hl)
	ld	(ix - 1), d
	ld	bc, (ix - 3)
	ld	(ix - 4), e
	ld	(ix - 3), d
	ld	b, d
	ld	c, a
	or	a, a
	sbc	hl, hl
	ld	a, l
	lea	de, iy + 15
	ld	hl, (iy + 15)
	push	de
	pop	iy
	lea	iy, iy + 3
	ld	(ix - 7), iy
	ld	e, (iy)
	ld	iy, (ix + 6)
	call	__ladd
	ld	c, (ix + 9)
	ld	(iy + 15), hl
	ld	(iy + 18), e
	ld	l, (iy + 45)
	ld	e, -128
	ld	a, l
	and	a, e
	ld	e, a
	inc	l
	ld	h, 127
	ld	a, l
	and	a, h
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	(iy + 45), l
	ld	l, 124
	ld	a, c
	add	a, l
	ld	l, a
	cp	a, 59
	jp	c, .LBB27_5
; %bb.1:
	ld	h, 7
	ld	a, c
	cp	a, -53
	jp	nz, .LBB27_7
; %bb.2:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 10), hl
	push	iy
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 10)
	add.sis	hl, de
	ld	(ix - 10), hl
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	iy
	call	_nextb
	ld	(ix - 11), a                    ; 1-byte Folded Spill
	pop	hl
	ld	iy, (ix + 6)
	ld	hl, (iy)
	ld	de, (iy + 12)
	ld	bc, (ix - 10)
	push	bc
	push	de
	call	__indcallhl
	ld	iyl, a
	pop	hl
	pop	hl
	ld	a, (ix - 11)                    ; 1-byte Folded Reload
	ld	b, 6
	call	__bshru
	ld	l, a
	ld	a, (ix - 11)                    ; 1-byte Folded Reload
	ld	b, 3
	call	__bshru
	ld	e, 7
	and	a, e
	ld	c, a
	ld	a, (ix - 11)
	and	a, e
	ld	e, a
	ld	(ix - 14), e
	ld	de, 0
	ld	(ix - 11), l                    ; 1-byte Folded Spill
	ld	e, l
	ld	hl, JTI27_3
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB27_3
.LBB27_3:
	ld	de, 0
	ld	e, c
	ld	hl, JTI27_4
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB27_4
.LBB27_4:
	push	iy
	ld	hl, (ix + 6)
	push	hl
	call	_cb_rlc
	jp	.LBB27_87
	.local	.LBB27_5
.LBB27_5:
	ld	iyl, c
	ld	de, 0
	ld	e, l
	ld	hl, JTI27_0
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB27_6
.LBB27_6:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	a, (iy + 29)
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	l, h
	ld	de, 0
	jp	.LBB27_62
	.local	.LBB27_7
.LBB27_7:
	ld	l, 31
	ld	a, c
	add	a, l
	ld	l, a
	cp	a, 9
	ld	de, 0
	jr	c, .LBB27_11
; %bb.8:
	ld	iyl, c
	ld	a, c
	add	a, h
	ld	l, a
	cp	a, -122
	jr	nc, .LBB27_14
; %bb.9:
	ld.sis	bc, 255
	ld	e, l
	ld	hl, JTI27_2
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB27_10
.LBB27_10:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	iy, (ix + 6)
	ld	(iy + 21), l
	ld	(iy + 22), h
	jp	.LBB27_177
	.local	.LBB27_11
.LBB27_11:
	ld	iyl, c
	ld	e, l
	ld	hl, JTI27_1
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB27_12
.LBB27_12:
	ld	hl, (ix + 6)
	push	hl
	call	_popw
	.local	.LBB27_13
.LBB27_13:
	pop	de
	jp	.LBB27_156
	.local	.LBB27_14
.LBB27_14:
	ex	de, hl
	ld	e, iyl
	ex	de, hl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_exec_opcode
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	l, (iy + 45)
	ld	e, -128
	ld	a, l
	and	a, e
	ld	e, a
	ld	a, 127
	ld	c, a
	ld	a, l
	add	a, c
	ld	l, a
	ld	a, l
	and	a, c
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	(iy + 45), l
	jp	.LBB27_177
	.local	.LBB27_15
.LBB27_15:
	push	bc
	push	iy
	ld	hl, (ix + 6)
	push	hl
	call	_cb_bit
	ld	iy, (ix + 6)
	ld	(ix - 15), a                    ; 1-byte Folded Spill
	pop	hl
	pop	hl
	pop	hl
	ld	b, (iy + 46)
	ld	c, 11
	ld	de, (ix - 10)
	ld	l, e
	ld	h, d
	call	__sshru
	ld	c, 4
	ld	a, l
	and	a, c
	ld	l, a
	ld	(ix - 16), l
	ld	l, -21
	ld	a, b
	and	a, l
	ld	b, a
	ld	c, 7
	ld	l, e
	ld	h, d
	call	__sshru
	ld	e, 16
	ld	a, l
	and	a, e
	ld	l, a
	ld	e, (ix - 16)
	ld	a, l
	add	a, e
	ld	l, a
	ld	a, l
	add	a, b
	ld	l, a
	ld	b, (ix - 15)                    ; 1-byte Folded Reload
	ld	(iy + 46), l
	jp	.LBB27_88
	.local	.LBB27_16
.LBB27_16:
	ld	l, -1
	ld	a, 1
	ld	b, c
	call	__bshl
	xor	a, l
	ld	l, a
	ld	a, iyl
	and	a, l
	jr	.LBB27_18
	.local	.LBB27_17
.LBB27_17:
	ld	a, 1
	ld	b, c
	call	__bshl
	ld	l, a
	ld	a, iyl
	or	a, l
	.local	.LBB27_18
.LBB27_18:
	ld	b, a
	ld	iy, (ix + 6)
	jp	.LBB27_88
	.local	.LBB27_19
.LBB27_19:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	hl, (iy + 21)
	push	hl
	push	iy
	call	_rw
	ld	(ix - 4), l
	ld	(ix - 3), h
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	hl, (iy + 21)
	lea	bc, iy + 0
	ld	iy, (ix + 12)
	ld	de, (iy)
	push	de
	push	hl
	push	bc
	pop	hl
	push	hl
	call	_ww
	pop	hl
	pop	hl
	pop	hl
	ld	e, (ix - 4)
	ld	d, (ix - 3)
	ld	hl, (ix + 12)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	iy, (ix + 6)
	ld	(iy + 27), e
	ld	(iy + 28), d
	jp	.LBB27_177
	.local	.LBB27_20
.LBB27_20:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_pushw
	jp	.LBB27_176
	.local	.LBB27_21
.LBB27_21:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	iy, (ix + 6)
	ld	(iy + 19), l
	ld	(iy + 20), h
	ld	(iy + 27), l
	ld	(iy + 28), h
	jp	.LBB27_177
	.local	.LBB27_22
.LBB27_22:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	a, (iy + 29)
	ld	hl, (ix + 12)
	ld	l, (hl)
	ld	de, 0
	push	de
                                        ; kill: def $l killed $l def $uhl
	jp	.LBB27_63
	.local	.LBB27_23
.LBB27_23:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	a, (iy + 29)
	ld	(ix - 4), a
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 7), hl
	push	iy
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 7)
	add.sis	hl, de
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	hl
	pop	bc
	ld	hl, (iy)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	ld	l, a
	pop	de
	pop	de
	ld	de, 0
	push	de
	push	hl
	ld	l, (ix - 4)                     ; 1-byte Folded Reload
	jp	.LBB27_57
	.local	.LBB27_24
.LBB27_24:
	ld	iy, (ix + 6)
	ld	a, (iy + 29)
	ld	(ix - 4), a
	ld	hl, (ix + 12)
	ld	de, (hl)
	ld	e, d
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB27_55
; %bb.25:
	ld	bc, 0
	jp	.LBB27_56
	.local	.LBB27_26
.LBB27_26:
	ld	iy, (ix + 6)
	ld	d, (iy + 29)
	ld	hl, (ix + 12)
	ld	e, (hl)
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB27_58
; %bb.27:
	ld	bc, 0
	jp	.LBB27_59
	.local	.LBB27_28
.LBB27_28:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	a, (iy + 29)
	ld	(ix - 7), a
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	push	iy
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	hl
	pop	bc
	ld	hl, (iy)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	ld	iy, (ix + 6)
	ld	l, a
	pop	de
	pop	de
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB27_60
; %bb.29:
	ld	de, 0
	jp	.LBB27_61
	.local	.LBB27_30
.LBB27_30:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	a, (iy + 29)
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	l, h
	ld	de, 0
	jp	.LBB27_73
	.local	.LBB27_31
.LBB27_31:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	a, (iy + 29)
	ld	hl, (ix + 12)
	ld	l, (hl)
	ld	de, 0
	push	de
                                        ; kill: def $l killed $l def $uhl
	jp	.LBB27_74
	.local	.LBB27_32
.LBB27_32:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	a, (iy + 29)
	ld	(ix - 4), a
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 7), hl
	push	iy
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 7)
	add.sis	hl, de
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	hl
	pop	bc
	ld	hl, (iy)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	ld	l, a
	pop	de
	pop	de
	ld	de, 0
	push	de
	push	hl
	ld	l, (ix - 4)                     ; 1-byte Folded Reload
	jp	.LBB27_68
	.local	.LBB27_33
.LBB27_33:
	ld	iy, (ix + 6)
	ld	a, (iy + 29)
	ld	(ix - 4), a
	ld	hl, (ix + 12)
	ld	de, (hl)
	ld	e, d
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB27_66
; %bb.34:
	ld	bc, 0
	jp	.LBB27_67
	.local	.LBB27_35
.LBB27_35:
	ld	iy, (ix + 6)
	ld	d, (iy + 29)
	ld	hl, (ix + 12)
	ld	e, (hl)
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB27_69
; %bb.36:
	ld	bc, 0
	jp	.LBB27_70
	.local	.LBB27_37
.LBB27_37:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	a, (iy + 29)
	ld	(ix - 7), a
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	push	iy
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	hl
	pop	bc
	ld	hl, (iy)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	ld	iy, (ix + 6)
	ld	l, a
	pop	de
	pop	de
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB27_71
; %bb.38:
	ld	de, 0
	jp	.LBB27_72
	.local	.LBB27_39
.LBB27_39:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	l, h
	jr	.LBB27_42
	.local	.LBB27_40
.LBB27_40:
	ld	hl, (ix + 12)
	ld	a, (hl)
	ld	l, a
	jr	.LBB27_42
	.local	.LBB27_41
.LBB27_41:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	hl
	pop	bc
	ld	hl, (iy)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	ld	l, a
	pop	de
	pop	de
	.local	.LBB27_42
.LBB27_42:
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_land
	jp	.LBB27_176
	.local	.LBB27_43
.LBB27_43:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	l, h
	jr	.LBB27_46
	.local	.LBB27_44
.LBB27_44:
	ld	hl, (ix + 12)
	ld	a, (hl)
	ld	l, a
	jr	.LBB27_46
	.local	.LBB27_45
.LBB27_45:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	hl
	pop	bc
	ld	hl, (iy)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	ld	l, a
	pop	de
	pop	de
	.local	.LBB27_46
.LBB27_46:
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_lxor
	jp	.LBB27_176
	.local	.LBB27_47
.LBB27_47:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	l, h
	jr	.LBB27_50
	.local	.LBB27_48
.LBB27_48:
	ld	hl, (ix + 12)
	ld	a, (hl)
	ld	l, a
	jr	.LBB27_50
	.local	.LBB27_49
.LBB27_49:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	hl
	pop	bc
	ld	hl, (iy)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	ld	l, a
	pop	de
	pop	de
	.local	.LBB27_50
.LBB27_50:
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_lor
	jp	.LBB27_176
	.local	.LBB27_51
.LBB27_51:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	l, h
	jr	.LBB27_54
	.local	.LBB27_52
.LBB27_52:
	ld	hl, (ix + 12)
	ld	a, (hl)
	ld	l, a
	jr	.LBB27_54
	.local	.LBB27_53
.LBB27_53:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	hl
	pop	bc
	ld	hl, (iy)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	ld	l, a
	pop	de
	pop	de
	.local	.LBB27_54
.LBB27_54:
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_cp
	jp	.LBB27_176
	.local	.LBB27_55
.LBB27_55:
	ld	bc, -1
	.local	.LBB27_56
.LBB27_56:
	push	af
	ld	a, (ix - 4)                     ; 1-byte Folded Reload
	ld	iyl, a
	pop	af
	push	bc
	push	de
	ex	de, hl
	ld	e, iyl
	ex	de, hl
	.local	.LBB27_57
.LBB27_57:
	push	hl
	ld	hl, (ix + 6)
	push	hl
	jp	.LBB27_65
	.local	.LBB27_58
.LBB27_58:
	ld	bc, -1
	.local	.LBB27_59
.LBB27_59:
	ld	a, d
	push	bc
                                        ; kill: def $e killed $e def $ude
	push	de
	jr	.LBB27_64
	.local	.LBB27_60
.LBB27_60:
	ld	de, -1
	.local	.LBB27_61
.LBB27_61:
	ld	a, (ix - 7)                     ; 1-byte Folded Reload
	.local	.LBB27_62
.LBB27_62:
	push	de
	.local	.LBB27_63
.LBB27_63:
	push	hl
	.local	.LBB27_64
.LBB27_64:
	ld	l, a
	push	hl
	push	iy
	.local	.LBB27_65
.LBB27_65:
	call	_addb
	jp	.LBB27_77
	.local	.LBB27_66
.LBB27_66:
	ld	bc, -1
	.local	.LBB27_67
.LBB27_67:
	push	af
	ld	a, (ix - 4)                     ; 1-byte Folded Reload
	ld	iyl, a
	pop	af
	push	bc
	push	de
	ex	de, hl
	ld	e, iyl
	ex	de, hl
	.local	.LBB27_68
.LBB27_68:
	push	hl
	ld	hl, (ix + 6)
	push	hl
	jp	.LBB27_76
	.local	.LBB27_69
.LBB27_69:
	ld	bc, -1
	.local	.LBB27_70
.LBB27_70:
	ld	a, d
	push	bc
                                        ; kill: def $e killed $e def $ude
	push	de
	jr	.LBB27_75
	.local	.LBB27_71
.LBB27_71:
	ld	de, -1
	.local	.LBB27_72
.LBB27_72:
	ld	a, (ix - 7)                     ; 1-byte Folded Reload
	.local	.LBB27_73
.LBB27_73:
	push	de
	.local	.LBB27_74
.LBB27_74:
	push	hl
	.local	.LBB27_75
.LBB27_75:
	ld	l, a
	push	hl
	push	iy
	.local	.LBB27_76
.LBB27_76:
	call	_subb
	.local	.LBB27_77
.LBB27_77:
	pop	hl
	pop	hl
	.local	.LBB27_78
.LBB27_78:
	pop	hl
	pop	hl
	.local	.LBB27_79
.LBB27_79:
	ld	iy, (ix + 6)
	ld	(iy + 29), a
	jp	.LBB27_177
	.local	.LBB27_80
.LBB27_80:
	push	iy
	ld	hl, (ix + 6)
	push	hl
	call	_cb_rrc
	jr	.LBB27_87
	.local	.LBB27_81
.LBB27_81:
	push	iy
	ld	hl, (ix + 6)
	push	hl
	call	_cb_rl
	jr	.LBB27_87
	.local	.LBB27_82
.LBB27_82:
	push	iy
	ld	hl, (ix + 6)
	push	hl
	call	_cb_rr
	jr	.LBB27_87
	.local	.LBB27_83
.LBB27_83:
	push	iy
	ld	hl, (ix + 6)
	push	hl
	call	_cb_sla
	jr	.LBB27_87
	.local	.LBB27_84
.LBB27_84:
	push	iy
	ld	hl, (ix + 6)
	push	hl
	call	_cb_sra
	jr	.LBB27_87
	.local	.LBB27_85
.LBB27_85:
	push	iy
	ld	hl, (ix + 6)
	push	hl
	call	_cb_sll
	jr	.LBB27_87
	.local	.LBB27_86
.LBB27_86:
	push	iy
	ld	hl, (ix + 6)
	push	hl
	call	_cb_srl
	.local	.LBB27_87
.LBB27_87:
	ld	iy, (ix + 6)
	ld	b, a
	pop	hl
	pop	hl
	.local	.LBB27_88
.LBB27_88:
	ld	c, (ix - 11)                    ; 1-byte Folded Reload
	ld	a, c
	cp	a, 1
	ld	de, 0
	jr	z, .LBB27_99
; %bb.89:
	ld	a, (ix - 14)                    ; 1-byte Folded Reload
	cp	a, 6
	jr	z, .LBB27_99
; %bb.90:
	ld	e, (ix - 14)                    ; 1-byte Folded Reload
	ld	hl, JTI27_5
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB27_91
.LBB27_91:
	ld	(iy + 30), b
	jr	.LBB27_99
	.local	.LBB27_92
.LBB27_92:
	ld	(iy + 31), b
	jr	.LBB27_99
	.local	.LBB27_93
.LBB27_93:
	ld	(iy + 32), b
	jr	.LBB27_99
	.local	.LBB27_94
.LBB27_94:
	ld	(iy + 33), b
	jr	.LBB27_99
	.local	.LBB27_95
.LBB27_95:
	ld	(iy + 34), b
	jr	.LBB27_99
	.local	.LBB27_96
.LBB27_96:
	ld	(iy + 35), b
	jr	.LBB27_99
	.local	.LBB27_97
.LBB27_97:
	ld	(ix - 15), b                    ; 1-byte Folded Spill
	ld	b, 0
	ld	c, (iy + 34)
	ld	l, b
	ld	h, c
	ld	e, (iy + 35)
	ld	(ix - 4), c
	ld	(ix - 3), b
	ld	d, b
	add.sis	hl, de
	ld	de, (iy + 3)
	ld	(ix - 14), de
	ld	de, (iy + 12)
	ld	c, (ix - 15)                    ; 1-byte Folded Reload
	push	bc
	push	hl
	push	de
	ld	hl, (ix - 14)
	call	__indcallhl
	ld	b, (ix - 15)                    ; 1-byte Folded Reload
	ld	c, (ix - 11)                    ; 1-byte Folded Reload
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	jr	.LBB27_99
	.local	.LBB27_98
.LBB27_98:
	ld	(iy + 29), b
	.local	.LBB27_99
.LBB27_99:
	ld	a, c
	cp	a, 1
	jr	nz, .LBB27_101
; %bb.100:
	ld	bc, 20
	jr	.LBB27_102
	.local	.LBB27_101
.LBB27_101:
	ld	hl, (iy + 3)
	ld	de, (iy + 12)
	ld	c, b
	push	bc
	ld	bc, (ix - 10)
	push	bc
	push	de
	call	__indcallhl
	ld	bc, 23
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB27_102
.LBB27_102:
	ld	hl, (iy + 15)
	ld	iy, (ix - 7)
	ld	e, (iy)
	push	hl
	ld	l, (ix - 4)
	ld	h, (ix - 3)
	ex	(sp), hl
	pop	iy
	ld	a, iyh
	call	__ladd
	ld	iy, (ix + 6)
	ld	(iy + 15), hl
	ld	(iy + 18), e
	jp	.LBB27_177
	.local	.LBB27_103
.LBB27_103:
	ld	iy, (ix + 6)
	ld	a, (iy + 30)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	jr	.LBB27_105
	.local	.LBB27_104
.LBB27_104:
	ld	iy, (ix + 6)
	ld	d, 0
	ld	e, (iy + 32)
	ld	l, d
	ld	h, e
	ld	e, (iy + 33)
	.local	.LBB27_105
.LBB27_105:
	add.sis	hl, de
	jp	.LBB27_129
	.local	.LBB27_106
.LBB27_106:
	ld	hl, (ix + 6)
	push	hl
	call	_nextw
	jp	.LBB27_13
	.local	.LBB27_107
.LBB27_107:
	ld	hl, (ix + 6)
	push	hl
	call	_nextw
                                        ; kill: def $hl killed $hl def $uhl
	pop	de
	ld	iy, (ix + 12)
	ld	de, (iy)
	push	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_ww
	jp	.LBB27_175
	.local	.LBB27_108
.LBB27_108:
	ld	iy, (ix + 12)
	ld	hl, (iy)
	inc.sis	hl
	jp	.LBB27_117
	.local	.LBB27_109
.LBB27_109:
	ld	hl, (ix + 12)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	call	__sand
	ld	(ix - 7), l
	ld	(ix - 6), h
	ld	l, d
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_inc
	jr	.LBB27_111
	.local	.LBB27_110
.LBB27_110:
	ld	hl, (ix + 12)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	call	__sand
	ld	(ix - 7), l
	ld	(ix - 6), h
	ld	l, d
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_dec
	.local	.LBB27_111
.LBB27_111:
	ld	h, 0
	ld	e, l
	ld	d, h
	ld	e, a
	pop	hl
	jp	.LBB27_113
	.local	.LBB27_112
.LBB27_112:
	ld	hl, (ix + 12)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sand
	ld	(ix - 7), l
	ld	(ix - 6), h
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	ld	h, 0
	ld	e, l
	ld	d, h
	ld	e, a
	.local	.LBB27_113
.LBB27_113:
	pop	hl
	ld	l, d
	ld	h, e
	ld	e, (ix - 7)
	ld	d, (ix - 6)
	jp	.LBB27_155
	.local	.LBB27_114
.LBB27_114:
	ld	hl, (ix + 12)
	push	hl
	pop	iy
	ld	hl, (iy)
	push	hl
	push	iy
	ld	hl, (ix + 6)
	push	hl
	jp	.LBB27_130
	.local	.LBB27_115
.LBB27_115:
	ld	hl, (ix + 6)
	push	hl
	call	_nextw
                                        ; kill: def $hl killed $hl def $uhl
	pop	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_rw
	pop	de
	jp	.LBB27_13
	.local	.LBB27_116
.LBB27_116:
	ld	iy, (ix + 12)
	ld	hl, (iy)
	dec.sis	hl
	.local	.LBB27_117
.LBB27_117:
	ld	(iy), l
	ld	(iy + 1), h
	jp	.LBB27_177
	.local	.LBB27_118
.LBB27_118:
	ld	hl, (ix + 12)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, -256
	call	__sand
	ld	(ix - 7), l
	ld	(ix - 6), h
	push	de
	ld	hl, (ix + 6)
	push	hl
	call	_inc
	jr	.LBB27_120
	.local	.LBB27_119
.LBB27_119:
	ld	hl, (ix + 12)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, -256
	call	__sand
	ld	(ix - 7), l
	ld	(ix - 6), h
	push	de
	ld	hl, (ix + 6)
	push	hl
	call	_dec
	.local	.LBB27_120
.LBB27_120:
	ld	d, 0
	ld	e, a
	pop	hl
	jp	.LBB27_122
	.local	.LBB27_121
.LBB27_121:
	ld	hl, (ix + 12)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, -256
	call	__sand
	ld	(ix - 7), l
	ld	(ix - 6), h
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	ld	d, 0
	ld	e, a
	.local	.LBB27_122
.LBB27_122:
	pop	hl
	push	hl
	ld	l, (ix - 7)
	ld	h, (ix - 6)
	ex	(sp), hl
	pop	iy
	add.sis	iy, de
	ld	hl, (ix + 12)
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	jp	.LBB27_177
	.local	.LBB27_123
.LBB27_123:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	(ix - 4), hl
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	ld	l, a
	pop	de
	pop	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_inc
	jr	.LBB27_125
	.local	.LBB27_124
.LBB27_124:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	(ix - 4), hl
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	ld	l, a
	pop	de
	pop	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_dec
	.local	.LBB27_125
.LBB27_125:
	ld	e, a
	pop	hl
	jr	.LBB27_127
	.local	.LBB27_126
.LBB27_126:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	(ix - 4), hl
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	iy
	call	_nextb
	ld	e, a
	.local	.LBB27_127
.LBB27_127:
	pop	hl
	ld	iy, (ix + 6)
	ld	hl, (iy + 3)
	ld	bc, (iy + 12)
	push	de
	ld	de, (ix - 4)
	push	de
	push	bc
	jp	.LBB27_174
	.local	.LBB27_128
.LBB27_128:
	ld	iy, (ix + 6)
	ld	hl, (iy + 21)
	.local	.LBB27_129
.LBB27_129:
	push	hl
	ld	hl, (ix + 12)
	push	hl
	push	iy
	.local	.LBB27_130
.LBB27_130:
	call	_addiz
	jp	.LBB27_175
	.local	.LBB27_131
.LBB27_131:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	a, h
	jr	.LBB27_134
	.local	.LBB27_132
.LBB27_132:
	ld	hl, (ix + 12)
	ld	a, (hl)
	jr	.LBB27_134
	.local	.LBB27_133
.LBB27_133:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	hl
	pop	bc
	ld	hl, (iy)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	pop	hl
	pop	hl
	.local	.LBB27_134
.LBB27_134:
	ld	iy, (ix + 6)
	ld	(iy + 30), a
	jp	.LBB27_177
	.local	.LBB27_135
.LBB27_135:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	a, h
	jr	.LBB27_138
	.local	.LBB27_136
.LBB27_136:
	ld	hl, (ix + 12)
	ld	a, (hl)
	jr	.LBB27_138
	.local	.LBB27_137
.LBB27_137:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	hl
	pop	bc
	ld	hl, (iy)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	pop	hl
	pop	hl
	.local	.LBB27_138
.LBB27_138:
	ld	iy, (ix + 6)
	ld	(iy + 31), a
	jp	.LBB27_177
	.local	.LBB27_139
.LBB27_139:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	a, h
	jr	.LBB27_142
	.local	.LBB27_140
.LBB27_140:
	ld	hl, (ix + 12)
	ld	a, (hl)
	jr	.LBB27_142
	.local	.LBB27_141
.LBB27_141:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	hl
	pop	bc
	ld	hl, (iy)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	pop	hl
	pop	hl
	.local	.LBB27_142
.LBB27_142:
	ld	iy, (ix + 6)
	ld	(iy + 32), a
	jp	.LBB27_177
	.local	.LBB27_143
.LBB27_143:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	a, h
	jr	.LBB27_146
	.local	.LBB27_144
.LBB27_144:
	ld	hl, (ix + 12)
	ld	a, (hl)
	jr	.LBB27_146
	.local	.LBB27_145
.LBB27_145:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	hl
	pop	bc
	ld	hl, (iy)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	pop	hl
	pop	hl
	.local	.LBB27_146
.LBB27_146:
	ld	iy, (ix + 6)
	ld	(iy + 33), a
	jp	.LBB27_177
	.local	.LBB27_147
.LBB27_147:
	ld	hl, (ix + 12)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sand
	ld	e, l
	ld	d, h
	ld	h, 0
	ld	c, l
	ld	b, h
	ld	iy, (ix + 6)
	ld	c, (iy + 30)
	jp	.LBB27_154
	.local	.LBB27_148
.LBB27_148:
	ld	hl, (ix + 12)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sand
	ld	e, l
	ld	d, h
	ld	h, 0
	ld	c, l
	ld	b, h
	ld	iy, (ix + 6)
	ld	c, (iy + 31)
	jp	.LBB27_154
	.local	.LBB27_149
.LBB27_149:
	ld	hl, (ix + 12)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sand
	ld	e, l
	ld	d, h
	ld	h, 0
	ld	c, l
	ld	b, h
	ld	iy, (ix + 6)
	ld	c, (iy + 32)
	jp	.LBB27_154
	.local	.LBB27_150
.LBB27_150:
	ld	hl, (ix + 12)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sand
	ld	e, l
	ld	d, h
	ld	h, 0
	ld	c, l
	ld	b, h
	ld	iy, (ix + 6)
	ld	c, (iy + 33)
	jp	.LBB27_154
	.local	.LBB27_151
.LBB27_151:
	ld	iy, (ix + 12)
	ld	hl, (iy)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sand
	ld	e, l
	ld	d, h
	ld	h, 0
	ld	l, h
	ld	h, e
	jp	.LBB27_163
	.local	.LBB27_152
.LBB27_152:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	hl
	pop	bc
	ld	hl, (iy)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	(iy + 34), a
	jp	.LBB27_177
	.local	.LBB27_153
.LBB27_153:
	ld	hl, (ix + 12)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sand
	ld	e, l
	ld	d, h
	ld	h, 0
	ld	c, l
	ld	b, h
	ld	iy, (ix + 6)
	ld	c, (iy + 29)
	.local	.LBB27_154
.LBB27_154:
	ld	l, b
	ld	h, c
	.local	.LBB27_155
.LBB27_155:
	add.sis	hl, de
	.local	.LBB27_156
.LBB27_156:
	ld	iy, (ix + 12)
	.local	.LBB27_157
.LBB27_157:
	ld	(iy), l
	ld	(iy + 1), h
	jp	.LBB27_177
	.local	.LBB27_158
.LBB27_158:
	ld	hl, (ix + 12)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, -256
	call	__sand
	ld	d, c
	ld	iy, (ix + 6)
	ld	e, (iy + 30)
	jp	.LBB27_155
	.local	.LBB27_159
.LBB27_159:
	ld	hl, (ix + 12)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, -256
	call	__sand
	ld	d, c
	ld	iy, (ix + 6)
	ld	e, (iy + 31)
	jp	.LBB27_155
	.local	.LBB27_160
.LBB27_160:
	ld	hl, (ix + 12)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, -256
	call	__sand
	ld	d, c
	ld	iy, (ix + 6)
	ld	e, (iy + 32)
	jp	.LBB27_155
	.local	.LBB27_161
.LBB27_161:
	ld	hl, (ix + 12)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, -256
	call	__sand
	ld	d, c
	ld	iy, (ix + 6)
	ld	e, (iy + 33)
	jp	.LBB27_155
	.local	.LBB27_162
.LBB27_162:
	ld	iy, (ix + 12)
	ld	hl, (iy)
	ld	d, 0
	ld	e, h
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, -256
	call	__sand
	.local	.LBB27_163
.LBB27_163:
	add.sis	hl, de
	jp	.LBB27_157
	.local	.LBB27_164
.LBB27_164:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	hl
	pop	bc
	ld	hl, (iy)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	(iy + 35), a
	jp	.LBB27_177
	.local	.LBB27_165
.LBB27_165:
	ld	hl, (ix + 12)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, -256
	call	__sand
	ld	d, c
	ld	iy, (ix + 6)
	ld	e, (iy + 29)
	jp	.LBB27_155
	.local	.LBB27_166
.LBB27_166:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	(ix - 4), hl
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	ld	a, (iy + 30)
	jp	.LBB27_173
	.local	.LBB27_167
.LBB27_167:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	(ix - 4), hl
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	ld	a, (iy + 31)
	jp	.LBB27_173
	.local	.LBB27_168
.LBB27_168:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	(ix - 4), hl
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	ld	a, (iy + 32)
	jp	.LBB27_173
	.local	.LBB27_169
.LBB27_169:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	(ix - 4), hl
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	ld	a, (iy + 33)
	jp	.LBB27_173
	.local	.LBB27_170
.LBB27_170:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	(ix - 4), hl
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	ld	a, (iy + 34)
	jr	.LBB27_173
	.local	.LBB27_171
.LBB27_171:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	(ix - 4), hl
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	ld	a, (iy + 35)
	jr	.LBB27_173
	.local	.LBB27_172
.LBB27_172:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	(ix - 4), hl
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	ld	a, (iy + 29)
	.local	.LBB27_173
.LBB27_173:
	ld	hl, (iy + 3)
	ld	de, (iy + 12)
	ld	c, a
	push	bc
	ld	bc, (ix - 4)
	push	bc
	push	de
	.local	.LBB27_174
.LBB27_174:
	call	__indcallhl
	.local	.LBB27_175
.LBB27_175:
	pop	hl
	.local	.LBB27_176
.LBB27_176:
	pop	hl
	pop	hl
	.local	.LBB27_177
.LBB27_177:
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB27_178
.LBB27_178:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	a, h
	jp	.LBB27_79
	.local	.LBB27_179
.LBB27_179:
	ld	hl, (ix + 12)
	ld	a, (hl)
	jp	.LBB27_79
	.local	.LBB27_180
.LBB27_180:
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(ix - 4), hl
	ld	hl, (ix + 6)
	push	hl
	call	_nextb
	pop	hl
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	e, l
	ld	d, h
	ld	e, a
	ld	hl, (ix - 4)
	add.sis	hl, de
	ld	iy, (ix + 6)
	ld	(iy + 27), l
	ld	(iy + 28), h
	push	hl
	pop	bc
	ld	hl, (iy)
	ld	de, (iy + 12)
	push	bc
	push	de
	call	__indcallhl
	jp	.LBB27_78
	.local	.Lfunc_end27
.Lfunc_end27:
	.size	_exec_opcode_ddfd, .Lfunc_end27-_exec_opcode_ddfd
	.section	.rodata._exec_opcode_ddfd,"a",@progbits
JTI27_0:
	d24	.LBB27_6
	d24	.LBB27_22
	d24	.LBB27_23
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_24
	d24	.LBB27_26
	d24	.LBB27_28
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_30
	d24	.LBB27_31
	d24	.LBB27_32
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_33
	d24	.LBB27_35
	d24	.LBB27_37
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_39
	d24	.LBB27_40
	d24	.LBB27_41
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_43
	d24	.LBB27_44
	d24	.LBB27_45
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_47
	d24	.LBB27_48
	d24	.LBB27_49
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_51
	d24	.LBB27_52
	d24	.LBB27_53
JTI27_1:
	d24	.LBB27_12
	d24	.LBB27_14
	d24	.LBB27_19
	d24	.LBB27_14
	d24	.LBB27_20
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_21
JTI27_2:
	d24	.LBB27_10
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_103
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_104
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_106
	d24	.LBB27_107
	d24	.LBB27_108
	d24	.LBB27_109
	d24	.LBB27_110
	d24	.LBB27_112
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_114
	d24	.LBB27_115
	d24	.LBB27_116
	d24	.LBB27_118
	d24	.LBB27_119
	d24	.LBB27_121
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_123
	d24	.LBB27_124
	d24	.LBB27_126
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_128
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_131
	d24	.LBB27_132
	d24	.LBB27_133
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_135
	d24	.LBB27_136
	d24	.LBB27_137
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_139
	d24	.LBB27_140
	d24	.LBB27_141
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_143
	d24	.LBB27_144
	d24	.LBB27_145
	d24	.LBB27_14
	d24	.LBB27_147
	d24	.LBB27_148
	d24	.LBB27_149
	d24	.LBB27_150
	d24	.LBB27_177
	d24	.LBB27_151
	d24	.LBB27_152
	d24	.LBB27_153
	d24	.LBB27_158
	d24	.LBB27_159
	d24	.LBB27_160
	d24	.LBB27_161
	d24	.LBB27_162
	d24	.LBB27_177
	d24	.LBB27_164
	d24	.LBB27_165
	d24	.LBB27_166
	d24	.LBB27_167
	d24	.LBB27_168
	d24	.LBB27_169
	d24	.LBB27_170
	d24	.LBB27_171
	d24	.LBB27_14
	d24	.LBB27_172
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_14
	d24	.LBB27_178
	d24	.LBB27_179
	d24	.LBB27_180
JTI27_3:
	d24	.LBB27_3
	d24	.LBB27_15
	d24	.LBB27_16
	d24	.LBB27_17
JTI27_4:
	d24	.LBB27_4
	d24	.LBB27_80
	d24	.LBB27_81
	d24	.LBB27_82
	d24	.LBB27_83
	d24	.LBB27_84
	d24	.LBB27_85
	d24	.LBB27_86
JTI27_5:
	d24	.LBB27_91
	d24	.LBB27_92
	d24	.LBB27_93
	d24	.LBB27_94
	d24	.LBB27_95
	d24	.LBB27_96
	d24	.LBB27_97
	d24	.LBB27_98
                                        ; -- End function
	.section	.text._addw,"ax",@progbits
	.type	_addw,@function                 ; -- Begin function addw
_addw:                                  ; @addw
; %bb.0:
	ld	hl, -1
	call	__frameset
	ld	iy, (ix + 6)
	ld	bc, (ix + 9)
	ld	de, (ix + 12)
	ld	a, (ix + 15)
	ld	l, a
	push	hl
	push	de
	push	bc
	push	iy
	call	_addb
	ld	(ix - 1), a                     ; 1-byte Folded Spill
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 9)
	ld	l, h
	ld	de, (ix + 12)
	ld	e, d
	ld	iy, (ix + 6)
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB28_2
; %bb.1:
	ld	bc, 0
	jr	.LBB28_3
	.local	.LBB28_2
.LBB28_2:
	ld	bc, -1
	.local	.LBB28_3
.LBB28_3:
	push	bc
	push	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_addb
	ld	e, a
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	d, 0
	ld	l, d
	ld	h, e
	ld	e, (ix - 1)                     ; 1-byte Folded Reload
	add.sis	hl, de
	ld	iy, (ix + 6)
	ld	a, (iy + 46)
	ld	c, l
	ld	b, h
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jr	z, .LBB28_5
; %bb.4:
	ld	e, 0
	jr	.LBB28_6
	.local	.LBB28_5
.LBB28_5:
	ld	e, 2
	.local	.LBB28_6
.LBB28_6:
	ld	l, -3
	and	a, l
	ld	l, a
	ld	a, e
	add	a, l
	ld	l, a
	ld	(iy + 46), l
	ld	hl, (ix + 9)
	inc.sis	hl
	ld	(iy + 27), l
	ld	(iy + 28), h
	ld	l, c
	ld	h, b
	inc	sp
	pop	ix
	ret
	.local	.Lfunc_end28
.Lfunc_end28:
	.size	_addw, .Lfunc_end28-_addw
                                        ; -- End function
	.section	.text._parity,"ax",@progbits
	.type	_parity,@function               ; -- Begin function parity
_parity:                                ; @parity
; %bb.0:
	ld	hl, -4
	call	__frameset
	ld	a, (ix + 6)
	ld	l, 0
	ld	(ix - 1), l
	or	a, a
	sbc	hl, hl
	ld	de, 0
	ld	e, a
	ld	(ix - 4), de
	ld	de, 8
	.local	.LBB29_1
.LBB29_1:                               ; =>This Inner Loop Header: Depth=1
	push	hl
	pop	bc
	push	de
	pop	iy
	or	a, a
	sbc	hl, de
	jr	z, .LBB29_3
; %bb.2:                                ;   in Loop: Header=BB29_1 Depth=1
	ld	hl, (ix - 4)
	call	__ishru
	ld	e, 1
	ld	a, l
	and	a, e
	ld	l, a
	ld	e, (ix - 1)
	ld	a, l
	add	a, e
	ld	e, a
	ld	(ix - 1), e
	push	bc
	pop	hl
	inc	hl
	lea	de, iy + 0
	jr	.LBB29_1
	.local	.LBB29_3
.LBB29_3:
	ld	e, 1
	ld	a, (ix - 1)
	and	a, e
	ld	l, a
	ld	a, l
	xor	a, e
	ld	l, a
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end29
.Lfunc_end29:
	.size	_parity, .Lfunc_end29-_parity
                                        ; -- End function
	.section	.text._cb_rlc,"ax",@progbits
	.type	_cb_rlc,@function               ; -- Begin function cb_rlc
_cb_rlc:                                ; @cb_rlc
; %bb.0:
	ld	hl, -4
	call	__frameset
	ld	l, (ix + 9)
	ld	e, -128
	ld	b, 7
	ld	c, 0
	ld	a, l
	and	a, e
	ld	e, a
	ld	(ix - 2), e
	ld	e, l
	rlc	e
	ld	a, e
	call	__bshru
	ld	(ix - 3), a                     ; 1-byte Folded Spill
	ld	a, l
	or	a, a
	jr	z, .LBB30_2
; %bb.1:
	ld	(ix - 4), c                     ; 1-byte Folded Spill
	jr	.LBB30_3
	.local	.LBB30_2
.LBB30_2:
	ld	a, 2
	ld	(ix - 4), a
	.local	.LBB30_3
.LBB30_3:
	ld	(ix - 1), e                     ; 1-byte Folded Spill
	ld	l, e
	push	hl
	call	_parity
	pop	hl
	bit	0, a
	jr	nz, .LBB30_5
; %bb.4:
	ld	d, 0
	jr	.LBB30_6
	.local	.LBB30_5
.LBB30_5:
	ld	d, 32
	.local	.LBB30_6
.LBB30_6:
	ld	h, (ix - 1)                     ; 1-byte Folded Reload
	ld	a, h
	add	a, a
	ld	l, 16
	and	a, l
	ld	l, a
	ld	a, h
	ld	b, 3
	call	__bshru
	ld	e, 4
	and	a, e
	ld	e, a
	ld	c, (ix - 2)
	ld	a, (ix - 4)
	add	a, c
	ld	c, a
	ld	b, (ix - 3)
	ld	a, c
	add	a, b
	ld	c, a
	ld	a, c
	add	a, l
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	a, l
	add	a, d
	ld	l, a
	ld	iy, (ix + 6)
	ld	(iy + 46), l
	ld	a, h
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end30
.Lfunc_end30:
	.size	_cb_rlc, .Lfunc_end30-_cb_rlc
                                        ; -- End function
	.section	.text._cb_rrc,"ax",@progbits
	.type	_cb_rrc,@function               ; -- Begin function cb_rrc
_cb_rrc:                                ; @cb_rrc
; %bb.0:
	ld	hl, -2
	call	__frameset
	ld	l, (ix + 9)
	ld	b, 7
	ld	c, 0
	ld	h, l
	rrc	h
	ld	a, h
	call	__bshru
	ld	e, a
	ld	a, l
	or	a, a
	jr	nz, .LBB31_2
; %bb.1:
	ld	c, 2
	.local	.LBB31_2
.LBB31_2:
	ld	a, e
	add	a, c
	ld	e, a
	ld	a, l
	call	__bshl
	ld	l, a
	ld	a, e
	add	a, l
	ld	l, a
	ld	(ix - 2), l
	ld	(ix - 1), h                     ; 1-byte Folded Spill
	ld	l, h
	push	hl
	call	_parity
	pop	hl
	bit	0, a
	jr	nz, .LBB31_4
; %bb.3:
	xor	a, a
	jr	.LBB31_5
	.local	.LBB31_4
.LBB31_4:
	ld	a, 32
	.local	.LBB31_5
.LBB31_5:
	ld	l, (ix - 2)
	add	a, l
	ld	l, a
	ld	c, (ix - 1)                     ; 1-byte Folded Reload
	ld	a, c
	add	a, a
	ld	e, 16
	and	a, e
	ld	e, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	a, c
	ld	b, 3
	call	__bshru
	ld	e, 4
	and	a, e
	ld	e, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	iy, (ix + 6)
	ld	(iy + 46), l
	ld	a, c
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end31
.Lfunc_end31:
	.size	_cb_rrc, .Lfunc_end31-_cb_rrc
                                        ; -- End function
	.section	.text._cb_rl,"ax",@progbits
	.type	_cb_rl,@function                ; -- Begin function cb_rl
_cb_rl:                                 ; @cb_rl
; %bb.0:
	ld	hl, -3
	call	__frameset
	ld	iy, (ix + 6)
	ld	c, (ix + 9)
	ld	l, -128
	ld	b, 7
	ld	h, 0
	ld	e, (iy + 46)
	ld	a, c
	and	a, l
	ld	l, a
	rlc	e
	rl	c
	ld	a, c
	call	__bshru
	add	a, l
	ld	l, a
	ld	(ix - 2), l
	ld	a, c
	or	a, a
	jr	z, .LBB32_2
; %bb.1:
	ld	(ix - 3), h                     ; 1-byte Folded Spill
	jr	.LBB32_3
	.local	.LBB32_2
.LBB32_2:
	ld	a, 2
	ld	(ix - 3), a
	.local	.LBB32_3
.LBB32_3:
	ld	(ix - 1), c                     ; 1-byte Folded Spill
	ld	l, c
	push	hl
	call	_parity
	pop	hl
	bit	0, a
	jr	nz, .LBB32_5
; %bb.4:
	ld	c, 0
	jr	.LBB32_6
	.local	.LBB32_5
.LBB32_5:
	ld	c, 32
	.local	.LBB32_6
.LBB32_6:
	ld	h, (ix - 1)                     ; 1-byte Folded Reload
	ld	a, h
	add	a, a
	ld	l, 16
	and	a, l
	ld	l, a
	ld	a, h
	ld	b, 3
	call	__bshru
	ld	e, 4
	and	a, e
	ld	e, a
	ld	a, (ix - 2)
	add	a, c
	ld	c, a
	ld	d, (ix - 3)
	ld	a, c
	add	a, d
	ld	c, a
	ld	a, c
	add	a, l
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	iy, (ix + 6)
	ld	(iy + 46), l
	ld	a, h
	pop	hl
	pop	ix
	ret
	.local	.Lfunc_end32
.Lfunc_end32:
	.size	_cb_rl, .Lfunc_end32-_cb_rl
                                        ; -- End function
	.section	.text._cb_rr,"ax",@progbits
	.type	_cb_rr,@function                ; -- Begin function cb_rr
_cb_rr:                                 ; @cb_rr
; %bb.0:
	ld	hl, -4
	call	__frameset
	ld	iy, (ix + 6)
	ld	h, (ix + 9)
	ld	b, 7
	ld	e, -128
	ld	l, (iy + 46)
	ld	a, h
	call	__bshl
	ld	c, a
	srl	h
	ld	a, l
	and	a, e
	ld	e, a
	ld	a, e
	add	a, h
	ld	e, a
	ld	a, l
	call	__bshru
	add	a, c
	ld	l, a
	ld	a, e
	or	a, a
	jr	z, .LBB33_2
; %bb.1:
	xor	a, a
	jr	.LBB33_3
	.local	.LBB33_2
.LBB33_2:
	ld	a, 2
	.local	.LBB33_3
.LBB33_3:
	add	a, l
	ld	l, a
	ld	(ix - 4), l
	ld	(ix - 3), de
	push	de
	call	_parity
	pop	hl
	bit	0, a
	jr	nz, .LBB33_5
; %bb.4:
	ld	l, 0
	jr	.LBB33_6
	.local	.LBB33_5
.LBB33_5:
	ld	l, 32
	.local	.LBB33_6
.LBB33_6:
	ld	a, (ix - 4)
	add	a, l
	ld	l, a
	ld	c, (ix + 9)
	ld	e, 16
	ld	a, c
	and	a, e
	ld	e, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	a, c
	ld	b, 4
	call	__bshru
	and	a, b
	ld	e, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	iy, (ix + 6)
	ld	(iy + 46), l
	ld	hl, (ix - 3)
	ld	a, l
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end33
.Lfunc_end33:
	.size	_cb_rr, .Lfunc_end33-_cb_rr
                                        ; -- End function
	.section	.text._cb_sla,"ax",@progbits
	.type	_cb_sla,@function               ; -- Begin function cb_sla
_cb_sla:                                ; @cb_sla
; %bb.0:
	ld	hl, -3
	call	__frameset
	ld	e, (ix + 9)
	ld	l, -128
	ld	b, 7
	ld	c, 0
	ld	h, 2
	ld	a, e
	and	a, l
	ld	l, a
	sla	e
	ld	a, e
	call	__bshru
	add	a, l
	ld	l, a
	ld	(ix - 2), l
	ld	a, e
	or	a, a
	jr	z, .LBB34_2
; %bb.1:
	ld	h, c
	.local	.LBB34_2
.LBB34_2:
	ld	(ix - 3), h
	ld	(ix - 1), e                     ; 1-byte Folded Spill
	ld	l, e
	push	hl
	call	_parity
	pop	hl
	bit	0, a
	jr	nz, .LBB34_4
; %bb.3:
	ld	c, 0
	jr	.LBB34_5
	.local	.LBB34_4
.LBB34_4:
	ld	c, 32
	.local	.LBB34_5
.LBB34_5:
	ld	e, (ix + 9)
	ld	a, e
	ld	b, 2
	call	__bshl
	ld	l, 16
	and	a, l
	ld	l, a
	ld	a, e
	call	__bshru
	ld	e, 4
	and	a, e
	ld	e, a
	ld	a, (ix - 2)
	add	a, l
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	e, (ix - 3)
	ld	a, l
	add	a, e
	ld	l, a
	ld	a, l
	add	a, c
	ld	l, a
	ld	iy, (ix + 6)
	ld	(iy + 46), l
	ld	a, (ix - 1)                     ; 1-byte Folded Reload
	pop	hl
	pop	ix
	ret
	.local	.Lfunc_end34
.Lfunc_end34:
	.size	_cb_sla, .Lfunc_end34-_cb_sla
                                        ; -- End function
	.section	.text._cb_sra,"ax",@progbits
	.type	_cb_sra,@function               ; -- Begin function cb_sra
_cb_sra:                                ; @cb_sra
; %bb.0:
	ld	hl, -5
	call	__frameset
	ld	d, (ix + 9)
	ld	l, -128
	ld	e, -127
	ld	h, 0
	ld	c, d
	srl	c
	ld	a, d
	and	a, l
	ld	l, a
	ld	a, c
	add	a, l
	ld	c, a
	ld	a, d
	call	__bbitrev
	and	a, e
	ld	l, a
	ld	(ix - 4), l
	ld	a, c
	or	a, a
	jr	z, .LBB35_2
; %bb.1:
	ld	(ix - 5), h                     ; 1-byte Folded Spill
	jr	.LBB35_3
	.local	.LBB35_2
.LBB35_2:
	ld	a, 2
	ld	(ix - 5), a
	.local	.LBB35_3
.LBB35_3:
	ld	(ix - 3), bc
	push	bc
	call	_parity
	pop	hl
	bit	0, a
	jr	nz, .LBB35_5
; %bb.4:
	ld	c, 0
	jr	.LBB35_6
	.local	.LBB35_5
.LBB35_5:
	ld	c, 32
	.local	.LBB35_6
.LBB35_6:
	ld	e, (ix + 9)
	ld	l, 16
	ld	a, e
	and	a, l
	ld	l, a
	ld	a, e
	ld	b, 4
	call	__bshru
	and	a, b
	ld	e, a
	ld	a, (ix - 4)
	add	a, l
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	e, (ix - 5)
	ld	a, l
	add	a, e
	ld	l, a
	ld	a, l
	add	a, c
	ld	l, a
	ld	iy, (ix + 6)
	ld	(iy + 46), l
	ld	hl, (ix - 3)
	ld	a, l
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end35
.Lfunc_end35:
	.size	_cb_sra, .Lfunc_end35-_cb_sra
                                        ; -- End function
	.section	.text._cb_sll,"ax",@progbits
	.type	_cb_sll,@function               ; -- Begin function cb_sll
_cb_sll:                                ; @cb_sll
; %bb.0:
	ld	hl, -2
	call	__frameset
	ld	e, (ix + 9)
	ld	l, -128
	ld	b, 7
	ld	a, e
	and	a, l
	ld	l, a
	ld	a, e
	add	a, a
	ld	e, a
	inc	e
	call	__bshru
	add	a, l
	ld	l, a
	ld	(ix - 2), l
	ld	(ix - 1), e                     ; 1-byte Folded Spill
	ld	l, e
	push	hl
	call	_parity
	pop	hl
	bit	0, a
	jr	nz, .LBB36_2
; %bb.1:
	ld	c, 0
	jr	.LBB36_3
	.local	.LBB36_2
.LBB36_2:
	ld	c, 32
	.local	.LBB36_3
.LBB36_3:
	ld	e, (ix + 9)
	ld	a, e
	ld	b, 2
	call	__bshl
	ld	l, 16
	and	a, l
	ld	l, a
	ld	a, e
	call	__bshru
	ld	e, 4
	and	a, e
	ld	e, a
	ld	a, (ix - 2)
	add	a, l
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	a, l
	add	a, c
	ld	l, a
	ld	iy, (ix + 6)
	ld	(iy + 46), l
	ld	a, (ix - 1)                     ; 1-byte Folded Reload
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end36
.Lfunc_end36:
	.size	_cb_sll, .Lfunc_end36-_cb_sll
                                        ; -- End function
	.section	.text._cb_srl,"ax",@progbits
	.type	_cb_srl,@function               ; -- Begin function cb_srl
_cb_srl:                                ; @cb_srl
; %bb.0:
	ld	hl, -2
	call	__frameset
	ld	e, (ix + 9)
	ld	b, 7
	ld	h, 0
	ld	a, e
	call	__bshl
	ld	l, a
	ld	c, e
	srl	c
	ld	a, e
	cp	a, 2
	jr	c, .LBB37_2
; %bb.1:
	ld	a, h
	jr	.LBB37_3
	.local	.LBB37_2
.LBB37_2:
	ld	a, 2
	.local	.LBB37_3
.LBB37_3:
	add	a, l
	ld	l, a
	ld	(ix - 2), l
	ld	(ix - 1), c                     ; 1-byte Folded Spill
	ld	l, c
	push	hl
	call	_parity
	pop	hl
	bit	0, a
	jr	nz, .LBB37_5
; %bb.4:
	xor	a, a
	jr	.LBB37_6
	.local	.LBB37_5
.LBB37_5:
	ld	a, 32
	.local	.LBB37_6
.LBB37_6:
	ld	l, (ix - 2)
	add	a, l
	ld	l, a
	ld	c, (ix + 9)
	ld	e, 16
	ld	a, c
	and	a, e
	ld	e, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	a, c
	ld	b, 4
	call	__bshru
	and	a, b
	ld	e, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	iy, (ix + 6)
	ld	(iy + 46), l
	ld	a, (ix - 1)                     ; 1-byte Folded Reload
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end37
.Lfunc_end37:
	.size	_cb_srl, .Lfunc_end37-_cb_srl
                                        ; -- End function
	.section	.text._cb_bit,"ax",@progbits
	.type	_cb_bit,@function               ; -- Begin function cb_bit
_cb_bit:                                ; @cb_bit
; %bb.0:
	ld	hl, -1
	call	__frameset
	ld	iy, (ix + 6)
	ld	d, (ix + 9)
	ld	hl, 1
	ld	b, 7
	ld	e, -128
	ld	c, (ix + 12)
	call	__ishl
	ld	a, l
	and	a, d
	ld	l, a
	call	__bshru
	ld	(ix - 1), a                     ; 1-byte Folded Spill
	ld	a, (iy + 46)
	and	a, e
	ld	iyl, a
	ld	a, l
	or	a, a
	jr	z, .LBB38_2
; %bb.1:
	ld	c, 0
	jr	.LBB38_3
	.local	.LBB38_2
.LBB38_2:
	ld	c, -1
	.local	.LBB38_3
.LBB38_3:
	ld	b, 3
	ld	h, 4
	bit	0, c
	jr	nz, .LBB38_5
; %bb.4:
	ld	e, 0
	jr	.LBB38_6
	.local	.LBB38_5
.LBB38_5:
	ld	e, 2
	.local	.LBB38_6
.LBB38_6:
	ld	iyh, 8
	ld	a, d
	call	__bshru
	and	a, h
	ld	b, a
	sla	d
	ld	h, 16
	ld	a, d
	and	a, h
	ld	d, a
	bit	0, c
	jr	nz, .LBB38_8
; %bb.7:
	ld	h, 0
	jr	.LBB38_9
	.local	.LBB38_8
.LBB38_8:
	ld	h, 32
	.local	.LBB38_9
.LBB38_9:
	ld	a, d
	add	a, b
	ld	c, a
	ld	d, (ix - 1)
	ld	a, c
	add	a, d
	ld	c, a
	ld	a, c
	add	a, e
	ld	e, a
	ld	a, e
	add	a, h
	ld	e, a
	ld	c, iyl
	ld	a, e
	add	a, c
	ld	e, a
	ld	c, iyh
	ld	a, e
	or	a, c
	ld	e, a
	ld	iy, (ix + 6)
	ld	(iy + 46), e
	ld	a, l
	inc	sp
	pop	ix
	ret
	.local	.Lfunc_end38
.Lfunc_end38:
	.size	_cb_bit, .Lfunc_end38-_cb_bit
                                        ; -- End function
	.section	.text._ldi,"ax",@progbits
	.type	_ldi,@function                  ; -- Begin function ldi
_ldi:                                   ; @ldi
; %bb.0:
	ld	hl, -6
	call	__frameset
	ld	iy, (ix + 6)
	ld	a, (iy + 32)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 33)
	add.sis	hl, de
	ld	(ix - 4), hl
	ld	e, (iy + 34)
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	ld	(ix - 6), e
	ld	(ix - 5), d
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	ld	(ix - 1), a
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	hl, (iy + 3)
	ld	de, (iy + 12)
	ld	c, a
	push	bc
	ld	bc, (ix - 4)
	push	bc
	push	de
	call	__indcallhl
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	ld	e, (ix - 6)
	ld	d, (ix - 5)
	ld	e, (iy + 34)
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	inc.sis	hl
	ld	a, h
	ld	(iy + 34), a
	ld	a, l
	ld	(iy + 35), a
	ld	e, (iy + 32)
	ld	l, d
	ld	h, e
	ld	e, (iy + 33)
	add.sis	hl, de
	inc.sis	hl
	ld	a, h
	ld	(iy + 32), a
	ld	a, l
	ld	(iy + 33), a
	ld	e, (iy + 30)
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	add.sis	hl, de
	dec.sis	hl
	ld	a, h
	ld	(iy + 30), a
	ld	(iy + 31), l
	ld	a, (iy + 29)
	ld	e, (ix - 1)
	add	a, e
	ld	c, a
	ld	a, (iy + 46)
	sla	c
	ld	e, -125
	and	a, e
	ld	e, a
	ld	d, 20
	ld	a, c
	and	a, d
	ld	c, a
	xor	a, a
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jr	z, .LBB39_2
; %bb.1:
	ld	a, 32
	.local	.LBB39_2
.LBB39_2:
	add	a, e
	ld	l, a
	ld	a, l
	add	a, c
	ld	l, a
	ld	(iy + 46), l
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end39
.Lfunc_end39:
	.size	_ldi, .Lfunc_end39-_ldi
                                        ; -- End function
	.section	.text._ldd,"ax",@progbits
	.type	_ldd,@function                  ; -- Begin function ldd
_ldd:                                   ; @ldd
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	push	hl
	call	_ldi
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld.sis	bc, -2
	add.sis	hl, bc
	ld	a, h
	ld	(iy + 34), a
	ld	a, l
	ld	(iy + 35), a
	ld	e, (iy + 32)
	ld	l, d
	ld	h, e
	ld	e, (iy + 33)
	add.sis	hl, de
	add.sis	hl, bc
	ld	a, h
	ld	(iy + 32), a
	ld	a, l
	ld	(iy + 33), a
	pop	ix
	ret
	.local	.Lfunc_end40
.Lfunc_end40:
	.size	_ldd, .Lfunc_end40-_ldd
                                        ; -- End function
	.section	.text._cpi,"ax",@progbits
	.type	_cpi,@function                  ; -- Begin function cpi
_cpi:                                   ; @cpi
; %bb.0:
	ld	hl, -4
	call	__frameset
	ld	iy, (ix + 6)
	ld	l, -128
	ld	a, (iy + 46)
	and	a, l
	ld	l, a
	ld	(ix - 1), l
	ld	a, (iy + 29)
	ld	(ix - 2), a
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	ld	(ix - 4), e
	ld	(ix - 3), d
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	ld	l, a
	pop	de
	pop	de
	ld	de, 0
	push	de
	push	hl
	ld	l, (ix - 2)                     ; 1-byte Folded Reload
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_subb
	ld	iy, (ix + 6)
	ld	e, a
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	c, (ix - 4)
	ld	b, (ix - 3)
	ld	c, (iy + 34)
	ld	l, b
	ld	h, c
	ld	c, (iy + 35)
	add.sis	hl, bc
	inc.sis	hl
	ld	a, h
	ld	(iy + 34), a
	ld	a, l
	ld	(iy + 35), a
	ld	c, (iy + 30)
	ld	l, b
	ld	h, c
	ld	c, (iy + 31)
	add.sis	hl, bc
	dec.sis	hl
	ld	a, h
	ld	(iy + 30), a
	ld	(iy + 31), l
	ld	c, (iy + 46)
	ld	a, c
	ld	b, 4
	call	__bshl
	rlc	a
	sbc	a, a
	add	a, e
	ld	e, a
	sla	e
	ld	d, 75
	ld	a, c
	and	a, d
	ld	c, a
	ld	d, 20
	ld	a, e
	and	a, d
	ld	e, a
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	ld	h, 0
	jr	z, .LBB41_2
; %bb.1:
	ld	h, 32
	.local	.LBB41_2
.LBB41_2:
	ld	l, (ix - 1)
	ld	a, c
	add	a, l
	ld	l, a
	ld	a, l
	add	a, h
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	(iy + 46), l
	ld	hl, (iy + 27)
	inc.sis	hl
	ld	(iy + 27), l
	ld	(iy + 28), h
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end41
.Lfunc_end41:
	.size	_cpi, .Lfunc_end41-_cpi
                                        ; -- End function
	.section	.text._cpd,"ax",@progbits
	.type	_cpd,@function                  ; -- Begin function cpd
_cpd:                                   ; @cpd
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	push	hl
	call	_cpi
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld.sis	de, -2
	add.sis	hl, de
	ld	a, h
	ld	(iy + 34), a
	ld	a, l
	ld	(iy + 35), a
	ld	hl, (iy + 27)
	add.sis	hl, de
	ld	(iy + 27), l
	ld	(iy + 28), h
	pop	ix
	ret
	.local	.Lfunc_end42
.Lfunc_end42:
	.size	_cpd, .Lfunc_end42-_cpd
                                        ; -- End function
	.section	.text._in_r_c,"ax",@progbits
	.type	_in_r_c,@function               ; -- Begin function in_r_c
_in_r_c:                                ; @in_r_c
; %bb.0:
	ld	hl, -1
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, (iy + 6)
	ld	a, (iy + 31)
	ld	e, a
	push	de
	push	iy
	call	__indcallhl
	pop	hl
	pop	hl
	ld	hl, (ix + 9)
	push	hl
	pop	bc
	ld	(hl), a
	ld	iy, (ix + 6)
	ld	l, (iy + 46)
	or	a, a
	jr	z, .LBB43_2
; %bb.1:
	ld	e, 0
	jr	.LBB43_3
	.local	.LBB43_2
.LBB43_2:
	ld	e, 2
	.local	.LBB43_3
.LBB43_3:
	ld	h, -3
	ld	a, l
	and	a, h
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	(iy + 46), l
	push	bc
	pop	iy
	ld	a, (iy)
	ld	b, 7
	call	__bshru
	ld	e, a
	ld	c, -2
	ld	a, l
	and	a, c
	ld	l, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	(ix - 1), l                     ; 1-byte Folded Spill
	ld	iy, (ix + 6)
	ld	(iy + 46), l
	ld	hl, (ix + 9)
	ld	a, (hl)
	ld	l, a
	push	hl
	call	_parity
	pop	hl
	bit	0, a
	jr	nz, .LBB43_5
; %bb.4:
	ld	e, 0
	jr	.LBB43_6
	.local	.LBB43_5
.LBB43_5:
	ld	e, 32
	.local	.LBB43_6
.LBB43_6:
	ld	l, -105
	ld	a, (ix - 1)
	and	a, l
	ld	l, a
	ld	a, e
	add	a, l
	ld	l, a
	ld	iy, (ix + 6)
	ld	(iy + 46), l
	inc	sp
	pop	ix
	ret
	.local	.Lfunc_end43
.Lfunc_end43:
	.size	_in_r_c, .Lfunc_end43-_in_r_c
                                        ; -- End function
	.section	.text._ini,"ax",@progbits
	.type	_ini,@function                  ; -- Begin function ini
_ini:                                   ; @ini
; %bb.0:
	ld	hl, -8
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, (iy + 6)
	ld	a, (iy + 31)
	ld	e, a
	push	de
	push	iy
	call	__indcallhl
	ld	l, a
	ld	(ix - 3), hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	(ix - 5), e
	ld	(ix - 4), d
	ld	c, (iy + 35)
	ld	b, d
	add.sis	hl, bc
	ld	de, (iy + 3)
	ld	(ix - 8), de
	ld	bc, (iy + 12)
	ld	de, (ix - 3)
	push	de
	push	hl
	push	bc
	ld	hl, (ix - 8)
	call	__indcallhl
	ld	c, (ix - 5)
	ld	b, (ix - 4)
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	ld	a, (iy + 34)
	ld	d, b
	ld	e, a
	ld	l, b
	ld	h, e
	ld	e, (iy + 35)
	ld	d, b
	add.sis	hl, de
	inc.sis	hl
	ld	a, h
	ld	(iy + 34), a
	ld	a, l
	ld	(iy + 35), a
	dec	(iy + 30)
	ld	l, (iy + 30)
	ld	a, (iy + 46)
	ld	e, -67
	and	a, e
	ld	e, a
	ld	a, l
	or	a, a
	jr	z, .LBB44_2
; %bb.1:
	ld	a, 64
	jr	.LBB44_3
	.local	.LBB44_2
.LBB44_2:
	ld	a, 66
	.local	.LBB44_3
.LBB44_3:
	add	a, e
	ld	e, a
	ld	(iy + 46), e
	ld	c, l
	ld	l, b
	ld	h, c
	ld	c, (iy + 31)
	add.sis	hl, bc
	inc.sis	hl
	ld	(iy + 27), l
	ld	(iy + 28), h
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end44
.Lfunc_end44:
	.size	_ini, .Lfunc_end44-_ini
                                        ; -- End function
	.section	.text._ind,"ax",@progbits
	.type	_ind,@function                  ; -- Begin function ind
_ind:                                   ; @ind
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	push	hl
	call	_ini
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld.sis	bc, -2
	add.sis	hl, bc
	ld	a, h
	ld	(iy + 34), a
	ld	a, l
	ld	(iy + 35), a
	ld	e, (iy + 30)
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	add.sis	hl, de
	add.sis	hl, bc
	ld	(iy + 27), l
	ld	(iy + 28), h
	pop	ix
	ret
	.local	.Lfunc_end45
.Lfunc_end45:
	.size	_ind, .Lfunc_end45-_ind
                                        ; -- End function
	.section	.text._outi,"ax",@progbits
	.type	_outi,@function                 ; -- Begin function outi
_outi:                                  ; @outi
; %bb.0:
	ld	hl, -6
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, (iy + 9)
	ld	(ix - 3), hl
	ld	a, (iy + 31)
	ld	(ix - 4), a
	ld	a, (iy + 34)
	ld	b, 0
	ld	c, a
	ld	(ix - 6), c
	ld	(ix - 5), b
	ld	l, b
	ld	h, c
	ld	e, (iy + 35)
	ld	d, b
	add.sis	hl, de
	ld	bc, (iy)
	ld	de, (iy + 12)
	push	hl
	push	de
	push	bc
	pop	hl
	call	__indcallhl
	ld	l, a
	pop	de
	pop	de
	push	hl
	ld	l, (ix - 4)                     ; 1-byte Folded Reload
	push	hl
	ld	hl, (ix + 6)
	push	hl
	ld	hl, (ix - 3)
	call	__indcallhl
	ld	c, (ix - 6)
	ld	b, (ix - 5)
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	ld	a, (iy + 34)
	ld	d, b
	ld	e, a
	ld	l, b
	ld	h, e
	ld	e, (iy + 35)
	ld	d, b
	add.sis	hl, de
	inc.sis	hl
	ld	a, h
	ld	(iy + 34), a
	ld	a, l
	ld	(iy + 35), a
	dec	(iy + 30)
	ld	l, (iy + 30)
	ld	a, (iy + 46)
	ld	e, -67
	and	a, e
	ld	e, a
	ld	a, l
	or	a, a
	jr	z, .LBB46_2
; %bb.1:
	ld	a, 64
	jr	.LBB46_3
	.local	.LBB46_2
.LBB46_2:
	ld	a, 66
	.local	.LBB46_3
.LBB46_3:
	add	a, e
	ld	e, a
	ld	(iy + 46), e
	ld	c, l
	ld	l, b
	ld	h, c
	ld	c, (iy + 31)
	add.sis	hl, bc
	inc.sis	hl
	ld	(iy + 27), l
	ld	(iy + 28), h
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end46
.Lfunc_end46:
	.size	_outi, .Lfunc_end46-_outi
                                        ; -- End function
	.section	.text._outd,"ax",@progbits
	.type	_outd,@function                 ; -- Begin function outd
_outd:                                  ; @outd
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	push	hl
	call	_outi
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld.sis	bc, -2
	add.sis	hl, bc
	ld	a, h
	ld	(iy + 34), a
	ld	a, l
	ld	(iy + 35), a
	ld	e, (iy + 30)
	ld	l, d
	ld	h, e
	ld	e, (iy + 31)
	add.sis	hl, de
	add.sis	hl, bc
	ld	(iy + 27), l
	ld	(iy + 28), h
	pop	ix
	ret
	.local	.Lfunc_end47
.Lfunc_end47:
	.size	_outd, .Lfunc_end47-_outd
                                        ; -- End function
	.section	.text._sbchl,"ax",@progbits
	.type	_sbchl,@function                ; -- Begin function sbchl
_sbchl:                                 ; @sbchl
; %bb.0:
	ld	hl, -5
	call	__frameset
	ld	iy, (ix + 6)
	ld	c, (iy + 34)
	ld	b, 0
	ld	l, b
	ld	h, c
	ld	e, (iy + 35)
	ld	(ix - 2), c
	ld	(ix - 1), b
	ld	d, b
	add.sis	hl, de
	ld	(ix - 5), l
	ld	(ix - 4), h
	ld	a, (iy + 46)
	cp	a, b
	call	pe, __setflag
	ld	hl, -1
	ld	bc, 0
	jp	m, .LBB48_2
; %bb.1:
	push	bc
	pop	hl
	.local	.LBB48_2
.LBB48_2:
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	l, e
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_subb
	ld	(ix - 3), a                     ; 1-byte Folded Spill
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 9)
	ld	l, h
	ld	iy, (ix + 6)
	ld	a, (iy + 46)
	cp	a, 0
	call	pe, __setflag
	ld	de, -1
	jp	m, .LBB48_4
; %bb.3:
	ld	de, 0
	.local	.LBB48_4
.LBB48_4:
	push	de
	push	hl
	ld	l, (ix - 2)
	ld	h, (ix - 1)
                                        ; kill: def $l killed $l killed $hl def $uhl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_subb
	ld	e, a
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	c, (ix - 2)
	ld	b, (ix - 1)
	ld	c, e
	ld	l, b
	ld	h, c
	ld	c, (ix - 3)                     ; 1-byte Folded Reload
	add.sis	hl, bc
	ld	iy, (ix + 6)
	ld	d, (iy + 46)
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jr	z, .LBB48_6
; %bb.5:
	ld	h, 0
	jr	.LBB48_7
	.local	.LBB48_6
.LBB48_6:
	ld	h, 2
	.local	.LBB48_7
.LBB48_7:
	ld	c, (ix - 5)
	ld	b, (ix - 4)
	inc.sis	bc
	ld	(iy + 27), c
	ld	(iy + 28), b
	ld	a, e
	ld	b, 7
	call	__bshru
	ld	l, a
	ld	c, -4
	ld	a, d
	and	a, c
	ld	c, a
	ld	a, c
	add	a, l
	ld	l, a
	ld	a, l
	add	a, h
	ld	l, a
	ld	(iy + 46), l
	ld	(iy + 34), e
	ld	a, (ix - 3)
	ld	(iy + 35), a
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end48
.Lfunc_end48:
	.size	_sbchl, .Lfunc_end48-_sbchl
                                        ; -- End function
	.section	.text._adchl,"ax",@progbits
	.type	_adchl,@function                ; -- Begin function adchl
_adchl:                                 ; @adchl
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	bc, (ix + 9)
	ld	a, (iy + 34)
	ld	d, 0
	ld	e, a
	ld	l, d
	ld	h, e
	ld	e, (iy + 35)
	add.sis	hl, de
	ld	a, (iy + 46)
	cp	a, d
	call	pe, __setflag
	jp	m, .LBB49_2
; %bb.1:
	ld	de, 0
	jr	.LBB49_3
	.local	.LBB49_2
.LBB49_2:
	ld	de, -1
	.local	.LBB49_3
.LBB49_3:
	push	de
	push	bc
	push	hl
	push	iy
	call	_addw
	ld	iy, (ix + 6)
	ld	e, l
	ld	d, h
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	c, 15
	ld	l, e
	ld	h, d
	call	__sshru
                                        ; kill: def $l killed $l killed $hl
	ld	a, (iy + 46)
	ld	c, -4
	and	a, c
	ld	c, a
	ld	a, c
	add	a, l
	ld	c, a
	push.sis	de
	pop.sis	hl
	add.sis	hl, de
	or	a, a
	sbc.sis	hl, de
	jr	z, .LBB49_5
; %bb.4:
	ld	l, 0
	jr	.LBB49_6
	.local	.LBB49_5
.LBB49_5:
	ld	l, 2
	.local	.LBB49_6
.LBB49_6:
	ld	a, c
	add	a, l
	ld	l, a
	ld	(iy + 46), l
	ld	a, d
	ld	(iy + 34), a
	ld	(iy + 35), e
	pop	ix
	ret
	.local	.Lfunc_end49
.Lfunc_end49:
	.size	_adchl, .Lfunc_end49-_adchl
                                        ; -- End function
	.section	.text._addiz,"ax",@progbits
	.type	_addiz,@function                ; -- Begin function addiz
_addiz:                                 ; @addiz
; %bb.0:
	ld	hl, -1
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, (ix + 9)
	ld	a, (iy + 46)
	ld	(ix - 1), a
	ld	de, (hl)
	ld	bc, 0
	push	bc
	ld	hl, (ix + 12)
	push	hl
	push	de
	push	iy
	call	_addw
	pop	de
	pop	de
	pop	de
	pop	de
	ld	iy, (ix + 9)
	ld	(iy), l
	ld	(iy + 1), h
	ld	iy, (ix + 6)
	ld	a, (iy + 46)
	ld	l, -36
	and	a, l
	ld	l, a
	ld	e, 35
	ld	a, (ix - 1)
	and	a, e
	ld	e, a
	ld	a, l
	add	a, e
	ld	l, a
	ld	(iy + 46), l
	inc	sp
	pop	ix
	ret
	.local	.Lfunc_end50
.Lfunc_end50:
	.size	_addiz, .Lfunc_end50-_addiz
                                        ; -- End function
	.section	.rodata._.str,"a",@progbits
	.balign	1
	.local	_.str
_.str:
	.asciz	"PC: %04X, AF: %04X, BC: %04X, DE: %04X, HL: %04X, SP: %04X, IX: %04X, IY: %04X, I: %02X, R: %02X"

	.section	.rodata._.str.1,"a",@progbits
	.balign	1
	.local	_.str.1
_.str.1:
	.asciz	"\t(%02X %02X %02X %02X), cyc: %lu\n"

	.section	.rodata._.str.2,"a",@progbits
	.balign	1
	.local	_.str.2
_.str.2:
	.asciz	"unsupported interrupt mode %d\n"

	.section	.rodata._cyc_00,"a",@progbits
	.balign	1
	.local	_cyc_00
_cyc_00:
	.ascii	"\004\n\007\006\004\004\007\004\004\013\007\006\004\004\007\004\b\n\007\006\004\004\007\004\f\013\007\006\004\004\007\004\007\n\020\006\004\004\007\004\007\013\020\006\004\004\007\004\007\n\r\006\013\013\n\004\007\013\r\006\004\004\007\004\004\004\004\004\004\004\007\004\004\004\004\004\004\004\007\004\004\004\004\004\004\004\007\004\004\004\004\004\004\004\007\004\004\004\004\004\004\004\007\004\004\004\004\004\004\004\007\004\007\007\007\007\007\007\004\007\004\004\004\004\004\004\007\004\004\004\004\004\004\004\007\004\004\004\004\004\004\004\007\004\004\004\004\004\004\004\007\004\004\004\004\004\004\004\007\004\004\004\004\004\004\004\007\004\004\004\004\004\004\004\007\004\004\004\004\004\004\004\007\004\004\004\004\004\004\004\007\004\005\n\n\n\n\013\007\013\005\n\n\000\n\021\007\013\005\n\n\013\n\013\007\013\005\004\n\013\n\000\007\013\005\n\n\023\n\013\007\013\005\004\n\004\n\000\007\013\005\n\n\004\n\013\007\013\005\006\n\004\n\000\007\013"

	.section	.rodata._cyc_ed,"a",@progbits
	.balign	1
	.local	_cyc_ed
_cyc_ed:
	.ascii	"\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\f\f\017\024\b\016\b\t\f\f\017\024\b\016\b\t\f\f\017\024\b\016\b\t\f\f\017\024\b\016\b\t\f\f\017\024\b\016\b\022\f\f\017\024\b\016\b\022\f\f\017\024\b\016\b\b\f\f\017\024\b\016\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\020\020\020\020\b\b\b\b\020\020\020\020\b\b\b\b\020\020\020\020\b\b\b\b\020\020\020\020\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"

	.section	.rodata._.str.4,"a",@progbits
	.balign	1
	.local	_.str.4
_.str.4:
	.asciz	"unknown ED opcode: %02X\n"

	.section	.rodata._cyc_ddfd,"a",@progbits
	.balign	1
	.local	_cyc_ddfd
_cyc_ddfd:
	.ascii	"\004\004\004\004\004\004\004\004\004\017\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\017\004\004\004\004\004\004\004\016\024\n\b\b\013\004\004\017\024\n\b\b\013\004\004\004\004\004\027\027\023\004\004\017\004\004\004\004\004\004\004\004\004\004\b\b\023\004\004\004\004\004\b\b\023\004\004\004\004\004\b\b\023\004\004\004\004\004\b\b\023\004\b\b\b\b\b\b\023\b\b\b\b\b\b\b\023\b\023\023\023\023\023\023\004\023\004\004\004\004\b\b\023\004\004\004\004\004\b\b\023\004\004\004\004\004\b\b\023\004\004\004\004\004\b\b\023\004\004\004\004\004\b\b\023\004\004\004\004\004\b\b\023\004\004\004\004\004\b\b\023\004\004\004\004\004\b\b\023\004\004\004\004\004\b\b\023\004\004\004\004\004\004\004\004\004\004\004\004\000\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\016\004\027\004\017\004\004\004\b\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\n\004\004\004\004\004\004"

	.ident	"clang version 17.0.6 (https://github.com/CE-Programming/llvm-project 597d8a64bab48229cd5aed3ba398ea4cd6244428)"
	.extern	__ishru
	.extern	__sor
	.extern	__Unwind_SjLj_Unregister
	.extern	__ladd
	.extern	__indcallhl
	.extern	__iand
	.extern	__setflag
	.extern	_printf
	.extern	__ixor
	.extern	__bbitrev
	.extern	_fprintf
	.extern	__bshru
	.extern	__sand
	.extern	__sshru
	.extern	__frameset
	.extern	__frameset0
	.extern	__Unwind_SjLj_Register
	.extern	__bshl
	.extern	__ishl
