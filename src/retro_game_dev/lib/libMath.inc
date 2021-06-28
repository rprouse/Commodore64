;==============================================================================
; RetroGameDev Library C64 v1
;   (C)2017 by Derek Morris <https:;retrogamedev.com>
;   Conversion to KickAss 5.x by Marcelo Lv Cabral <http://lvcabral.com>
;   Conversion to ca65 by Rob Prouse <https://alteridem.net>
;==============================================================================
; Includes

.ifndef _LIB_MATH_
_LIB_MATH_ = 1

.include "libMemory.inc"

;===============================================================================
; Macros/Subroutines

.macro LIBMATH_ABS_AA number, result
                        ; /1 = Number (Address)
                        ; /2 = Result (Address)
        lda number
        bpl positive
        eor #$FF        ; invert the bits
        sta result
        inc result      ; add 1 to give the two's compliment
        jmp done
positive:
        sta result
done:
.endmacro

;==============================================================================

.macro LIBMATH_ADD8BIT_AAA num1, num2, sum
                ; /1 = 1st Number (Address)
                ; /2 = 2nd Number (Address)
                ; /3 = Sum (Address)
        clc             ; Clear carry before add
        lda num1        ; Get first number
        adc num2        ; Add to second number
        sta sum         ; Store in sum
.endmacro

;==============================================================================

.macro LIBMATH_ADD8BIT_AVA num1, num2, sum
                ; /1 = 1st Number (Address)
                ; /2 = 2nd Number (Value)
                ; /3 = Sum (Address)
        clc             ; Clear carry before add
        lda num1        ; Get first number
        adc #num2       ; Add to second number
        sta sum         ; Store in sum
.endmacro

;==============================================================================

.macro LIBMATH_ADD16BIT_AAVAAA num1h, num1l, num2h, num2l, sumh, suml
                ; /1 = 1st Number High Byte (Address)
                ; /2 = 1st Number Low Byte (Address)
                ; /3 = 2nd Number High Byte (Value)
                ; /4 = 2nd Number Low Byte (Address)
                ; /5 = Sum High Byte (Address)
                ; /6 = Sum Low Byte (Address)
        clc             ; Clear carry before first add
        lda num1l       ; Get LSB of first number
        adc num2l       ; Add LSB of second number
        sta suml        ; Store in LSB of sum
        lda num1h       ; Get MSB of first number
        adc #num2h      ; Add carry and MSB of NUM2
        sta sumh        ; Store sum in MSB of sum
.endmacro

;==============================================================================

.macro LIBMATH_ADD16BIT_AAVVAA num1h, num1l, num2h, num2l, sumh, suml
                ; /1 = 1st Number High Byte (Address)
                ; /2 = 1st Number Low Byte (Address)
                ; /3 = 2nd Number High Byte (Value)
                ; /4 = 2nd Number Low Byte (Value)
                ; /5 = Sum High Byte (Address)
                ; /6 = Sum Low Byte (Address)
        clc     ; Clear carry before first add
        lda num1l       ; Get LSB of first number
        adc #num2l      ; Add LSB of second number
        sta suml        ; Store in LSB of sum
        lda num1h       ; Get MSB of first number
        adc #num2h      ; Add carry and MSB of NUM2
        sta sumh        ; Store sum in MSB of sum
.endmacro

;==============================================================================

.macro LIBMATH_MIN8BIT_AV num1, num2
                ; /1 = Number 1 (Address)
                ; /2 = Number 2 (Value)
        lda #num2               ; load Number 2
        cmp num1                ; compare with Number 1
        bcs skip                ; if Number 2 >= Number 1 then skip
        sta num1                ; else replace Number1 with Number2
skip:
.endmacro

;==============================================================================

.macro LIBMATH_MAX8BIT_AV num1, num2
                ; /1 = Number 1 (Address)
                ; /2 = Number 2 (Value)
        lda #num2               ; load Number 2
        cmp num1                ; compare with Number 1
        bcc skip                ; if Number 2 < Number 1 then skip
        sta num1                ; else replace Number1 with Number2
