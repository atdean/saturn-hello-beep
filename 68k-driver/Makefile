PROJ_NAME = SS68KDRV
MAIN_SRC_FILE = driver_main.asm

VASM_PATH = ./build-tools/vasmm68k_mot

all: clean build

build:
	$(VASM_PATH) -o ./bin/$(PROJ_NAME).bin -Fbin -no-opt -nosym -chklabels -I./src/inc ./src/$(MAIN_SRC_FILE)

clean:
	rm -f bin/$(PROJ_NAME).bin