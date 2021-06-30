;==============================================================================
; C64 Game Library by Rob Prouse <https://alteridem.net>
;
; With influence and code by Derek Morris <https://retrogamedev.com>
; in his RetroGameDev Library C64 v1 (C)2017
;==============================================================================
; Includes

.ifndef _LIB_SPRITES_
_LIB_SPRITES_ = 1

.include "memory.inc"

;===============================================================================
; Constants

SpriteSize     := 64

;===============================================================================
; Variables

.data

spriteNumberMask:
    .byte %00000001, %00000010, %00000100, %00001000
    .byte %00010000, %00100000, %01000000, %10000000

;===============================================================================
; Macros/Subroutines

.code

;===============================================================================
; Takes the sprites tacked onto the end of the program and moves them to $3000
; /1 = Number of sprites to copy
.macro Sprite_RelocateSprites num
.local done
.local spriteloop
.local byteloop
    lda #<sprites       ; The source address
    sta ZeroPageLow
    lda #>sprites
    sta ZeroPageHigh

    lda #$00             ; The destination address
    sta ZeroPageLow2
    lda #$30
    sta ZeroPageHigh2
    ldx #00
spriteloop:             ; Loop through each sprite
    cpx #num+1
    bcs done
    ldy #00
byteloop:               ; Loop through each byte in the sprite
    lda (ZeroPageLow),y
    sta (ZeroPageLow2),y
    iny
    cpy #SpriteSize     ; Sprites are 64 bytes
    bcc byteloop

    inx

    clc                 ; Add 64 to the source address
    lda ZeroPageLow
    adc #SpriteSize
    sta ZeroPageLow
    lda ZeroPageHigh
    adc #00
    sta ZeroPageHigh

    clc                 ; Add 64 to the destination address
    lda ZeroPageLow2
    adc #SpriteSize
    sta ZeroPageLow2
    lda ZeroPageHigh2
    adc #00
    sta ZeroPageHigh2

    jmp spriteloop
done:
.endmacro

;===============================================================================
; /1 = Sprite Number (Address)
; /2 = Enable/Disable (Value)
.macro Sprite_Enable sprite, enabled
.local enable
.local disable
.local done
    ldy sprite
    lda spriteNumberMask,y

    ldy #enabled
    beq disable
enable:
    ora SPENA ; merge with the current SpriteEnable register
    sta SPENA ; set the new value into the SpriteEnable register
    jmp done
disable:
    eor #$FF ; get mask compliment
    and SPENA
    sta SPENA
done:
.endmacro

;===============================================================================
; /1 = Sprite Number    (Address)
; /2 = Color            (Value)
.macro Sprite_SetColor sprite, color
    ldy #sprite
    lda #color
    sta SP0COL,y
.endmacro

;===============================================================================
; /1 = Sprite Number    (Address)
; /2 = XPos High Byte   (Address)
; /3 = XPos Low Byte    (Address)
; /4 = YPos             (Address)
.macro Sprite_SetPosition sprite, xposh, xposl, ypos
.local end
    lda sprite              ; get sprite number
    asl                     ; *2 as registers laid out 2 apart
    tay                     ; copy accumulator to y register

    lda xposl               ; get XPos Low Byte
    sta SP0X,y              ; set the XPos sprite register
    lda ypos                ; get YPos
    sta SP0Y,y              ; set the YPos sprite register

    ldy sprite
    lda spriteNumberMask,y  ; get sprite mask

    eor #$FF                ; get compliment
    and MSIGX               ; clear the bit
    sta MSIGX               ; and store

    ldy xposh               ; get XPos High Byte
    beq end                 ; skip if XPos High Byte is zero
    ldy sprite
    lda spriteNumberMask,y  ; get sprite mask

    ora MSIGX               ; set the bit
    sta MSIGX               ; and store
end:
.endmacro

.endif ; _LIB_SPRITES_
