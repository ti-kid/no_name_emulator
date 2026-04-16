#include "inc.h"

void unplot(int x, int y) {
	gfx_SetColor(0xFE);
    for (int i=0; i<SIZE_F*SIZE_F; i++) {
		gfx_SetPixel(x * SIZE_F + (i % SIZE_F), y * SIZE_F + (i / SIZE_F));
    }
}

void plot(int x, int y) {
	gfx_SetColor(0xFF);
    for (int i=0; i<SIZE_F*SIZE_F; i++) {
		gfx_SetPixel(x * SIZE_F + (i % SIZE_F), y * SIZE_F + (i / SIZE_F));
    }
}

int graphics_init(void) {
	gfx_Begin();
	gfx_palette[0xFE] = gfx_RGBTo1555(R0, B0, G0);
	gfx_palette[0xFF] = gfx_RGBTo1555(R1, B1, G1);
	gfx_FillScreen(0xFE);

    return 0;
}

void graphics_exit(void) {
	gfx_End();
}
