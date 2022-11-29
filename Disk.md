# 1541 Disk Drive Commands

Second option for all tasks is using Epyx Fastload

## List files on disk

```sh
LOAD "$",8
LIST
```

`$` lists without erasing program in memory

## Load a program

`LOAD "PROGRAM",8,1`

The one at the end forces it to load at the same memory address as it was saved.

`/PROGRAM` loads a basic program using Fastload

`%PROGRAM` loads a machine language program into memory (equivilent to `,1`)

Or to load the first program on the disk.

`LOAD "*",8`

`C= Run/Stop` using Fastload

## Save a program

If the file is not on the disk yet,

`SAVE "PROGRAM",8`

`<-PROGRAM` using Fastload (does this overwrite too?)

or to overwrite an existing program,

`SAVE "@0:PROGRAM",8`

## Format a disk

`OPEN 1,8,15,"N0:Diskname,ID": CLOSE 1`

The disk name has a maximum of 16 chars and the ID requires 2 chars.

Using Fastload, this and all subsequent commands are in the form `>COMMAND` or `@COMMAND`

`>N0:Diskname,ID`

## Initialize drive (INITIALIZE) e.g. to detect a disk change

`OPEN 1,8,15,"I0":CLOSE 1`

## Validate a disk (VALIDATE)

Checks and fixes the disk's meta-data structures (directory, block availability map, etc.)

`OPEN 1,8,15,"V0": CLOSE 1`

## Copy files (COPY)

`OPEN 1,8,15,"C0:NewFile=OldFile": CLOSE 1`

## Copy disk (COPY)

`OPEN 1,8,15,"C0=C1": CLOSE 1`

Copy the whole disk on a double drive from drive 1 to drive 0.

## Concatenate files (COMBINE)

`OPEN 1,8,15,"C0:NewFile=OldFile1,OldFile2,...": CLOSE 1`

The command string is limited to 40 chars in length!

## Rename a file (RENAME)

`OPEN 1,8,15,"R0:New_Name=Old_Name":CLOSE 1`

The command string is limited to 40 chars in length!

## Delete a file (SCRATCH)

`OPEN 1,8,15,"S0:filename": CLOSE 1`

Wildcards such as * (matches all the remaining chars) or ? (matches one char) are supported.

For example: `OPEN 1,8,15,"S0:*":CLOSE 1` all files of a disk will be deleted ("scratched").

With comma (,) more than one file or wildcard mask can be given and multiple matching files actually could be subject of the deletion.

## FastLoad Disk Tools

`£` opens the disk tools. This allows you to load directory listings, copy disks, edit disks,
disable Fastload, and edit files.

## FastLoad SYSMON

`!` opens SYSMON monitor program

- `0000G` Begins execution with JSR
- `0000J` Begins execution with JMP
- `0000S` Executes one op-code then displays registers. `S` will continue with next instruction
- `0000T` Begins execution and displays registers after every instruction
- `0000=` Prints the Hex, Decimal, Binary and Ascii value of 0000
- `0000 1111L` Disassemble memory and print to screen
- `0000 1111*` Display memory in hex and ascii
- `0000 1111 2222M` Moves a block of memory from 1111-2222 down to 0000
- `0000 11 R"SSSSSSS"` Binary read/load SSSSSSS from device 11 to memory 0000
- `0000 2222 11 W"SSSSSSS"` Binary write/save SSSSSSS to device 11 from memory 0000-2222
- `$` Prints the directory
- `%` Return to Basic
