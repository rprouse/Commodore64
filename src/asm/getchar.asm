  jmp start

CHROUT := $FFD2
GETIN  := $FFE4
STOP   := $FFE1

CLRSCRN = $93
NEWLINE = $0D
UPPERCASE = $8E
CHAR_0 = $30
CHAR_9 = $39
CHAR_A = $41
CHAR_Z = $5A

start:
  lda #CLRSCRN
  jsr CHROUT

@loop:
  jsr STOP
  beq @end
  jsr GETIN
  cmp #CHAR_A
  bcc start
  cmp #CHAR_Z+1
  bcs start
  jsr CHROUT
  and #$0F

@end:
  rts
