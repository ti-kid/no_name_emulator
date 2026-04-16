#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "inc.h"
#include "z80.h"

#include "test.h"


typedef struct {
    uint8_t mem[16384];
	uint8_t screen[768];
    uint8_t bank_a, bank_b, bank_c;
    uint8_t screen_x, screen_y;
    uint8_t screen_dir, screen_on, screen_mode;
} calculator;

void send_screen_mode(calculator *calc_io, uint8_t data) {
    if (data < 2){
	calc_io->screen_mode = data;
    } else if ( data == 2 ) {
	calc_io->screen_on = 0;
    } else if ( data == 3 ) {
	calc_io->screen_on = 1;
    } else if ( data > 3 && data < 8) {
	calc_io->screen_dir = data;
    } else if ( data > 0x1F && data < 0x40) {
	calc_io->screen_x = data - 0x20;
    } else if ( data > 0x7F && data < 0xC0 ) {
	calc_io->screen_y = data - 0x80;
    }
}
void send_screen_data(calculator *calc_io, uint8_t data) {
    int bsiz = (calc_io->screen_mode) ? 7 : 5;
    for (int i = bsiz; i+1; i--) {
	
		uint8_t px, py;
		px = calc_io->screen_x * bsiz + (bsiz - i);
		py = calc_io->screen_y;
		

		int byte_index = calc_io->screen_x * bsiz / 8 + calc_io->screen_y / 12;
		uint8_t mask = 1 << (1 - (px & 7));	

		if (BIT(data, i)){
			plot(px, py);
			calc_io->screen[byte_index] |= mask;
		} else {
			unplot(px, py);
			calc_io->screen[byte_index] &= ~mask;
		}

    }
    if (calc_io->screen_dir == 4) calc_io->screen_y--;
    if (calc_io->screen_dir == 5) calc_io->screen_y++;
    if (calc_io->screen_dir == 6) calc_io->screen_x--;
    if (calc_io->screen_dir == 7) calc_io->screen_x++;
}
uint8_t get_screen_data(calculator *calc_io) {
    uint8_t bsiz = (calc_io->screen_mode) ? 8 : 6;

    // Pixel X coordinate of the first bit in this group
    int px = calc_io->screen_x * bsiz;
    int py = calc_io->screen_y;

    // Byte index in VRAM
    int byte_index = (py * 12) + (px / 8);
    int bit_offset = px % 8;

    uint8_t b0 = calc_io->screen[byte_index];
    uint8_t result;

    if (bit_offset + bsiz <= 8) {
        // All bits fit inside one byte
        result = (b0 >> (8 - bit_offset - bsiz)) & ((1 << bsiz) - 1);
    } else {
        // Bits span two bytes
        uint8_t b1 = calc_io->screen[byte_index + 1];

        int first_part = 8 - bit_offset;
        int second_part = bsiz - first_part;

        uint8_t left = (b0 & ((1 << first_part) - 1)) << second_part;
        uint8_t right = b1 >> (8 - second_part);

        result = left | right;
    }

    return result;
}

uint8_t zread(void *userdata, uint16_t addr) {
    return ((calculator*)userdata)->mem[addr];   
}

void zwrite(void *userdata, uint16_t addr, uint8_t data) {
    ((calculator*)userdata)->mem[addr] = data;   
}

uint8_t in(z80* z,uint8_t port) {
    calculator *calc_io = ((calculator*)z->userdata);
    switch (port) {
	case 0x10:
	case 0x12:
	    return (calc_io->screen_dir & 4) | (calc_io->screen_on << 4) | (calc_io->screen_mode << 6);
	case 0x11:
	case 0x13:
	    return get_screen_data(calc_io);
    }
	return 0;
}

void out(z80 *z, uint8_t port, uint8_t data) {
    calculator *calc_io = ((calculator*)z->userdata); 
    switch (port) {
	case 0x10:
	case 0x12:
	    send_screen_mode(calc_io,data);
	    break;
	case 0x11:
	case 0x13:
	    send_screen_data(calc_io,data);
	    break;
    }
}

int sys_init(z80 *calc, calculator *calc_io) {
   
    if (graphics_init()) {
	return 1;
    }

    z80_init(calc);
    calc->read_byte = zread;
    calc->write_byte = zwrite;
    calc->port_in = in;
    calc->port_out = out;
    calc->userdata = calc_io;
    return 0;
}

void sys_exit() {
    graphics_exit();
}

int main(void) {
    z80 calc;
    calculator calc_io = { 0 };

    if (sys_init(&calc, &calc_io) != 0) {
        fprintf(stderr, "sys_init failed\n");
        return 1;
    }

    memcpy(calc_io.mem, test_program, sizeof(test_program));
	while (!os_GetCSC()) {
		z80_step(&calc);
	}

    sys_exit();
    return 0;
}

