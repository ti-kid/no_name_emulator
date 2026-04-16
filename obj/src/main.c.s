	.section	.text,"ax",@progbits
	.assume	ADL = 1
	.file	"main.c"
	.section	.text._send_screen_mode,"ax",@progbits
	.globl	_send_screen_mode               ; -- Begin function send_screen_mode
	.type	_send_screen_mode,@function
_send_screen_mode:                      ; @send_screen_mode
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	c, (ix + 9)
	ld	a, c
	cp	a, 2
	jr	nc, .LBB0_3
; %bb.1:
	ld	de, 17159
	.local	.LBB0_2
.LBB0_2:
	add	hl, de
	ld	(hl), c
	jr	.LBB0_7
	.local	.LBB0_3
.LBB0_3:
	ld	a, c
	cp	a, 2
	jr	nz, .LBB0_5
; %bb.4:
	ld	de, 17158
	add	hl, de
	ld	(hl), 0
	jr	.LBB0_7
	.local	.LBB0_5
.LBB0_5:
	ld	a, c
	cp	a, 3
	jr	nz, .LBB0_8
; %bb.6:
	ld	de, 17158
	add	hl, de
	ld	(hl), 1
	.local	.LBB0_7
.LBB0_7:
	pop	ix
	ret
	.local	.LBB0_8
.LBB0_8:
	ld	a, c
	cp	a, 8
	jr	nc, .LBB0_10
; %bb.9:
	ld	de, 17157
	jr	.LBB0_2
	.local	.LBB0_10
.LBB0_10:
	ld	d, -32
	ld	a, c
	and	a, d
	ld	e, a
	cp	a, 32
	jr	nz, .LBB0_12
; %bb.11:
	ld	a, c
	add	a, d
	ld	c, a
	ld	de, 17155
	jr	.LBB0_2
	.local	.LBB0_12
.LBB0_12:
	ld	a, c
	cp	a, -64
	call	pe, __setflag
	jp	p, .LBB0_7
; %bb.13:
	ld	e, -128
	ld	a, c
	xor	a, e
	ld	c, a
	ld	de, 17156
	jr	.LBB0_2
	.local	.Lfunc_end0
.Lfunc_end0:
	.size	_send_screen_mode, .Lfunc_end0-_send_screen_mode
                                        ; -- End function
	.section	.text._send_screen_data,"ax",@progbits
	.globl	_send_screen_data               ; -- Begin function send_screen_data
	.type	_send_screen_data,@function
_send_screen_data:                      ; @send_screen_data
; %bb.0:
	ld	hl, -26
	call	__frameset
	ld	hl, (ix + 6)
	ld	bc, 7
	ld	iy, 0
	ld	de, 17159
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	nz, .LBB1_2
; %bb.1:
	ld	bc, 5
	.local	.LBB1_2
.LBB1_2:
	ld	a, -1
	ld	(ix - 23), a
	ld	de, 17155
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 26), hl
	inc	de
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 22), hl
	ld	de, -1
	push	bc
	pop	hl
	.local	.LBB1_3
.LBB1_3:                                ; =>This Inner Loop Header: Depth=1
	ld	(ix - 3), hl
	or	a, a
	sbc	hl, de
	jp	z, .LBB1_8
