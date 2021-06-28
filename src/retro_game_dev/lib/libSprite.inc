;==============================================================================
; RetroGameDev Library C64 v1
;   (C)2017 by Derek Morris <https://retrogamedev.com>
;   Conversion to KickAss 5.x by Marcelo Lv Cabral <http://lvcabral.com>
;   Conversion to ca65 by Rob Prouse <https://alteridem.net>
;==============================================================================
; Includes

.ifndef _LIB_SPRITES_
_LIB_SPRITES_ = 1

.include "../lib/libMemory.inc"

;===============================================================================
; Constants

SpriteAnimsMax := 8

;===============================================================================
; Variables

.segment "DATA"

spriteAnimsActive:       .res SpriteAnimsMax, 0
spriteAnimsStartFrame:   .res SpriteAnimsMax, 0
spriteAnimsFrame:        .res SpriteAnimsMax, 0
spriteAnimsEndFrame:     .res SpriteAnimsMax, 0
spriteAnimsStopFrame:    .res SpriteAnimsMax, 0
spriteAnimsSpeed:        .res SpriteAnimsMax, 0
spriteAnimsDelay:        .res SpriteAnimsMax, 0
spriteAnimsLoop:         .res SpriteAnimsMax, 0

spriteAnimsCurrent:             .byte 0
spriteAnimsFrameCurrent:        .byte 0
spriteAnimsEndFrameCurrent:     .byte 0

spriteNumberMask:  .byte %00000001, %00000010, %00000100, %00001000, %00010000, %00100000, %01000000, %10000000

;===============================================================================
; Macros/Subroutines

.segment "CODE"

;===============================================================================
; /1 = Sprite Number (Address)
.macro LIBSPRITE_DIDCOLLIDEWITHSPRITE_A sprite
    ldy sprite
    lda spriteNumberMask,y
    and SPSPCL
.endmacro

;===============================================================================
; /1 = Sprite Number (Address)
; /2 = Enable/Disable (Value)
.macro LIBSPRITE_ENABLE_AV sprite, enabled
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

;==============================================================================
; /1 = Sprite Number    (Address)
.macro LIBSPRITE_ISANIMPLAYING_A sprite
    ldy sprite
    lda spriteAnimsActive,y
.endmacro

;===============================================================================
; /1 = Sprite Number (Address)
; /2 = Enable/Disable (Address)
.macro LIBSPRITE_MULTICOLORENABLE_AA sprite, enabled
.local enable
.local disable
.local done
    ldy sprite
    lda spriteNumberMask,y

    ldy enabled
    beq disable
enable:
    ora SPMC
    sta SPMC
    jmp done
disable:
    eor #$FF ; get mask compliment
    and SPMC
    sta SPMC
done:
.endmacro

;===============================================================================
; /1 = Sprite Number (Address)
; /2 = Enable/Disable (Value)
.macro LIBSPRITE_MULTICOLORENABLE_AV sprite, enabled
.local enable
.local disable
.local done
    ldy sprite
    lda spriteNumberMask,y

    ldy #enabled
    beq disable
enable:
    ora SPMC
    sta SPMC
    jmp done
disable:
    eor #$FF ; get mask compliment
    and SPMC
    sta SPMC
done:
.endmacro

;==============================================================================
; /1 = Sprite Number    (Address)
; /2 = StartFrame       (Value)
; /3 = EndFrame         (Value)
; /4 = Speed            (Value)
; /5 = Loop True/False  (Value)
.macro LIBSPRITE_PLAYANIM_AVVVV sprite, frame1, frame2, speed, loop
    ldy sprite

    lda #True
    sta spriteAnimsActive,y
    lda #frame1
    sta spriteAnimsStartFrame,y
    sta spriteAnimsFrame,y
    lda #frame2
    sta spriteAnimsEndFrame,y
    lda #speed
    sta spriteAnimsSpeed,y
    sta spriteAnimsDelay,y
    lda #loop
    sta spriteAnimsLoop,y
.endmacro

;===============================================================================
; /1 = Sprite Number    (Address)
; /2 = Color            (Value)
.macro LIBSPRITE_SETCOLOR_AV sprite, color
    ldy sprite
    lda #color
    sta SP0COL,y
.endmacro

;===============================================================================

.macro LIBSPRITE_SETCOLOR_AA sprite, color
                ; /1 = Sprite Number    (Address)
                ; /2 = Color            (Address)
        ldy sprite
        lda color
        sta SP0COL,y
.endmacro

