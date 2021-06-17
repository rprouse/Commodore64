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
- INC - Increment memory address
- DCX - Decrement X
- DCY - Decrement Y
- DEC - Decrement membory address

## Arithmetic

- ADC - Add with carry
- SBC - Subtract with carry
- ASL - Arithmetic left shift (multiply by 2), 0 is shifted in and high bit sets the C flag. Works on the A register with no operand or directly on memory.
- ROL - Rotate left, like ASL but C flag is shifted into low bit
- LSR - Logical shift right (divide by 2), 0 is shifted into the high bit and low bit is set to the carry. Carry is the remainder. Works on the A register with no operand or directly on memory.
- ROR - Rotate right. Same as LSR except C is shifted into the high bit.

### Logical operators

- AND - Logical AND with A (turns bits off)
- ORA - Logical OR with A (turns bits on)
- EOR - Exclusive OR (XOR) with A (flips specific bits)

### Transfer

- TAX - Transfer A to X
- TXA - Transfer X to A
- TAY - Transfer A to Y
- TYA - Transfer Y to A

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
- NOP - Do nothing. Useful for reserving space or toggleing with a BRK for debugging
- RTS - Return from subroutine

## Addressing Modes

- Implied - There is no address, it is implied by the instruction
- Accumulator - Effectively the same as implied but works on the accumulator
- Immediate - Provide a constant value (#$32)
- Absolute - Provide a full memory address ($0804)
- Zero-Page - Provide one byte in the zero page ($00 to $FF)
- Absolute, Indexed - An absolute address offset by the X or Y register ($8084,x)
- Zero-Page, Indexed - A zero-page address offset by the X or Y register. ($E0,x) Supports negative indexes when the register is negative.
- Relative - Jump a relative distance forward or backward from branch commands.
- Indirect - JMP to the address stored at an address JMP ($1234)
- Indirect, Indexed - The indirect address must be in the zero page, two bytes, low byte first. Then indexed with the Y register to form the final effective address. LDA ($C0),Y
- Indexed, Indirect - Uses the X register and the indexing takes place first. LDA ($C0,X)

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

- $00-$FF - Zero-page. (see below)
- $033C - Cassette Buffer
- $0400-$07E7 - Screen memory, 40x25 chars, each line is $28 long

Zero-page - most of the ZP is used by the ROM. The C64 has four bytes available at $FC to $FF. You can also search the memory map for "work areas" or "utility pointers".

## Arithmetic

|   | Unsigned  | Signed  |
|---|---|---|
| 1 byte  | 0 to 255 | -128 to 127 |
| 2 bytes | 0 to 65,535 | -32768 to 32767 |
| 3 bytes | 0 to 16,777,215 | -8,388,608 to 8,388,607 |
| 4 bytes | to over 4 billion | -2 billion to 2 billion |

### Addition

1. Clear the carry with CLC
2. If the number is more than one byte, start at low byte and work up. The carry flag will take care of any carries.
3. After the high byte, check for overflow.
    - If unsigned, set C indicates overflow
    - If signed, set V indicates overflow

For example to add numbers at $0380 and $0381 and save at $0382

```
CLC
LDA $0380
ADC $0381
STA $0382
BCS overflow
```

To add a two byte numbers at $03A0 (low) and $03A1 (high) to $03B0 (low) and $03B1 (high) and store to $03C0/1

```
CLC
LDA $03A0
ADC $03B0
STA $03C0
LDA $03A1
ADC $03B1
STB $03C1
BCS overflow
```

If we were using signed numbers it is the same except we use BVS for the overflow check.

### Subtraction

1. Set carry with SEC
2. If more than one byte, start with the low byte, the C flag will track borrows.
3. When complete, check for overflow
    - If unsigned, C flag indicates overflow
    - If signed, V flag indicates overflow

```
SEC
LDA $0380
SBC $0381
STA $0382
BCC
```

### Comparison

For one byte numbers just use CMP, CPX or CPY.

For multibyte numbers subtract and look at the carry flag. If the first number is greater than or equal, the C flag will be set.

### Multiplication

You can ASL the low order byte and ROL the high bytes to multiply by two. Repeat to multiply by 4 then 8, etc.

To multiply by ten multiply by 2 twice, then add the original number (bringing you to 5x) then multiply by two once more.
