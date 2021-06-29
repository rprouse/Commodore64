
; 2 sprites generated with spritemate on 6/27/2021, 9:39:43 PM
; Byte 64 of each sprite contains multicolor (high nibble) & color (low nibble) information

.data

sprites:

; sprite 0 / singlecolor / color: $03
sprite_0:
.byte $00,$00,$00,$00,$18,$00,$00,$18
.byte $00,$00,$18,$00,$00,$3c,$00,$00
.byte $24,$00,$00,$24,$00,$00,$24,$00
.byte $00,$24,$00,$00,$3c,$00,$20,$3c
.byte $04,$20,$7e,$04,$20,$ff,$04,$23
.byte $ff,$c4,$27,$ff,$e4,$3f,$ff,$fc
.byte $3f,$ff,$fc,$3f,$ff,$fc,$3c,$18
.byte $3c,$00,$3c,$00,$00,$3c,$00,$03

; sprite 1 / multicolor / color: $03
sprite_1:
.byte $00,$00,$00,$00,$20,$00,$00,$20
.byte $00,$00,$20,$00,$00,$a8,$00,$00
.byte $b8,$00,$00,$b8,$00,$00,$b8,$00
.byte $00,$b8,$00,$00,$a8,$00,$40,$a8
.byte $04,$42,$aa,$04,$42,$aa,$04,$4a
.byte $aa,$84,$4a,$aa,$84,$aa,$aa,$a8
.byte $6a,$aa,$a4,$af,$ab,$e8,$60,$20
.byte $24,$00,$b8,$00,$00,$fc,$00,$83
