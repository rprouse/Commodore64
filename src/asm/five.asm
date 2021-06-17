.include "kernal.inc"
.include "petscii.inc"

start:
  lda #CLRSCRN  ; Clear the screen
  jsr CHROUT
  jsr @getnum   ; Get the number
  cmp #5
  bcs @greater
  asl           ; Less than five, multiply by 2
  sta num
  lda #'*'
  jsr CHROUT
  jmp @end

@greater:       ; Greater than or equal to five
  lsr           ; Divide by 2
  sta num
  lda #'/'
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
  lda #'2'
  jsr CHROUT
  lda #'='
  jsr CHROUT
  lda num
  ora #$30      ; Convert num to ascii
  jsr CHROUT    ; Print the 0 to 9 digit
  lda #NEWLINE
  jsr CHROUT
  rts

num:
  .byte $00
