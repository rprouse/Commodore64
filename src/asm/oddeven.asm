.include "cbm_kernal.inc"
.include "petscii.inc"

start:
  lda #CLRSCRN  ; Clear the screen
  jsr CHROUT
  jsr @getnum   ; Get the number
  lsr
  bcs @odd
  lda #' '
  jsr CHROUT
  lda #'e'
  jsr CHROUT
  lda #'v'
  jsr CHROUT
  lda #'e'
  jsr CHROUT
  lda #'n'
  jsr CHROUT
  jmp @end

@odd:
  lda #' '
  jsr CHROUT
  lda #'o'
  jsr CHROUT
  lda #'d'
  jsr CHROUT
  lda #'d'
  jsr CHROUT
  jmp @end

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
  rts

@end:
  lda #NEWLINE
  jsr CHROUT
  rts

num:
  .byte $00
