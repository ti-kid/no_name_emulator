all: bin src/z80.c src/main.c src/z80.h src/test.h
	$(CC) src/z80.c src/main.c src/graphics.c $$(sdl2-config --cflags --libs) -o bin/emu

bin:
	mkdir bin

src/test.h: bin/test.bin
	rm src/test.h
	./convo.py bin/test.bin > src/test.h

bin/test.bin: src/test.asm
	spasm src/test.asm bin/test.bin	

clean:
	rm -rf bin