;==============================================================================
; /1 = Sprite Number    (Address)
; /2 = Anim Index       (Address)
.macro LIBSPRITE_SETFRAME_AA sprite, index
    ldy sprite

    clc             ; Clear carry before add
    lda index       ; Get first number
    adc #SPRITERAM  ; Add

    sta SPRITE0,y
.endmacro

;===============================================================================
; /1 = Sprite Number    (Address)
; /2 = Anim Index       (Value)
.macro LIBSPRITE_SETFRAME_AV sprite, index
    ldy sprite

    clc             ; Clear carry before add
    lda #index      ; Get first number
    adc #SPRITERAM  ; Add

    sta SPRITE0,y
.endmacro

;===============================================================================
; /1 = Color 1          (Value)
; /2 = Color 2          (Value)
.macro LIBSPRITE_SETMULTICOLORS_VV color1, color2
    lda #color1
    sta SPMC0
    lda #color2
    sta SPMC1
.endmacro

;===============================================================================
; /1 = Sprite Number    (Address)
; /2 = XPos High Byte   (Address)
; /3 = XPos Low Byte    (Address)
; /4 = YPos             (Address)
.macro LIBSPRITE_SETPOSITION_AAAA sprite, xposh, xposl, ypos
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

;===============================================================================
; /1 = Sprite Number    (Value)
; /2 = XPos High Byte   (Address)
; /3 = XPos Low Byte    (Address)
; /4 = YPos             (Address)
.macro LIBSPRITE_SETPOSITION_VAAA sprite, xposh, xposl, ypos
.local end
    ldy #sprite*2           ; *2 as registers laid out 2 apart
    lda xposl               ; get XPos Low Byte
    sta SP0X,y              ; set the XPos sprite register
    lda ypos                ; get YPos
    sta SP0Y,y              ; set the YPos sprite register

    lda #sprite>>1          ; shift 1 into sprite bit position
    eor #$FF                ; get compliment
    and MSIGX               ; clear the bit
    sta MSIGX               ; and store

    ldy xposh               ; get XPos High Byte
    beq end                 ; skip if XPos High Byte is zero
    lda #sprite>>1          ; shift 1 into sprite bit position
    ora MSIGX               ; set the bit
    sta MSIGX               ; and store
end:
.endmacro

;===============================================================================
; /1 = Sprite Number           (Address)
; /2 = True = Back, False = Front (Value)
.macro LIBSPRITE_SETPRIORITY_AV sprite, priority
.local enable
.local disable
.local done
    ldy sprite
    lda spriteNumberMask,y

    ldy #priority
    beq disable
enable:
    ora SPBGPR ; merge with the current SPBGPR register
    sta SPBGPR ; set the new value into the SPBGPR register
    jmp done
disable:
    eor #$FF ; get mask compliment
    and SPBGPR
    sta SPBGPR
done:
.endmacro

;==============================================================================
; /1 = Sprite Number    (Address)
.macro LIBSPRITE_STOPANIM_A sprite
    ldy sprite
    lda #0
    sta spriteAnimsActive,y
.endmacro

;==============================================================================

libSpritesUpdate:

    ldx #0
lSoULoop:
    ; skip this sprite anim if not active
    lda spriteAnimsActive,X
    bne lSoUActive
    jmp lSoUSkip
lSoUActive:

    stx spriteAnimsCurrent
    lda spriteAnimsFrame,X
    sta spriteAnimsFrameCurrent

    lda spriteAnimsEndFrame,X
    sta spriteAnimsEndFrameCurrent

    LIBSPRITE_SETFRAME_AA spriteAnimsCurrent, spriteAnimsFrameCurrent

    dec spriteAnimsDelay,X
    bne lSoUSkip

    ; reset the delay
    lda spriteAnimsSpeed,X
    sta spriteAnimsDelay,X

    ; change the frame
    inc spriteAnimsFrame,X

    ; check if reached the end frame
    lda spriteAnimsEndFrameCurrent
    cmp spriteAnimsFrame,X
    bcs lSoUSkip

    ; check if looping
    lda spriteAnimsLoop,X
    beq lSoUDestroy

    ; reset the frame
    lda spriteAnimsStartFrame,X
    sta spriteAnimsFrame,X
    jmp lSoUSkip

lSoUDestroy:
    ; turn off
    lda #False
    sta spriteAnimsActive,X
    LIBSPRITE_ENABLE_AV spriteAnimsCurrent, False

lSoUSkip:
    ; loop for each sprite anim
    inx
    cpx #SpriteAnimsMax
    ;bne lSUloop
    beq lSoUFinished
    jmp lSoULoop
lSoUFinished:

    rts

.endif ; _LIB_SPRITES_