skip:
.endmacro

;==============================================================================

.macro LIBMATH_MIN16BIT_AAVV num1h, num1l, num2h, num2l
                ; /1 = Number 1 High (Address)
                ; /2 = Number 1 Low (Address)
                ; /3 = Number 2 High (Value)
                ; /4 = Number 2 Low (Value)

        ; high byte
        lda num1h               ; load Number 1
        cmp #num2h              ; compare with Number 2
        bmi skip                ; if Number 1 < Number 2 then skip
        lda #num2h
        sta num1h               ; else replace Number1 with Number2

        ; low byte
        lda #num2l              ; load Number 2
        cmp num1l               ; compare with Number 1
        bcs skip                ; if Number 2 >= Number 1 then skip
        sta num1l               ; else replace Number1 with Number2
skip:
.endmacro

;==============================================================================

.macro LIBMATH_MAX16BIT_AAVV num1h, num1l, num2h, num2l
                ; /1 = Number 1 High (Address)
                ; /2 = Number 1 Low (Address)
                ; /3 = Number 2 High (Value)
                ; /4 = Number 2 Low (Value)

        ; high byte
        lda #num2h              ; load Number 2
        cmp num1h               ; compare with Number 1
        bcc skip                ; if Number 2 < Number 1 then skip
        sta num1h               ; else replace Number1 with Number2

        ; low byte
        lda #num2l              ; load Number 2
        cmp num1l               ; compare with Number 1
        bcc skip                ; if Number 2 < Number 1 then skip
        sta num1l               ; else replace Number1 with Number2

skip:
.endmacro

;==============================================================================

.macro LIBMATH_SUB8BIT_AAA num1, num2, result
                ; /1 = 1st Number (Address)
                ; /2 = 2nd Number (Address)
                ; /3 = Result (Address)
        sec             ; sec is the same as clear borrow
        lda num1        ; Get first number
        sbc num2        ; Subtract second number
        sta result      ; Store in result
.endmacro

;==============================================================================

.macro LIBMATH_SUB8BIT_AVA num1, num2, result
                ; /1 = 1st Number (Address)
                ; /2 = 2nd Number (Value)
                ; /3 = Result (Address)
        sec             ; sec is the same as clear borrow
        lda num1        ; Get first number
        sbc #num2       ; Subtract second number
        sta result      ; Store in result
.endmacro

;==============================================================================

.macro LIBMATH_SUB16BIT_AAVAAA num1h, num1l, num2h, num2l, subh, subl
                ; /1 = 1st Number High Byte (Address)
                ; /2 = 1st Number Low Byte (Address)
                ; /3 = 2nd Number High Byte (Value)
                ; /4 = 2nd Number Low Byte (Address)
                ; /5 = Subtracted High Byte (Address)
                ; /6 = Subtracted Low Byte (Address)
        sec             ; sec is the same as clear borrow
        lda num1l       ; Get LSB of first number
        sbc num2l       ; Subtract LSB of second number
        sta subl        ; Store in LSB of sum
        lda num1h       ; Get MSB of first number
        sbc #num2h      ; Subtract borrow and MSB of NUM2
        sta subh        ; Store sum in MSB of sum
.endmacro

;==============================================================================

.macro LIBMATH_SUB16BIT_AAVVAA num1h, num1l, num2h, num2l, subh, subl
                ; /1 = 1st Number High Byte (Address)
                ; /2 = 1st Number Low Byte (Address)
                ; /3 = 2nd Number High Byte (Value)
                ; /4 = 2nd Number Low Byte (Value)
                ; /5 = Sum High Byte (Address)
                ; /6 = Sum Low Byte (Address)
        sec             ; sec is the same as clear borrow
        lda num1l       ; Get LSB of first number
        sbc #num2l       ; Subtract LSB of second number
        sta subl        ; Store in LSB of sum
        lda num1h       ; Get MSB of first number
        sbc #num2h      ; Subtract borrow and MSB of NUM2
        sta subh        ; Store sum in MSB of sum
.endmacro

.endif ; _LIB_MATH_
