.data

.code
VIC21 = $d021

start:
    ldx #$07
    stx VIC21
    rts
