;==============================================================================
; RetroGameDev Library C64 v1
;   (C)2017 by Derek Morris <https:;retrogamedev.com>
;   Conversion to KickAss 5.x by Marcelo Lv Cabral <http://lvcabral.com>
;   Conversion to ca65 by Rob Prouse <https://alteridem.net>
;==============================================================================

.include "../lib/libMemory.inc"
.include "../lib/libMath.inc"
.include "../lib/libScreen.inc"

;===============================================================================
; Initialize

.segment "CODE"

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

        ; Set border and background colors
        ; The last 3 parameters are not used yet
        LIBSCREEN_SETCOLORS Blue, White, Black, Black, Black

        ; Fill 1000 .bytes (40x25) of screen memory
        LIBSCREEN_SET1000 SCREENRAM, 'a' ; 'a' maps to char 1

        ; Fill 1000 .bytes (40x25) of color memory
        LIBSCREEN_SET1000 COLORRAM, Black

;===============================================================================
; Update

gMLoop:
        LIBSCREEN_WAIT_V 255
        ;inc EXTCOL ; start code timer change border color
        ; Game update code goes here
        ;dec EXTCOL ; end code timer reset border color
        jmp gMLoop





