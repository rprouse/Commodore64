;==============================================================================
;   Rob Prouse <https://alteridem.net>
;==============================================================================
; Includes

    jmp gameMainInit

.include "../lib/libMemory.inc"
.include "../lib/libMath.inc"
.include "../lib/libScreen.inc"
.include "../lib/libSprite.inc"

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
    LIBSPRITE_RELOCATESPRITES 1
;     ldx #63
; byteloop:               ; Loop through each byte in the sprite
;     lda sprite_0,x
;     sta $3000,x
;     dex
;     bne byteloop

    ; Set border and background colors
    ; The last 3 parameters are not used yet
    LIBSCREEN_SETCOLORS Black, Black, Black, Black, Black

    ; Fill 1000 .bytes (40x25) of screen memory
    LIBSCREEN_SET1000 SCREENRAM, SpaceCharacter

    ; Fill 1000 .bytes (40x25) of color memory
    LIBSCREEN_SET1000 COLORRAM, White

    ; Set the sprite multicolors
    LIBSPRITE_SETMULTICOLORS_VV Black, Black

    ; Enable sprite 0
    ;lda #$01
    ;sta $D015
    LIBSPRITE_ENABLE_AV 0, True

    ; Set sprite pointer 0 to point to the first sprite
    lda #$C0    ; $3000 / $40 or 12288 / 64
    sta $07F8

    ; Set the sprite color to Cyan
    lda #Cyan
    sta $D027
    ;LIBSPRITE_SETCOLOR_AV 0, Cyan

    ; Set the sprite position
    lda #$B0
    sta $D000   ; X position
    lda #$E0
    sta $D001   ; Y position
    ;LIBSPRITE_SETPOSITION_AAAA 0, 0, $B0, $E0

;===============================================================================
; Update

gMLoop:
    LIBSCREEN_WAIT_V 255

    ;inc EXTCOL ; start code timer change border color

    ; Game update code goes here
    ;jsr gamePlayerUpdate

    ;dec EXTCOL ; end code timer reset border color
    jmp gMLoop
