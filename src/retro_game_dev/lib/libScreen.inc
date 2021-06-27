;==============================================================================
; RetroGameDev Library C64 v1
;   (C)2017 by Derek Morris <https:;retrogamedev.com>
;   Conversion to KickAss 5.x by Marcelo Lv Cabral <http://lvcabral.com>
;   Conversion to ca65 by Rob Prouse <https://alteridem.net>
;==============================================================================
; Includes

; .include "libMemory.inc"
; .include "libMath.inc"

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

.segment "DATA"

;Operator Calc

; ScreenRAMRowStartLow: ;  SCREENRAM + 40*0, 40*1, 40*2 ... 40*24
;         .byte <SCREENRAM,     <SCREENRAM+40,  <SCREENRAM+80
;         .byte <SCREENRAM+120, <SCREENRAM+160, <SCREENRAM+200
;         .byte <SCREENRAM+240, <SCREENRAM+280, <SCREENRAM+320
;         .byte <SCREENRAM+360, <SCREENRAM+400, <SCREENRAM+440
;         .byte <SCREENRAM+480, <SCREENRAM+520, <SCREENRAM+560
;         .byte <SCREENRAM+600, <SCREENRAM+640, <SCREENRAM+680
;         .byte <SCREENRAM+720, <SCREENRAM+760, <SCREENRAM+800
;         .byte <SCREENRAM+840, <SCREENRAM+880, <SCREENRAM+920
;         .byte <SCREENRAM+960

; ScreenRAMRowStartHigh: ;  SCREENRAM + 40*0, 40*1, 40*2 ... 40*24
;         .byte >SCREENRAM,     >SCREENRAM+40,  >SCREENRAM+80
;         .byte >SCREENRAM+120, >SCREENRAM+160, >SCREENRAM+200
;         .byte >SCREENRAM+240, >SCREENRAM+280, >SCREENRAM+320
;         .byte >SCREENRAM+360, >SCREENRAM+400, >SCREENRAM+440
;         .byte >SCREENRAM+480, >SCREENRAM+520, >SCREENRAM+560
;         .byte >SCREENRAM+600, >SCREENRAM+640, >SCREENRAM+680
;         .byte >SCREENRAM+720, >SCREENRAM+760, >SCREENRAM+800
;         .byte >SCREENRAM+840, >SCREENRAM+880, >SCREENRAM+920
;         .byte >SCREENRAM+960

; ColorRAMRowStartLow: ;  COLORRAM + 40*0, 40*1, 40*2 ... 40*24
;         .byte <COLORRAM,     <COLORRAM+40,  <COLORRAM+80
;         .byte <COLORRAM+120, <COLORRAM+160, <COLORRAM+200
;         .byte <COLORRAM+240, <COLORRAM+280, <COLORRAM+320
;         .byte <COLORRAM+360, <COLORRAM+400, <COLORRAM+440
;         .byte <COLORRAM+480, <COLORRAM+520, <COLORRAM+560
;         .byte <COLORRAM+600, <COLORRAM+640, <COLORRAM+680
;         .byte <COLORRAM+720, <COLORRAM+760, <COLORRAM+800
;         .byte <COLORRAM+840, <COLORRAM+880, <COLORRAM+920
;         .byte <COLORRAM+960

; ColorRAMRowStartHigh: ;  COLORRAM + 40*0, 40*1, 40*2 ... 40*24
;         .byte >COLORRAM,     >COLORRAM+40,  >COLORRAM+80
;         .byte >COLORRAM+120, >COLORRAM+160, >COLORRAM+200
;         .byte >COLORRAM+240, >COLORRAM+280, >COLORRAM+320
;         .byte >COLORRAM+360, >COLORRAM+400, >COLORRAM+440
;         .byte >COLORRAM+480, >COLORRAM+520, >COLORRAM+560
;         .byte >COLORRAM+600, >COLORRAM+640, >COLORRAM+680
;         .byte >COLORRAM+720, >COLORRAM+760, >COLORRAM+800
;         .byte >COLORRAM+840, >COLORRAM+880, >COLORRAM+920
;         .byte >COLORRAM+960

;Operator HiLo

screenColumn:       .byte 0
screenScrollXValue: .byte 0