; %bb.4:                                ;   in Loop: Header=BB1_3 Depth=1
	ld	hl, (ix + 6)
	ld	de, 17155
	add	hl, de
	ld	a, (hl)
	push	bc
	pop	hl
	ld	de, 0
	push	de
	pop	bc
	ld	c, a
	ld	(ix - 9), hl
	call	__imulu
	push	hl
	pop	bc
	ld	(ix - 12), bc
	ld	(ix - 6), iy
	add	iy, bc
	ld	hl, (ix + 6)
	ld	bc, 17156
	add	hl, bc
	ld	a, (hl)
	ld	hl, (ix - 12)
	dec	c
	call	__ishru
	push	de
	pop	bc
	ld	c, a
	ld	(ix - 12), bc
	ld	b, a
	ld	c, 12
	call	__bdivu
	ld	e, a
	add	hl, de
	ld	(ix - 18), hl
	lea	hl, iy + 0
	ld	bc, 255
	call	__iand
	ld	(ix - 15), hl
	lea	hl, iy + 0
	ld	bc, 7
	call	__iand
                                        ; kill: def $l killed $l killed $uhl
	ld	de, 1
	ld	a, e
	sub	a, l
	ld	c, a
	push	de
	pop	hl
	call	__ishl
	push	hl
	pop	iy
	ex	de, hl
	ld	bc, (ix - 3)
                                        ; kill: def $c killed $c killed $ubc
	call	__ishl
	ld	c, (ix + 9)
	ld	a, l
	and	a, c
	ld	c, a
	ld	hl, (ix + 6)
	ld	de, (ix - 18)
	add	hl, de
	ld	de, 16384
	add	hl, de
	ld	(ix - 18), hl
	push	af
	ld	a, iyl
	ld	(ix - 19), a                    ; 1-byte Folded Spill
	pop	af
	or	a, a
	jr	nz, .LBB1_6
; %bb.5:                                ;   in Loop: Header=BB1_3 Depth=1
	ld	hl, (ix - 12)
	push	hl
	ld	hl, (ix - 15)
	push	hl
	call	_unplot
	pop	hl
	pop	hl
	ld	hl, (ix - 18)
	ld	d, (hl)
	ld	c, -1
	ld	a, (ix - 19)
	xor	a, c
	ld	e, a
	ld	a, d
	and	a, e
	jr	.LBB1_7
	.local	.LBB1_6
.LBB1_6:                                ;   in Loop: Header=BB1_3 Depth=1
	ld	hl, (ix - 12)
	push	hl
	ld	hl, (ix - 15)
	push	hl
	call	_plot
	pop	hl
	pop	hl
	ld	hl, (ix - 18)
	ld	a, (hl)
	ld	e, (ix - 19)
	or	a, e
	.local	.LBB1_7
.LBB1_7:                                ;   in Loop: Header=BB1_3 Depth=1
	ld	e, a
	ld	(hl), e
	ld	hl, (ix - 3)
	dec	hl
	ld	iy, (ix - 6)
	inc	iy
	ld	bc, (ix - 9)
	ld	de, -1
	jp	.LBB1_3
	.local	.LBB1_8
.LBB1_8:
	ld	de, 17157
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	ld	l, -4
	add	a, l
	ld	l, a
	ld	de, 0
	cp	a, 4
	jr	nc, .LBB1_14
; %bb.9:
	ld	e, l
	ld	hl, JTI1_0
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB1_10
.LBB1_10:
	ld	hl, (ix - 26)
	ld	(ix - 22), hl
	jr	.LBB1_13
	.local	.LBB1_11
.LBB1_11:
	ld	hl, (ix - 26)
	ld	(ix - 22), hl
	.local	.LBB1_12
.LBB1_12:
	ld	c, 1
	ld	(ix - 23), c                    ; 1-byte Folded Spill
	.local	.LBB1_13
.LBB1_13:
	ld	iy, (ix - 22)
	ld	a, (iy)
	ld	l, (ix - 23)
	add	a, l
	ld	l, a
	ld	(iy), l
	.local	.LBB1_14
.LBB1_14:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end1
.Lfunc_end1:
	.size	_send_screen_data, .Lfunc_end1-_send_screen_data
	.section	.rodata._send_screen_data,"a",@progbits
JTI1_0:
	d24	.LBB1_13
	d24	.LBB1_12
	d24	.LBB1_10
	d24	.LBB1_11
                                        ; -- End function
	.section	.text._get_screen_data,"ax",@progbits
	.globl	_get_screen_data                ; -- Begin function get_screen_data
	.type	_get_screen_data,@function
_get_screen_data:                       ; @get_screen_data
; %bb.0:
	ld	hl, -9
	call	__frameset
	ld	hl, (ix + 6)
	ld	iy, 6
	ld	bc, 8
	ld	de, 17159
	add	hl, de
	ld	a, (hl)
	or	a, a
	ld	(ix - 3), iy
	jr	z, .LBB2_2
