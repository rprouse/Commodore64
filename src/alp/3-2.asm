.data

.code
VIC20 = $D020

start:
    ldy #$06
    sty VIC20
    rts
