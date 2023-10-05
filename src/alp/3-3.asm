SCRMEM = $07E7
COLMEM = $DBE7

start:
    ldy #$07
    lda #$51    ; $51 is the screen code for a ball
    sta SCRMEM
    sty COLMEM
    rts