; %bb.1:
	ld	(ix - 3), bc
	.local	.LBB2_2
.LBB2_2:
	ld	de, 17155
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	ld	iy, 0
	lea	bc, iy + 0
	ld	c, a
	ld	hl, (ix - 3)
	call	__imulu
	push	hl
	pop	de
	ld	(ix - 6), de
	ld	bc, 17156
	ld	hl, (ix + 6)
	add	hl, bc
	ld	a, (hl)
	ld	iyl, a
	lea	hl, iy + 0
	ld	bc, 12
	call	__imulu
	push	hl
	pop	iy
	ld	c, 3
	ex	de, hl
	call	__ishru
	push	hl
	pop	de
	add	iy, de
	lea	de, iy + 0
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	hl, (ix - 6)
	ld	bc, 6
	call	__iand
	push	hl
	pop	bc
	add	iy, de
	ld	de, 16384
	ld	(ix - 9), iy
	lea	hl, iy + 0
	add	hl, de
	ld	a, (hl)
	ld	(ix - 6), a
	push	bc
	pop	iy
	ld	de, (ix - 3)
	add	iy, de
	ld	a, iyl
	cp	a, 9
	jp	nc, .LBB2_4
; %bb.3:
	or	a, a
	sbc	hl, hl
	ld	l, (ix - 6)                     ; 1-byte Folded Reload
	ld	c, iyl
	ld	de, 8
	ld	a, e
	sub	a, c
	ld	c, a
	call	__ishru
	push	hl
	pop	de
	scf
	sbc	hl, hl
	ld	bc, (ix - 3)
                                        ; kill: def $c killed $c killed $ubc
	call	__ishl
	call	__inot
	push	hl
	pop	bc
	ex	de, hl
	call	__iand
	jp	.LBB2_5
	.local	.LBB2_4
.LBB2_4:
	ld	de, 16385
	ld	hl, (ix - 9)
	add	hl, de
	ld	a, (hl)
	ld	hl, 8
	or	a, a
	sbc	hl, bc
	push	hl
	pop	bc
	ld	hl, (ix - 3)
	or	a, a
	sbc	hl, bc
	push	hl
	pop	iy
	ld	de, 0
	ld	e, (ix - 6)                     ; 1-byte Folded Reload
	scf
	sbc	hl, hl
                                        ; kill: def $c killed $c killed $ubc
	call	__ishl
	call	__inot
	push	de
	pop	bc
	call	__iand
	ld	c, iyl
	call	__ishl
	ld	(ix - 3), hl
	ld	e, a
	ex	de, hl
	ld	e, iyl
	ex	de, hl
	ld	bc, 8
	ld	a, c
	sub	a, l
	ld	c, a
	ex	de, hl
	call	__ishru
	ld	bc, (ix - 3)
	call	__ior
	.local	.LBB2_5
.LBB2_5:
	ld	a, l
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end2
.Lfunc_end2:
	.size	_get_screen_data, .Lfunc_end2-_get_screen_data
                                        ; -- End function
	.section	.text._zread,"ax",@progbits
	.globl	_zread                          ; -- Begin function zread
	.type	_zread,@function
_zread:                                 ; @zread
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	bc, (ix + 9)
	ld	de, 0
	ld	e, c
	ld	d, b
	add	hl, de
	ld	a, (hl)
	pop	ix
	ret
	.local	.Lfunc_end3
.Lfunc_end3:
	.size	_zread, .Lfunc_end3-_zread
                                        ; -- End function
	.section	.text._zwrite,"ax",@progbits
	.globl	_zwrite                         ; -- Begin function zwrite
	.type	_zwrite,@function
_zwrite:                                ; @zwrite
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	bc, (ix + 9)
	ld	a, (ix + 12)
	ld	de, 0
	ld	e, c
	ld	d, b
	add	hl, de
	ld	(hl), a
	pop	ix
	ret
	.local	.Lfunc_end4
