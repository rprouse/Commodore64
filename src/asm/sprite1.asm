; cl65 -t c64 -C c64-asm.cfg -u __EXEHDR__ -o sprite1.prg -l sprite1.lst sprite1.asm
.code
    jmp start

SPRITE_0 := $0340     ; Where we are going to store sprite 0 which is sprite 13

start:
    ldx #$00
@load_sprite:
    lda sprite_0,x
    sta SPRITE_0,x
    inx
    cpx #$41
    bne @load_sprite

    lda #$0D    ; Use Sprite 13 for sprite 0
    sta $07F8

    lda #$C8
    sta $D000   ; X 200

    lda #$63
    sta $D001   ; Y 99

    lda #$01
    sta $D015   ; Turn sprite 0 on

    lda #$0F    ; sprite color
    sta $D027

    rts

.data
; sprite 0 / singlecolor / color: $03
sprite_0:
    .byte $00,$00,$00,$00,$00,$00,$00,$18
    .byte $00,$00,$18,$00,$00,$3c,$00,$00
    .byte $24,$00,$00,$24,$00,$00,$24,$00
    .byte $00,$24,$00,$10,$7e,$08,$11,$bd
    .byte $88,$17,$ff,$e8,$1f,$bd,$f8,$1f
    .byte $ff,$f8,$3f,$bd,$fc,$3f,$ff,$fc
    .byte $01,$c3,$80,$01,$c3,$80,$03,$e7
    .byte $c0,$02,$a5,$40,$02,$24,$40,$03
