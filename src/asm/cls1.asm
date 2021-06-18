.include "petscii.inc"

start:
  lda $0288   ; C64 screen location
  sta $BC
  lda #$00
  sta $BB

  ldx #$00
lines:
  ldy #$00
columns:
  lda #SPACE
  sta ($BB),y

  iny
  cpy width   ; We are only working from $04 to $12 on each row
  bcc columns

  clc         ; Add the width to the ZP pointer
  lda $BB
  adc width
  sta $BB
  lda $BC     ; Carry the add
  adc #$00
  sta $BC

  inx
  cpx #$19    ; Have we done 25 lines?
  bne lines
  rts


width:
  .byte $28   ; C64 screen width