.Lfunc_end4:
	.size	_zwrite, .Lfunc_end4-_zwrite
                                        ; -- End function
	.section	.text._in,"ax",@progbits
	.globl	_in                             ; -- Begin function in
	.type	_in,@function
_in:                                    ; @in
; %bb.0:
	call	__frameset0
	ld	a, (ix + 9)
	ld	l, 0
	ld	e, -16
	add	a, e
	ld	e, a
	ld	bc, 0
	cp	a, 4
	jr	nc, .LBB5_4
; %bb.1:
	ld	iy, (ix + 6)
	ld	iy, (iy + 12)
	ld	c, e
	ld	hl, JTI5_0
	add	hl, bc
	add	hl, bc
	add	hl, bc
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB5_2
.LBB5_2:
	ld	b, 4
	ld	de, 17157
	lea	hl, iy + 0
	add	hl, de
	ld	a, (hl)
	and	a, b
	ld	c, a
	inc	de
	lea	hl, iy + 0
	add	hl, de
	ld	a, (hl)
	call	__bshl
	add	a, c
	ld	l, a
	inc	de
	add	iy, de
	ld	a, (iy)
	ld	b, 6
	call	__bshl
	ld	e, a
	ld	a, l
	or	a, e
	ld	l, a
	jr	.LBB5_4
	.local	.LBB5_3
.LBB5_3:
	push	iy
	call	_get_screen_data
	ld	l, a
	pop	de
	.local	.LBB5_4
.LBB5_4:
	ld	a, l
	pop	ix
	ret
	.local	.Lfunc_end5
.Lfunc_end5:
	.size	_in, .Lfunc_end5-_in
	.section	.rodata._in,"a",@progbits
JTI5_0:
	d24	.LBB5_2
	d24	.LBB5_3
	d24	.LBB5_2
	d24	.LBB5_3
                                        ; -- End function
	.section	.text._out,"ax",@progbits
	.globl	_out                            ; -- Begin function out
	.type	_out,@function
_out:                                   ; @out
; %bb.0:
	call	__frameset0
	ld	a, (ix + 9)
	ld	l, -16
	add	a, l
	ld	l, a
	ld	de, 0
	cp	a, 4
	jr	nc, .LBB6_5
; %bb.1:
	ld	iy, (ix + 6)
	ld	a, (ix + 12)
	ld	bc, (iy + 12)
	ld	e, l
	ld	hl, JTI6_0
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB6_2
.LBB6_2:
	ld	l, a
	push	hl
	push	bc
	call	_send_screen_mode
	jr	.LBB6_4
	.local	.LBB6_3
.LBB6_3:
	ld	l, a
	push	hl
	push	bc
	call	_send_screen_data
	.local	.LBB6_4
.LBB6_4:
	pop	hl
	pop	hl
	.local	.LBB6_5
.LBB6_5:
	pop	ix
	ret
	.local	.Lfunc_end6
.Lfunc_end6:
	.size	_out, .Lfunc_end6-_out
	.section	.rodata._out,"a",@progbits
JTI6_0:
	d24	.LBB6_2
	d24	.LBB6_3
	d24	.LBB6_2
	d24	.LBB6_3
                                        ; -- End function
	.section	.text._sys_init,"ax",@progbits
	.globl	_sys_init                       ; -- Begin function sys_init
	.type	_sys_init,@function
_sys_init:                              ; @sys_init
; %bb.0:
	call	__frameset0
	call	_graphics_init
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB7_2
; %bb.1:
	ld	hl, (ix + 6)
	push	hl
	call	_z80_init
	pop	hl
	ld	iy, (ix + 6)
	ld	hl, _zread
	ld	(iy), hl
	ld	hl, _zwrite
	ld	(iy + 3), hl
	ld	hl, _in
	ld	(iy + 6), hl
	ld	hl, _out
	ld	(iy + 9), hl
	ld	hl, (ix + 9)
	ld	(iy + 12), hl
	or	a, a
	sbc	hl, hl
	jr	.LBB7_3
	.local	.LBB7_2
