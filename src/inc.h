#define Z80

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#include <graphx.h>
#include <keypadc.h>
#include <ti/getcsc.h>
#define SIZE_F 3

#define BIT(X,B) ((X >> B) & 1)
#define R0 0x9a
#define B0 0xa7
#define G0 0x84
#define R1 0x42
#define B1 0x48
#define G1 0x36


void unplot(int x, int y);
void plot(int x, int y); 
void screen_update();
int graphics_init(void);
void graphics_exit(void);



