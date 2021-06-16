.include "kernal.inc"
.include "petscii.inc"

start:
  lda #CLRSCRN  ; Clear the screen
  jsr CHROUT
  jsr @getnum   ; Get the first number
  sta sum
  lda #'+'
  jsr CHROUT
  jsr @getnum   ; Get the second number
  tax
  lda #'='
  jsr CHROUT
  txa
  clc
  adc sum
  sta sum
  ora #$30
  jsr CHROUT
  lda #NEWLINE
  jsr CHROUT
  rts

@getnum:        ; Get 0 through 9 and return it on the A register
  jsr STOP
  beq @end
  jsr GETIN
  cmp #CHAR_0
  bcc @getnum
  cmp #CHAR_9+1
  bcs @getnum
  jsr CHROUT
  and #$0F

@end:
  rts

sum:
  .byte $00