.LBB7_2:
	ld	hl, 1
	.local	.LBB7_3
.LBB7_3:
	pop	ix
	ret
	.local	.Lfunc_end7
.Lfunc_end7:
	.size	_sys_init, .Lfunc_end7-_sys_init
                                        ; -- End function
	.section	.text._sys_exit,"ax",@progbits
	.globl	_sys_exit                       ; -- Begin function sys_exit
	.type	_sys_exit,@function
_sys_exit:                              ; @sys_exit
; %bb.0:
	jp	_graphics_exit
	.local	.Lfunc_end8
.Lfunc_end8:
	.size	_sys_exit, .Lfunc_end8-_sys_exit
                                        ; -- End function
	.section	.text._main,"ax",@progbits
	.globl	_main                           ; -- Begin function main
	.type	_main,@function
_main:                                  ; @main
; %bb.0:
	ld	hl, -17223
	call	__frameset
	ld	bc, -17217
	lea	iy, ix + 0
	add	iy, bc
	lea	de, iy + 0
	lea	hl, ix - 57
	ld	bc, -17220
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), hl
	push	de
	pop	iy
	lea	hl, iy + 0
	ld	(iy + 0), 0
	push	hl
	pop	iy
	lea	de, iy + 0
	inc	de
	ld	bc, 17159
	lea	hl, iy + 0
	ldir
	ld	de, -17223
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	iy
	ld	de, -17220
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	_sys_init
	pop	de
	pop	de
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB9_4
; %bb.1:
	ld	hl, _test_program
	ld	bc, 47
	ld	(ix - 3), bc
	ld	bc, -17223
	lea	iy, ix + 0
	add	iy, bc
	ld	de, (iy + 0)
	ld	bc, (ix - 3)
	ldir
	.local	.LBB9_2
.LBB9_2:                                ; =>This Inner Loop Header: Depth=1
	call	_os_GetCSC
	or	a, a
	jr	nz, .LBB9_5
; %bb.3:                                ;   in Loop: Header=BB9_2 Depth=1
	ld	de, -17220
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	_z80_step
	pop	hl
	jr	.LBB9_2
	.local	.LBB9_4
.LBB9_4:
	ld	iy, _.str
	ld	de, 16
	ld	hl, 1
	ld	bc, 2
	push	bc
	push	hl
	push	de
	push	iy
	call	_fwrite
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 1
	jr	.LBB9_6
	.local	.LBB9_5
.LBB9_5:
	call	_graphics_exit
	or	a, a
	sbc	hl, hl
	.local	.LBB9_6
.LBB9_6:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end9
.Lfunc_end9:
	.size	_main, .Lfunc_end9-_main
                                        ; -- End function
	.section	.data._test_program,"aw",@progbits
	.balign	1
	.globl	_test_program
_test_program:
	.asciz	"\257\323\020>\005\323\020>!\323\020>\201\323\020>\003\323\020\006\007!'\000~#\323\021\020\372>9\333\021=\323\021\030\376\000\022\022\000\000!\036"

	.section	.rodata._.str,"a",@progbits
	.balign	1
	.local	_.str
_.str:
	.asciz	"sys_init failed\n"

	.ident	"clang version 17.0.6 (https://github.com/CE-Programming/llvm-project 597d8a64bab48229cd5aed3ba398ea4cd6244428)"
	.extern	__ior
	.extern	_os_GetCSC
	.extern	__bdivu
	.extern	__inot
	.extern	__ishru
	.extern	__frameset0
	.extern	__Unwind_SjLj_Register
	.extern	_unplot
	.extern	__Unwind_SjLj_Unregister
	.extern	_fwrite
	.extern	__bshl
	.extern	_z80_init
	.extern	_z80_step
	.extern	_graphics_exit
	.extern	__frameset
	.extern	__ishl
	.extern	_graphics_init
	.extern	_plot
	.extern	__iand
	.extern	__imulu
	.extern	__setflag
