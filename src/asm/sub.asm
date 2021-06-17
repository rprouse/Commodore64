.include "kernal.inc"
.include "petscii.inc"

start:
  lda #CLRSCRN  ; Clear the screen
  jsr CHROUT
  jsr @getnum   ; Get the first number
  sta num
  lda #'-'
  jsr CHROUT
  jsr @getnum   ; Get the second number
  tax
  lda #'='
  jsr CHROUT
  lda num
  stx num
  sec
  sbc num       ; Subtract the numbers
  bpl @out      ; If we are positive, jump
  tax
  lda #'-'      ; Print the negative sign
  jsr CHROUT
  txa
  eor #$FF      ; Convert from negative to positive
  clc
  adc #1

@out:
  ora #$30      ; Convert num to ascii
  jsr CHROUT    ; Print the 0 to 9 digit
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

num:
  .byte $00
