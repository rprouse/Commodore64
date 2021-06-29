;==============================================================================
; Rob Prouse <https://alteridem.net>
;==============================================================================
; Includes

.ifndef _LIB_SCREEN_
_LIB_SCREEN_ = 1

.include "memory.inc"
.include "math.inc"

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

;===============================================================================
; Variables

.data

;===============================================================================
; Macros/Subroutines

.code

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

;===============================================================================
; Waits for a given scanline
; /1 = Scanline (Value)
.macro Screen_Wait line
.local loop
loop:
    lda #line              ; Scanline -> A
    cmp RASTER             ; Compare A to current raster line
    bne loop               ; Loop if raster line not reached 255
.endmacro

.endif ; _LIB_SCREEN_
