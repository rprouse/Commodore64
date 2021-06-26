; This program reads in up to one line of text, stores it in memory, then
; prints the line back to the screen when the user its enter.
.include "cbm_kernal.inc"
.include "petscii.inc"

ZP_X := $BB

start:
  ldx #$0
  stx ZP_X    ; Store the X register because GETIN clobbers it
@input:
  jsr STOP    ; Check if run/stop key was pressed
  beq @end
  jsr GETIN   ; This changes the A, X, Y registers
  cmp #$0
  beq @input  ; Nothing was pressed
  ldx ZP_X    ; Restore the X register
  sta line,x  ; Save out the character to memory
  jsr CHROUT  ; Echo the character to the screen

  inx
  stx ZP_X
  cmp #NEWLINE  ; Did the user hit return?
  beq @out
  cpx width     ; Have we hit the end of the line?
  bcc @input

@out:
  ldx #$0       ; Reset x
@loop:
  lda line,x    ; Load the character and echo it
  jsr CHROUT    ; Only changes the A register
  inx
  cmp #NEWLINE  ; Stop when we hit a newline
  bne @loop

@end:
  rts

width:
  .byte $28

line:
  .res 12,NEWLINE ; Why is this limited to 12?
  .res 12,NEWLINE
  .res 12,NEWLINE
  .res 4,NEWLINE