;===============================================================================
; Macros/Subroutines

.segment "CODE"

.ifdef HASMAP
.macro LIBSCREEN_COPYMAPROW_VVA maprow, scrow, offset
                        ; /1 = Map Row          (Value)
                        ; /2 = Screen Row       (Value)
                        ; /3 = Start Offset     (Address)
        lda #maprow
        sta ZeroPageParam1
        lda #scrow
        sta ZeroPageParam2
        lda offset
        sta ZeroPageParam3
        jsr libScreen_CopyMapRow

libScreen_CopyMapRow:

        ldy ZeroPageParam1 ; load y position as index into list
        lda MapRAMRowStartLow,Y ; load low address byte
        sta ZeroPageLow2
        lda MapRAMRowStartHigh,Y ; load high address byte
        sta ZeroPageHigh2

        ; add on the offset to the map address
        LIBMATH_ADD16BIT_AAVAAA ZeroPageHigh2, ZeroPageLow2, 0, ZeroPageParam3, ZeroPageHigh2, ZeroPageLow2

        ldy ZeroPageParam2 ; load y position as index into list
        lda ScreenRAMRowStartLow,Y ; load low address byte
        sta ZeroPageLow
        lda ScreenRAMRowStartHigh,Y ; load high address byte
        sta ZeroPageHigh

        ldy #0
lSCMRLoop:
        lda (ZeroPageLow2),y
        sta (ZeroPageLow),y
        iny
        cpy #39
        bne lSCMRLoop

        rts
.endmacro

;==============================================================================

.macro LIBSCREEN_COPYMAPROWCOLOR_VVA maprow, scrow, offset
                        ; /1 = Map Row          (Value)
                        ; /2 = Screen Row       (Value)
                        ; /3 = Start Offset     (Address)
        lda #maprow
        sta ZeroPageParam1
        lda #scrow
        sta ZeroPageParam2
        lda offset
        sta ZeroPageParam3
        jsr libScreen_CopyMapRowColor

libScreen_CopyMapRowColor:

        ldy ZeroPageParam1 ; load y position as index into list
        lda MapRAMCOLRowStartLow,Y ; load low address byte
        sta ZeroPageLow2
        lda MapRAMCOLRowStartHigh,Y ; load high address byte
        sta ZeroPageHigh2

        ; add on the offset to the map address
        LIBMATH_ADD16BIT_AAVAAA ZeroPageHigh2, ZeroPageLow2, 0, ZeroPageParam3, ZeroPageHigh2, ZeroPageLow2

        ldy ZeroPageParam2 ; load y position as index into list
        lda ColorRAMRowStartLow,Y ; load low address byte
        sta ZeroPageLow
        lda ColorRAMRowStartHigh,Y ; load high address byte
        sta ZeroPageHigh

        ldy #0
lSCMRCLoop:
        lda (ZeroPageLow2),y
        ora #%00001000 ; set multicolor bit
        sta (ZeroPageLow),y
        iny
        cpy #39
        bne lSCMRCLoop

        rts
.endmacro

.endif
;==============================================================================

.macro LIBSCREEN_DEBUG8BIT_VVA valX, valY, ptr
                        ; /1 = X Position Absolute
                        ; /2 = Y Position Absolute
                        ; /3 = 1st Number Low Byte Pointer

        lda #WHITE
        sta $0286       ; set text color
        lda #$20        ; space
        jsr $ffd2       ; print 4 spaces
        jsr $ffd2
        jsr $ffd2
        jsr $ffd2
        ;jsr $E566       ; reset cursor
        ldx #valY       ; Select row
        ldy #valX       ; Select column
        jsr $E50C       ; Set cursor

        lda #0
        ldx ptr
        jsr $BDCD       ; print number
.endmacro

;===============================================================================

.macro LIBSCREEN_DEBUG16BIT_VVAA valX, valY, ptrh, ptrl
                        ; /1 = X Position Absolute
                        ; /2 = Y Position Absolute
                        ; /3 = 1st Number High Byte Pointer
                        ; /4 = 1st Number Low Byte Pointer

        lda #WHITE
        sta $0286       ; set text color
        lda #$20        ; space
        jsr $ffd2       ; print 4 spaces
        jsr $ffd2
        jsr $ffd2
        jsr $ffd2
        ;jsr $E566       ; reset cursor
        ldx #valY       ; Select row
        ldy #valX       ; Select column
        jsr $E50C       ; Set cursor

        lda ptrh
        ldx ptrl
        jsr $BDCD       ; print number
