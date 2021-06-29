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
playerXLow:     .byte 175
playerY:        .byte 229

.code

;==============================================================================
gamePlayerInit:
    LIBSPRITE_ENABLE_AV             playerSprite, True
    LIBSPRITE_SETFRAME_AV           playerSprite, PlayerFrame
    LIBSPRITE_SETCOLOR_AV           playerSprite, Cyan
    LIBSPRITE_MULTICOLORENABLE_AV   playerSprite, True

    rts

;==============================================================================
gamePlayerUpdate:
    rts

;==============================================================================
@gamePlayerUpdatePostition:
    ; Clamp the player x position
    LIBMATH_MIN16BIT_AAVV playerXHigh, playerXLow, PlayerXMaxHigh, PlayerXMaxLow
    LIBMATH_MAX16BIT_AAVV playerXHigh, playerXLow, PlayerXMinHigh, PlayerXMinLow

    ; Clamp the player y position
    LIBMATH_MIN8BIT_AV playerY, PlayerYMax
    LIBMATH_MAX8BIT_AV playerY, PlayerYMin

    ; Set the sprite position
    LIBSPRITE_SETPOSITION_AAAA playerSprite, playerXHigh, playerXLow, playerY
    rts
