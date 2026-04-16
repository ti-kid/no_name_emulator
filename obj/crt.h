/* generated from: obj/NNE.o */
#define HAS_INIT_ARRAY 0
#define HAS_FINI_ARRAY 0
#define HAS_CLOCK 0
#define HAS_ABORT 0
#define HAS_RUN_PRGM 0
#define HAS_MAIN_ARGC_ARGV 0
#define HAS_ATEXIT 0
#ifdef __ASSEMBLER__
.macro LIBLOAD_LIBS
	.global __libload_library_FILEIOC
	.type __libload_library_FILEIOC, @object
__libload_library_FILEIOC:
	.db 0xC0, "FILEIOC", 0, 8
	.global _ti_Write
	.type _ti_Write, @function
_ti_Write:
	jp 12
	.global _ti_PutC
	.type _ti_PutC, @function
_ti_PutC:
	jp 21
	.global __libload_library_GRAPHX
	.type __libload_library_GRAPHX, @object
__libload_library_GRAPHX:
	.db 0xC0, "GRAPHX", 0, 13
	.global _gfx_Begin
	.type _gfx_Begin, @function
_gfx_Begin:
	jp 0
	.global _gfx_End
	.type _gfx_End, @function
_gfx_End:
	jp 3
	.global _gfx_SetColor
	.type _gfx_SetColor, @function
_gfx_SetColor:
	jp 6
	.global _gfx_FillScreen
	.type _gfx_FillScreen, @function
_gfx_FillScreen:
	jp 15
	.global _gfx_SetPixel
	.type _gfx_SetPixel, @function
_gfx_SetPixel:
	jp 18
.endm
#endif
#define HAS_LIBLOAD 1
