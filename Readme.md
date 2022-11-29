# Commodore 64 Programs

A collections of BASIC, Assembler and C based programs for my
[Commodore 64](https://en.wikipedia.org/wiki/Commodore_64) computer. The programs
will also run on the [Vice Emulator](https://vice-emu.sourceforge.io/)

I've also been writing [6502 Assembly Notes](src/asm/Readme.md) as I've been learning to program in assembly.

## Contents

- [6502 Assembly Notes](Assembly.md)
- [Commodore 64 Tips](Commodore64.md)
- [1514 Disk Commands](Disk.md)
- [Sprites](Sprites.md)

## Source

- `prg` - Pre-compiled Commodore 64 programs either from the Internet or written directly on the C64 and saved here.
- `src/asm` - Simple programs that I am writing as exercises while learning 6502 assembly from Jim Butterfield's book [Machine Language for the Commodore 64 and Other Commodore Computers](http://www.1000bit.it/support/manuali/commodore/c64/ML_for_the_C64_and_Other_Commodore_Computers.pdf)
- `src/basic-computer-games` - Games from the best selling computer book [BASIC Computer Games](https://en.wikipedia.org/wiki/BASIC_Computer_Games) by David H. Ahl.
- `src/more-basic-computer-games` - Games from the followup book [More BASIC Computer Games](https://archive.org/details/More_BASIC_Computer_Games_1980_Creative_Computing) by David H. Ahl.
- `src/utilities/bas2lowercase` - Converts all BASIC `*.bas` files in a given directory to lowercase. Even though the files appear to be UPPERCASE on the C64, they need to be lowercase when converting.

## Prerequisites

- [Vice Emulator](https://vice-emu.sourceforge.io/)
- GNU `make`
- [cc65](https://cc65.github.io/) 6502 compiler and assembler

## Building

CD into the `src` directory and run,

```sh
make clean
make all
```

Everything will be built into the subdirectories in `./bin`
