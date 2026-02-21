#include "inc.h"

#ifdef PC
SDL_Renderer *rend;
SDL_Window *wind;
#endif

void unplot(int x, int y) {
	#ifdef PC
	SDL_SetRenderDrawColor(rend, R0, B0, G0, 255); // 126 153 86
    for (int i=0; i<SIZE_F*SIZE_F; i++) {
		SDL_RenderDrawPoint(rend, x * SIZE_F + (i % SIZE_F), y * SIZE_F + (i / SIZE_F));
    }
	#else
	gfx_SetColor(0xFE);
    for (int i=0; i<SIZE_F*SIZE_F; i++) {
		gfx_SetPixel(x * SIZE_F + (i % SIZE_F), y * SIZE_F + (i / SIZE_F));
    }
	#endif
}

void plot(int x, int y) {
	#ifdef PC
	SDL_SetRenderDrawColor(rend, R1,B1,G1, 255);
    for (int i=0; i<SIZE_F*SIZE_F; i++) {
		SDL_RenderDrawPoint(rend, x * SIZE_F + (i % SIZE_F), y * SIZE_F + (i / SIZE_F));
    }
	#else
	gfx_SetColor(0xFF);
    for (int i=0; i<SIZE_F*SIZE_F; i++) {
		gfx_SetPixel(x * SIZE_F + (i % SIZE_F), y * SIZE_F + (i / SIZE_F));
    }
	#endif
}

#ifdef PC
void screen_update() {
    SDL_RenderPresent(rend);
}

void sdl_err(void) {
    printf("Error with SDL2.\n");
}

#else
void screen_update(void) {}
#endif

int sdl_init(void) {
	#ifdef PC
    if (SDL_Init(SDL_INIT_VIDEO) != 0) { 
	SDL_Log("SDL_Init Error: %s", SDL_GetError()); 
	sdl_err();
	return 1; 
    }

    wind = SDL_CreateWindow( 
	    "SDL2 Window", 
	    SDL_WINDOWPOS_CENTERED, 
	    SDL_WINDOWPOS_CENTERED, 
	    96*SIZE_F, 64*SIZE_F, 
	    0 
	);

    if (!wind) { 
	SDL_Log("SDL_CreateWindow Error: %s", SDL_GetError()); 
	SDL_Quit();
	sdl_err();
	return 1; 
    }

    rend = SDL_CreateRenderer(wind, -1, SDL_RENDERER_ACCELERATED); 
    if (!rend) { 
	SDL_Log("SDL_CreateRenderer Error: %s", SDL_GetError()); 
	SDL_DestroyWindow(wind); 
	SDL_Quit();
	sdl_err();
	return 1; 
    }
    SDL_SetRenderDrawColor(rend, R0, B0, G0, 255);
    SDL_RenderClear(rend);
    SDL_RenderPresent(rend);

	#else
	gfx_Begin();
	gfx_palette[0xFE] = gfx_RGBTo1555(R0, B0, G0);
	gfx_palette[0xFF] = gfx_RGBTo1555(R1, B1, G1);
	gfx_FillScreen(0xFE);
	#endif

    return 0;
}

void sdl_exit(void) {
	#ifdef PC
    SDL_DestroyWindow(wind);
    SDL_DestroyRenderer(rend);
    SDL_Quit();
	#else
	gfx_End();
	#endif
}
