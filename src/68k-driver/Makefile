PROJ_NAME = 68kproj
MAIN_SRC_FILE = main.asm

VASM_PATH = ./build-tools/vasmm68k_mot

build:
	$(VASM_PATH) -o ./bin/$(PROJ_NAME).bin -Fbin -no-opt -nosym -chklabels -I./src/inc/ ./src/$(MAIN_SRC_FILE)

clean:
	rm -f bin/$(PROJ_NAME).bin
