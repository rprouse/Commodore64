.data

;==============================================================================
; Constants

PlayerFrame             := 1
PlayerHorizontalSpeed   := 2
PlayerVerticalSpeed     := 1
PlayerXMinHigh          := 0     ; 0*256 + 24 = 24  minX
PlayerXMinLow           := 24
PlayerXMaxHigh          := 1     ; 1*256 + 64 = 320 maxX
PlayerXMaxLow           := 64
PlayerYMin              := 180
PlayerYMax              := 229

;===============================================================================
; Variables

playerSprite:   .byte 0
playerXHigh:    .byte 0
playerXLow:     .byte $B0
playerY:        .byte $E0

.code

playerInit:
    ; Set the sprite multicolors
    ;LIBSPRITE_SETMULTICOLORS_VV Black, Black

    ; TODO: Make this generic
    ; Set sprite pointer 0 to point to the first sprite
    lda #$C0    ; $3000 / $40 or 12288 / 64
    sta $07F8

    ; Enable sprite 0
    Sprite_Enable 0, True

    ; Set the sprite color to Cyan
    Sprite_SetColor 0, Cyan
    rts

playerUpdate:
    jsr playerUpdatePosition
    rts

playerUpdatePosition:
    ; Set the sprite position
    Sprite_SetPosition playerSprite, playerXHigh, playerXLow, playerY
    rts
