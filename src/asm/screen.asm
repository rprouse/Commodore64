.include "kernal.inc"
.include "petscii.inc"

start:
  lda $0288   ; C64 screen location
  sta $BC
  lda #$00
  sta $BB

  ldx #$00
lines:
  ldy #$04
columns:
  lda ($BB),y
  cmp #SPACE  ; Skip spaces
  beq skip
  eor #$80    ; Flip the high bit
  sta ($BB),y
skip:
  iny
  cpy #$12    ; We are only working from $04 to $12 on each row
  bcc columns

  clc         ; Add the width to the ZP pointer
  lda $BB
  adc width
  sta $BB
  lda $BC     ; Carry the add
  adc #$00
  sta $BC

  inx
  cpx #$0E    ; Have we done 14 lines?
  bne lines
  rts

width:
  .byte $28   ; C64 screen width
