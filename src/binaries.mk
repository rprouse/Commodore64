# Platform specific binaries
ifeq ($(OS),Windows_NT)
	include ../binaries_win.mk
else
	include ../binaries_unix.mk
endif

# VICE Emulator binaries
PETCAT_BINARY=petcat
C1451_BINARY=c1451

PETCAT_FLAGS=-v -w2 -f -o

# cc65 utilities
CA65_BINARY=ca65
CC65_BINARY=cc65
CL65_BINARY=cl65
LD65_BINARY=ld65
AR65_BINARY=ar65

ARCH_FLAG=-t c64

CC65_FLAGS=$(ARCH_FLAG) -O
CA65_FLAGS=$(ARCH_FLAG)
CL65_FLAGS=-t c64 -C c64-asm.cfg -u __EXEHDR__
LD65_FLAGS=
AR65_FLAGS=r
