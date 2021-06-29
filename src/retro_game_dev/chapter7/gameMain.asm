;==============================================================================
; Retro Game Developer C64 Chapter 7
;   by Derek Morris <https://retrogamedev.com>
;
;   Rob Prouse <https://alteridem.net>
;==============================================================================
; Includes

    jmp gameMainInit

.include "../lib/libMemory.inc"
.include "../lib/libMath.inc"
.include "../lib/libScreen.inc"
.include "../lib/libSprite.inc"

.include "gamePlayer.asm"
.include "sprites.inc"

;===============================================================================
; Initialize

.code

gameMainInit:
    ; Turn off interrupts to stop LIBSCREEN_WAIT failing every so
    ; often when the kernal interrupt syncs up with the scanline test
    sei

    ; Switch to lowercase mode
    lda $17 ; UPPERCASE MODE is $25
    sta VMCSB

    ; Disable run/stop + restore keys
    lda #$FC
    sta $0328

    ; Relocate the sprites from the end of the program up to $3000
    LIBSPRITE_RELOCATESPRITES 2

    ; Set border and background colors
    ; The last 3 parameters are not used yet
    LIBSCREEN_SETCOLORS Blue, Black, Black, Black, Black

    ; Fill 1000 .bytes (40x25) of screen memory
    LIBSCREEN_SET1000 SCREENRAM, SpaceCharacter

    ; Fill 1000 .bytes (40x25) of color memory
    LIBSCREEN_SET1000 COLORRAM, White

    ; Set the sprite multicolors
    LIBSPRITE_SETMULTICOLORS_VV Black, Black

    ; Initialize the player
    jsr gamePlayerInit

;===============================================================================
; Update

gMLoop:
    LIBSCREEN_WAIT_V 255

    ;inc EXTCOL ; start code timer change border color

    ; Game update code goes here
    jsr gamePlayerUpdate

    ;dec EXTCOL ; end code timer reset border color
    jmp gMLoop
