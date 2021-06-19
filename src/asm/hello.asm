.segment "DATA"

message: .asciiz "hello, world!"

.segment "CODE"
   jmp start

ZP_PTR_1 = $7E
CHROUT := $FFD2
NEWLINE = $0D
UPPERCASE = $8E

start:
   lda #UPPERCASE          ; force uppercase
   jsr CHROUT
   lda #<message           ; print message
   sta ZP_PTR_1
   lda #>message
   sta ZP_PTR_1+1
   ldy #0

@loop:
   lda (ZP_PTR_1),y
   beq @end
   jsr CHROUT
   iny
   jmp @loop

@end:
   lda #NEWLINE            ; print newline
   jsr CHROUT
   rts
