# 6502 Assembly Notes

## Instructions

### Load, Store and Compare

- LDA - Load into A ($0380 absolute, #$00 immediate, $0380,X effective)
- LDX - Load into X
- LDY - Load into Y
- STA - Store A to memory
- STX - Store X to memory
- STY - Store Y to memory
- CMP - Compare A
- CPX - Compare X
- CPY - Compare Y

### Branching

- BEQ - Branch if the two bytes are equal
- BNE - Branch if the two bytes are not equal
- BCS - Branch carry set or if register >= value
- BCC - Branch carry clear or if register < value
- BMI - Branch minus or < 0 or high bit set
- BPL - Branch Plus or >= 0 or high bit not set
- BIT - Bit test, tests bit 6 of an address and sets V flag
- BVS - Branch overflow set
- BVC - Branch overflow clear
- ! - (branches can only jump a hundred or so bytes)

### Increment and decrement

- INX - Increment X
- INY - Increment Y
- DCX - Decrement X
- DCY - Decrement Y

### Logical operators

- AND - Logical AND with A (turns bits off)
- ORA - Logical OR with A (turns bits on)
- EOR - Exclusive OR (XOR) with A (flips specific bits)

### Set and clear status bits

- SEC - Set carry bit
- CLC - Clear carry bit
- CLV - Clear overflow
- SED - Set decimal (always off on Commodore machines)
- CLD - Clear decimal
- SEI - Set interupt disable
- CLI - Clear interupt disable

### Misc

- JSR - Jump to subroutine
- BRK - Break to the monitor
- RTS - Return from subroutine

## Status Flags

- Z - Zero or equals because after a compare it is set on if equal
- C - Carry or greater/equal because after a compare it is set if register is >=. If we are using unsigned numbers, C indicates overflow.
- N - Negative or high bit set
- V - oVerflow (signed arithmetic overflow), seldom used. If we are using signed numbers, V indicates overflow.
- SR - Status Registers, the above flags and three others, B - Break, D - Decimal Mode, I - Interupt disable.

|   |   |   |   |   |   |   |   |
|---|---|---|---|---|---|---|---|
| 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
| N | V | - | B | D | I | Z | C |

## Kernal Routines

- CHROUT := $FFD2   ; Sends a copy of the A register to the screen at the cursor position
- GETIN  := $FFE4   ; Gets an ASCII character, does not wait, returns 0 if no key presses
- STOP   := $FFE1   ; Checks the RUN/STOP key

## PETSCII/ASCII Screen control characters

- $0D - Return or newline
- $8E - Switch to uppercase mode
- $93 - Clear screen

- ASCII number AND $0F = Decimal Number
- Decimal number OR $30 = ASCII character

## Monitor Commands

- SYS 8 - Load monitor from BASIC
- X - Exit to BASIC
- M 1000 1010 - Display memory from 1000 to 1010
- D 1000 1010 - Disassemble memory from 1000 to 1010
- A 033C LDA $0380 - Assemble at address 033C
- R - Display registers
- G 033C - Go to 033C and start running the program
- S - Save
- L - Load

## Memory Map

- $033C - Cassette Buffer
- $0400-$07E7 - Screen memory, 40x25 chars, each line is $28 long