.endmacro

;==============================================================================

.macro LIBSCREEN_DRAWTEXT_AAAV valX, valY, str, clr
                        ; /1 = X Position 0-39 (Address)
                        ; /2 = Y Position 0-24 (Address)
                        ; /3 = 0 terminated string (Address)
                        ; /4 = Text Color (Value)
.local loop
.local loop2

        ldy valY ; load y position as index into list

        lda ScreenRAMRowStartLow,Y ; load low address byte
        sta ZeroPageLow

        lda ScreenRAMRowStartHigh,Y ; load high address byte
        sta ZeroPageHigh

        ldy valX ; load x position into Y register

        ldx #0
loop:   lda str,X
        cmp #0
        beq done
        sta (ZeroPageLow),Y
        inx
        iny
        jmp loop
done:
        ldy valY ; load y position as index into list

        lda ColorRAMRowStartLow,Y ; load low address byte
        sta ZeroPageLow

        lda ColorRAMRowStartHigh,Y ; load high address byte
        sta ZeroPageHigh

        ldy valX ; load x position into Y register

        ldx #0
loop2:  lda str,X
        cmp #0
        beq done2
        lda #clr
        sta (ZeroPageLow),Y
        inx
        iny
        jmp loop2
done2:
.endmacro

.macro LIBSCREEN_DRAWDECIMAL_AAAV valX, valY, ptr, clr
                        ; /1 = X Position 0-39 (Address)
                        ; /2 = Y Position 0-24 (Address)
                        ; /3 = decimal number 2 nybbles (Address)
                        ; /4 = Text Color (Value)

        ldy valY ; load y position as index into list

        lda ScreenRAMRowStartLow,Y ; load low address byte
        sta ZeroPageLow

        lda ScreenRAMRowStartHigh,Y ; load high address byte
        sta ZeroPageHigh

        ldy valX ; load x position into Y register

        ; get high nybble
        lda ptr
        and #$F0

        ; convert to ascii
        lsr
        lsr
        lsr
        lsr
        ora #$30

        sta (ZeroPageLow),Y

        ; move along to next screen position
        iny

        ; get low nybble
        lda ptr
        and #$0F

        ; convert to ascii
        ora #$30

        sta (ZeroPageLow),Y


        ; now set the colors
        ldy valY ; load y position as index into list

        lda ColorRAMRowStartLow,Y ; load low address byte
        sta ZeroPageLow

        lda ColorRAMRowStartHigh,Y ; load high address byte
        sta ZeroPageHigh

        ldy valY ; load x position into Y register

        lda #clr
        sta (ZeroPageLow),Y

        ; move along to next screen position
        iny

        sta (ZeroPageLow),Y
.endmacro

;==============================================================================

.macro LIBSCREEN_GETCHAR char
        ; /1 = Return character code (Address)
        lda (ZeroPageLow),Y
        sta char
.endmacro

;===============================================================================

.macro LIBSCREEN_PIXELTOCHAR_AAVAVAAAA xhp, xlp, xad, ypx, yad, xch, xof, ych, yof
                                ; /1 = XHighPixels      (Address)
                                ; /2 = XLowPixels       (Address)
                                ; /3 = XAdjust          (Value)
                                ; /4 = YPixels          (Address)
                                ; /5 = YAdjust          (Value)
                                ; /6 = XChar            (Address)
                                ; /7 = XOffset          (Address)
                                ; /8 = YChar            (Address)
                                ; /9 = YOffset          (Address)
        lda xhp
        sta ZeroPageParam1
        lda xlp
        sta ZeroPageParam2
        lda #xad
        sta ZeroPageParam3
        lda ypx
        sta ZeroPageParam4
        lda #yad
        sta ZeroPageParam5

        jsr libScreen_PixelToChar

        lda ZeroPageParam6
        sta xch
        lda ZeroPageParam7
        sta xof
        lda ZeroPageParam8
        sta ych
        lda ZeroPageParam9
        sta yof

