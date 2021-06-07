# Commodore 64 Programs

A collections of BASIC, Assembler and C based programs for my
[Commodore 64](https://en.wikipedia.org/wiki/Commodore_64) computer. The programs
will also run on the [Vice Emulator](https://vice-emu.sourceforge.io/)

## Contents

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
