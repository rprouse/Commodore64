# Vice Emulator

## Monitor

- [Documentation](https://vice-emu.sourceforge.io/vice_12.html#SEC323)
- Activate monitor `Alt+H`

### Machine state commands

- `g <address>` Change the PC to address and continue execution.
- `n [<count>]` Advance to the next instruction(s). COUNT allows stepping more than a single instruction at a time. Subroutines are treated as a single instruction ("step over").
- `r [<reg_name> = <number> [, <reg_name> = <number>]*]` Assign respective registers (use FL for status flags). With no parameters, display register values.
- `reset [<type>]` Reset the machine or drive. type: 0 = soft, 1 = hard, 8-11 = drive.
- `ret` Continues execution and returns to the monitor just after the next RTS or RTI is executed ("step out").
- `z [<count>]` Single step through instructions. An optional count allows stepping more than a single instruction at a time ("step into").

### Memory commands

- `bank [<bankname>]` Without a bankname, display all available banks for the current address_space. With a bankname given, switch to the specified bank. If a bank is not completely filled (ROM banks for example) normally the ram bank is used where the bank has holes. The cpu bank uses the bank currently used by the CPU.
- `f <address_range> <data_list>` Fill memory in the specified address range with the data in <data_list>. If the size of the address range is greater than the size of the data_list, the data_list is repeated.
- `i <address_opt_range>` Display memory contents as PETSCII text.
- `ii <address_opt_range>` Display memory contents as screen code text
- `m [<radix_type>] [<address_opt_range>]` Display the contents of memory. If no datatype is given, the default is used. If only one address is specified, the length of data displayed is based on the datatype. If no addresses are given, the 'dot' address is used.
- `mc [<radix_type>] [<address_opt_range>]` Display the contents of memory as character data. If only one address is specified, only one character is displayed. If no addresses are given, the "dot" address is used.
- `ms [<radix_type>] [<address_opt_range>]` Display the contents of memory as sprite data. If only one address is specified, only one sprite is displayed. If no addresses are given, the "dot" address is used.
- `t <address_range> <address>` Move memory from the source specified by the address range to the destination specified by the address. The regions may overlap.
- `sc` Displays the contents of the screen.

### Assembly commands

- `a <address> [ <instruction> [: <instruction>]* ]` Assemble instructions to the specified address. If only one instruction is specified, enter assembly mode (enter an empty line to exit assembly mode).
- `d [<address> [<address>]]` Disassemble instructions. If two addresses are specified, they are used as a start and end address. If only one is specified, it is treated as the start address and a default number of instructions are disassembled. If no addresses are specified, a default number of instructions are disassembled from the dot address.

### Checkpoint commands

- `break [load|store|exec] [address [address] [if <cond_expr>]]` This command allows setting a breakpoint or listing the current breakpoints. If no address is given, the currently valid checkpoints are printed. If an address is given, a breakpoint is set for that address and the breakpoint number is printed. The "load|store|exec" parameter can be either "load", "store" or "exec" (or any combination of these) to determine on which operation the monitor breaks. If not specified, the monitor breaks on "exec". A conditional expression can also be specified for the breakpoint. For more information on conditions, see the CONDITION command.
- `enable <checknum>` or `disable <checknum>` or `del <checknum>`
