.include "kernal.inc"
.include "petscii.inc"

start:
  ldx #$0
@input:
  jsr STOP
  beq @end
  jsr GETIN
  cmp #$0
  beq @input
  sta line,x
  jsr CHROUT

  inx
  cmp #NEWLINE
  beq @out
  cpx width
  bcc @input

@out:
  ldx #$0
@loop:
  lda line,x
  jsr CHROUT
  inx
  cmp #NEWLINE
  bne @loop

@end:
  rts

width:
  .byte $28

line:
  .byte "01234567890123456789012345678",NEWLINE
  ; .res 12,NEWLINE ; Why is this limited to 12?
  ; .res 12,NEWLINE
  ; .res 12,NEWLINE
  ; .res 4,NEWLINE
