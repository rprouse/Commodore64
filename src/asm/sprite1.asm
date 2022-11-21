.code
    jmp start

;===============================================================================
; Constants
SpaceCharacter  := 32

Black           := $00
White           := $01
Red             := $02
Cyan            := $03
Purple          := $04
Green           := $05
Blue            := $06
Yellow          := $07
Orange          := $08
Brown           := $09
Pink            := $0A
DarkGrey        := $0B
Grey            := $0C
LightGreen      := $0D
LightBlue       := $0E
LightGrey       := $0F

SPRITE13_LOC    := $0340     ; Where we are going to store sprite 0 which is sprite 13
SCREENRAM       := $0400
EXTCOL          := $D020
BGCOL0          := $D021
BGCOL1          := $D022
BGCOL2          := $D023
BGCOL3          := $D024
COLORRAM        := $D800

;===============================================================================
; Sets the border and background colors
; /1 = Border Color       (Value)
; /2 = Background Color 0 (Value)
; /3 = Background Color 1 (Value)
; /4 = Background Color 2 (Value)
; /5 = Background Color 3 (Value)
.macro Screen_SetColors border, bg0, bg1, bg2, bg3
    lda #border             ; Color0 -> A
    sta EXTCOL              ; A -> EXTCOL
    lda #bg0                ; Color1 -> A
    sta BGCOL0              ; A -> BGCOL0
    lda #bg1                ; Color2 -> A
    sta BGCOL1              ; A -> BGCOL1
    lda #bg2                ; Color3 -> A
    sta BGCOL2              ; A -> BGCOL2
    lda #bg3                ; Color4 -> A
    sta BGCOL3              ; A -> BGCOL3
.endmacro

;==============================================================================
; Sets 1000 bytes of memory from start address with a value
; /1 = Start  (Address)
; /2 = Number (Value)
.macro Screen_FillMemory start, num
.local loop
    lda #num                ; Get number to set
    ldx #250                ; Set loop value
loop:
    dex                     ; Step -1
    sta start,x             ; Set start + x
    sta start+250,x         ; Set start + 250 + x
    sta start+500,x         ; Set start + 500 + x
    sta start+750,x         ; Set start + 750 + x
    bne loop                ; If x<>0 loop
.endmacro

start:
    ; Set border and background colors
    ; The last 3 parameters are not used yet
    Screen_SetColors Black, Black, Black, Black, Black

    ; Fill 1000 .bytes (40x25) of screen memory
    Screen_FillMemory SCREENRAM, SpaceCharacter

    ; Fill 1000 .bytes (40x25) of color memory
    Screen_FillMemory COLORRAM, White

    ldx #$00    ; Copy sprite to sprite location 13
@load_sprite:
    lda sprite_0,x
    sta SPRITE13_LOC,x
    inx
    cpx #$41
    bne @load_sprite

    lda #$0D    ; Use Sprite 13 for sprite 0
    sta $07F8

    lda #$AC
    sta $D000   ; X 172, center screen (X of 24 is left of screen)

    lda #$E5
    sta $D001   ; Y 229, bottom of screen (Y of 50 is top of screen)

    lda #$01
    sta $D015   ; Turn sprite 0 on

    lda #Red    ; sprite color
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