libScreen_PixelToChar:

        ; subtract XAdjust pixels from XPixels as left of a sprite is first visible at x = 24
        LIBMATH_SUB16BIT_AAVAAA ZeroPageParam1, ZeroPageParam2, 0, ZeroPageParam3, ZeroPageParam6, ZeroPageParam7

        lda ZeroPageParam6
        sta ZeroPageTemp

        ; divide by 8 to get character X
        lda ZeroPageParam7
        lsr ; divide by 2
        lsr ; and again = /4
        lsr ; and again = /8
        sta ZeroPageParam6

        ; AND 7 to get pixel offset X
        lda ZeroPageParam7
        and #7
        sta ZeroPageParam7

        ; Adjust for XHigh
        lda ZeroPageTemp
        beq nothigh
        LIBMATH_ADD8BIT_AVA ZeroPageParam6, 32, ZeroPageParam6 ; shift across 32 chars

nothigh:
        ; subtract YAdjust pixels from YPixels as top of a sprite is first visible at y = 50
        LIBMATH_SUB8BIT_AAA ZeroPageParam4, ZeroPageParam5, ZeroPageParam9


        ; divide by 8 to get character Y
        lda ZeroPageParam9
        lsr ; divide by 2
        lsr ; and again = /4
        lsr ; and again = /8
        sta ZeroPageParam8

        ; AND 7 to get pixel offset Y
        lda ZeroPageParam9
        and #7
        sta ZeroPageParam9

        rts
.endmacro

;==============================================================================

.macro LIBSCREEN_SCROLLXLEFT_A subr
                ; /1 = update subroutine (Address)

        dec screenScrollXValue
        lda screenScrollXValue
        and #%00000111
        sta screenScrollXValue

        lda SCROLX
        and #%11111000
        ora screenScrollXValue
        sta SCROLX

        lda screenScrollXValue
        cmp #7
        bne finished

        ; move to next column
        inc screenColumn
        jsr subr ; call the passed in function to update the screen rows
finished:
.endmacro

;==============================================================================

.macro LIBSCREEN_SCROLLXRIGHT_A subr
                ; /1 = update subroutine (Address)

        inc screenScrollXValue
        lda screenScrollXValue
        and #%00000111
        sta screenScrollXValue

        lda SCROLX
        and #%11111000
        ora screenScrollXValue
        sta SCROLX

        lda screenScrollXValue
        cmp #0
        bne finished

        ; move to previous column
        dec screenColumn
        jsr subr ; call the passed in function to update the screen rows
finished:
.endmacro

;==============================================================================

.macro LIBSCREEN_SCROLLXRESET_A subr
                 ; /1 = update subroutine (Address)

        lda #0
        sta screenColumn
        sta screenScrollXValue

        lda SCROLX
        and #%11111000
        ora screenScrollXValue
        sta SCROLX

        jsr subr ; call the passed in function to update the screen rows
.endmacro

;==============================================================================

.macro LIBSCREEN_SETSCROLLXVALUE_A val
                ; /1 = ScrollX value (Address)

        lda SCROLX
        and #%11111000
        ora val
        sta SCROLX
.endmacro

;==============================================================================

.macro LIBSCREEN_SETSCROLLXVALUE_V val
                ; /1 = ScrollX value (Value)

        lda SCROLX
        and #%11111000
        ora #val
        sta SCROLX
.endmacro

;==============================================================================

; Sets 1000 bytes of memory from start address with a value
.macro LIBSCREEN_SET1000 start, num
.local loop
                ; /1 = Start  (Address)
                ; /2 = Number (Value)

        lda #num                ; Get number to set
        ldx #250                ; Set loop value
loop:   dex                     ; Step -1
        sta start,x             ; Set start + x
        sta start+250,x         ; Set start + 250 + x
        sta start+500,x         ; Set start + 500 + x
        sta start+750,x         ; Set start + 750 + x
        bne loop                ; If x<>0 loop
.endmacro

;==============================================================================

.macro LIBSCREEN_SET38COLUMNMODE

        lda SCROLX
        and #%11110111 ; clear bit 3
        sta SCROLX
