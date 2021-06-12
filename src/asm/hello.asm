  jmp start

message: .byte "hello, world!"
end_msg:

ZP_PTR_1 = $7E
CHROUT := $FFD2
NEWLINE = $0D
UPPERCASE = $8E

start:
   ; force uppercase
   lda #UPPERCASE
   jsr CHROUT

   ; print message
   lda #<message
   sta ZP_PTR_1
   lda #>message
   sta ZP_PTR_1+1
   ldy #0

@loop:
   cpy #(end_msg-message)
   beq @end
   lda (ZP_PTR_1),y
   jsr CHROUT
   iny
   jmp @loop

@end:
   ; print newline
   lda #NEWLINE
   jsr CHROUT
   rts
