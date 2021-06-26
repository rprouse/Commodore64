.include "cbm_kernal.inc"
.include "petscii.inc"

start:
  lda #CLRSCRN
  jsr CHROUT

@loop:
  jsr STOP
  beq @end
  jsr GETIN
  cmp #CHAR_0
  bcc start
  cmp #CHAR_9+1
  bcc @out
  cmp #CHAR_A
  bcc start
  cmp #CHAR_Z+1
  bcs start

@out:
  jsr CHROUT
  and #$0F

@end:
  rts
