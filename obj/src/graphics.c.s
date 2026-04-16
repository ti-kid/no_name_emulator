	.section	.text,"ax",@progbits
	.assume	ADL = 1
	.file	"graphics.c"
	.section	.text._unplot,"ax",@progbits
	.globl	_unplot                         ; -- Begin function unplot
	.type	_unplot,@function
_unplot:                                ; @unplot
; %bb.0:
	ld	hl, -11
	call	__frameset
	ld	h, (ix + 9)
	ld	l, 3
	ld	(ix - 3), l
	ld	(ix - 2), h
	xor	a, a
	ld	(ix - 1), a
	ld	hl, -2
	push	hl
	call	_gfx_SetColor
	ld	de, 9
	pop	hl
	ld	hl, (ix + 6)
	ld	bc, 3
	call	__imulu
	ld	(ix - 9), hl
	ld	l, (ix - 3)
	ld	h, (ix - 2)
	mlt	hl
	ld	(ix - 11), l
	ld	(ix - 10), h
	.local	.LBB0_1
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	add	hl, de
	or	a, a
	sbc	hl, de
	jr	z, .LBB0_3
; %bb.2:                                ;   in Loop: Header=BB0_1 Depth=1
	ld	b, (ix - 1)                     ; 1-byte Folded Reload
	ld	(ix - 6), de
	ld	e, (ix - 3)
	ld	d, (ix - 2)
	ld	c, e
	call	__bdivu
	ld	d, a
	ld	l, e
	ld	h, d
	mlt	hl
	ld	a, (ix - 1)
	sub	a, l
	ld	l, a
	ld	bc, 0
	ld	c, l
	ld	hl, (ix - 9)
	add	hl, bc
	ld	(ix - 3), e
	ld	(ix - 2), d
	ld	c, (ix - 11)
	ld	b, (ix - 10)
	ld	a, d
	add	a, c
	ld	e, a
	push	de
	push	hl
	call	_gfx_SetPixel
	ld	de, (ix - 6)
	pop	hl
	pop	hl
	dec	de
	ld	a, (ix - 1)
	inc	a
	ld	(ix - 1), a
	jr	.LBB0_1
	.local	.LBB0_3
.LBB0_3:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end0
.Lfunc_end0:
	.size	_unplot, .Lfunc_end0-_unplot
                                        ; -- End function
	.section	.text._plot,"ax",@progbits
	.globl	_plot                           ; -- Begin function plot
	.type	_plot,@function
_plot:                                  ; @plot
; %bb.0:
	ld	hl, -11
	call	__frameset
	ld	h, (ix + 9)
	ld	l, 3
	ld	(ix - 3), l
	ld	(ix - 2), h
	xor	a, a
	ld	(ix - 1), a
	scf
	sbc	hl, hl
	push	hl
	call	_gfx_SetColor
	ld	de, 9
	pop	hl
	ld	hl, (ix + 6)
	ld	bc, 3
	call	__imulu
	ld	(ix - 9), hl
	ld	l, (ix - 3)
	ld	h, (ix - 2)
	mlt	hl
	ld	(ix - 11), l
	ld	(ix - 10), h
	.local	.LBB1_1
.LBB1_1:                                ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	add	hl, de
	or	a, a
	sbc	hl, de
	jr	z, .LBB1_3
; %bb.2:                                ;   in Loop: Header=BB1_1 Depth=1
	ld	b, (ix - 1)                     ; 1-byte Folded Reload
	ld	(ix - 6), de
	ld	e, (ix - 3)
	ld	d, (ix - 2)
	ld	c, e
	call	__bdivu
	ld	d, a
	ld	l, e
	ld	h, d
	mlt	hl
	ld	a, (ix - 1)
	sub	a, l
	ld	l, a
	ld	bc, 0
	ld	c, l
	ld	hl, (ix - 9)
	add	hl, bc
	ld	(ix - 3), e
	ld	(ix - 2), d
	ld	c, (ix - 11)
	ld	b, (ix - 10)
	ld	a, d
	add	a, c
	ld	e, a
	push	de
	push	hl
	call	_gfx_SetPixel
	ld	de, (ix - 6)
	pop	hl
	pop	hl
	dec	de
	ld	a, (ix - 1)
	inc	a
	ld	(ix - 1), a
	jr	.LBB1_1
	.local	.LBB1_3
.LBB1_3:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end1
.Lfunc_end1:
	.size	_plot, .Lfunc_end1-_plot
                                        ; -- End function
	.section	.text._graphics_init,"ax",@progbits
	.globl	_graphics_init                  ; -- Begin function graphics_init
	.type	_graphics_init,@function
_graphics_init:                         ; @graphics_init
; %bb.0:
	call	_gfx_Begin
	ld.sis	hl, 20112
	ld	iy, -1899524
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 8486
	ld	iy, -1899522
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, -2
	push	hl
	call	_gfx_FillScreen
	pop	hl
	or	a, a
	sbc	hl, hl
	ret
	.local	.Lfunc_end2
.Lfunc_end2:
	.size	_graphics_init, .Lfunc_end2-_graphics_init
                                        ; -- End function
	.section	.text._graphics_exit,"ax",@progbits
	.globl	_graphics_exit                  ; -- Begin function graphics_exit
	.type	_graphics_exit,@function
_graphics_exit:                         ; @graphics_exit
; %bb.0:
	jp	_gfx_End
	.local	.Lfunc_end3
.Lfunc_end3:
	.size	_graphics_exit, .Lfunc_end3-_graphics_exit
                                        ; -- End function
	.ident	"clang version 17.0.6 (https://github.com/CE-Programming/llvm-project 597d8a64bab48229cd5aed3ba398ea4cd6244428)"
	.extern	__Unwind_SjLj_Unregister
	.extern	_gfx_FillScreen
	.extern	_gfx_SetColor
	.extern	_gfx_End
	.extern	_gfx_SetPixel
	.extern	__frameset
	.extern	__bdivu
	.extern	__imulu
	.extern	_gfx_Begin
	.extern	__Unwind_SjLj_Register