.endmacro

;==============================================================================

.macro LIBSCREEN_SET40COLUMNMODE

        lda SCROLX
        ora #%00001000 ; set bit 3
        sta SCROLX
.endmacro

;==============================================================================

.macro LIBSCREEN_SETCHARMEMORY mempos
                ; /1 = Character Memory Slot (Value)
        ; point vic (lower 4 bits of $d018)to new character data
        lda VMCSB
        and #%11110000  ; keep higher 4 bits
                        ; p208 M Jong book
        ora #mempos     ;$0E ; maps to  $3800 memory address
        sta VMCSB
.endmacro

;==============================================================================

.macro LIBSCREEN_SETCHAR_V char
                ; /1 = Character Code (Value)
        lda #char
        sta (ZeroPageLow),Y
.endmacro

;==============================================================================

.macro LIBSCREEN_SETCHAR_A char
                ; /1 = Character Code (Address)
        lda char
        sta (ZeroPageLow),Y
.endmacro

;==============================================================================

.macro LIBSCREEN_SETCHARPOSITION_AA xpos, ypos
                ; /1 = X Position 0-39 (Address)
                ; /2 = Y Position 0-24 (Address)

        ldy ypos                     ; load y position as index into list

        lda ScreenRAMRowStartLow,Y ; load low address byte
        sta ZeroPageLow

        lda ScreenRAMRowStartHigh,Y ; load high address byte
        sta ZeroPageHigh

        ldy xpos ; load x position into Y register
.endmacro

;==============================================================================

.macro LIBSCREEN_SETCOLORPOSITION_AA xpos, ypos
                ; /1 = X Position 0-39 (Address)
                ; /2 = Y Position 0-24 (Address)

        ldy ypos ; load y position as index into list

        lda ColorRAMRowStartLow,Y ; load low address byte
        sta ZeroPageLow

        lda ColorRAMRowStartHigh,Y ; load high address byte
        sta ZeroPageHigh

        ldy xpos ; load x position into Y register
.endmacro

;===============================================================================

; Sets the border and background colors
.macro LIBSCREEN_SETCOLORS border, bg0, bg1, bg2, bg3
                ; /1 = Border Color       (Value)
                ; /2 = Background Color 0 (Value)
                ; /3 = Background Color 1 (Value)
                ; /4 = Background Color 2 (Value)
                ; /5 = Background Color 3 (Value)

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
.ifdef HASMAP
.macro LIBSCREEN_SETMAPCHAR_VAAV mapRow, scrOffset, chrOffset, chr
        ; /1 = Map Row          (Value)
        ; /2 = Screen Offset    (Address)
        ; /3 = Char Offset      (Address)
        ; /4 = Character        (Value)
        lda #mapRow
        sta ZeroPageParam1
        lda scrOffset
        sta ZeroPageParam2
        lda chrOffset
        sta ZeroPageParam3
        lda #chr
        sta ZeroPageParam4
        jsr libScreen_SetMapChar

libScreen_SetMapChar:

        ldy ZeroPageParam1 ; load y position as index into list
        lda MapRAMRowStartLow,Y ; load low address .byte
        sta ZeroPageLow
        lda MapRAMRowStartHigh,Y ; load high address .byte
        sta ZeroPageHigh

        ; add on the screen offset to the map address
        LIBMATH_ADD16BIT_AAVAAA ZeroPageHigh, ZeroPageLow, 0, ZeroPageParam2, ZeroPageHigh, ZeroPageLow

        ; set the char
        lda ZeroPageParam4
        ldy ZeroPageParam3 ; index with the char offset
        sta (ZeroPageLow),y

        rts
.endmacro
.endif

;===============================================================================
.macro LIBSCREEN_SETMULTICOLORMODE

        lda SCROLX
        ora #%00010000 ; set bit 5
        sta SCROLX
.endmacro

;===============================================================================

; Waits for a given scanline
.macro LIBSCREEN_WAIT_V line
        ; /1 = Scanline (Value)
.local loop

loop:   lda #line               ; Scanline -> A
        cmp RASTER              ; Compare A to current raster line
        bne loop               ; Loop if raster line not reached 255
.endmacro
