; Enable an interupt that prints the contents of the zero page to the screen
.include "c64.inc"

SCREEN := $0400  ; Upper left corner of the screen

; SYS 2061
enable:
  lda IRQVec     ; Copy the default interupt vector into our override
  sta original_vector
  lda IRQVec+1
  sta original_vector+1

  sei                     ; Disable interupts
  lda #<interupt          ; Set our interupt to the vector
  sta IRQVec
  lda #>interupt
  sta IRQVec+1
  cli                     ; Re-enable interupts
  rts

; SYS 2086
disable:
  sei                     ; Disable interupts
  lda #<original_vector   ; Set the save interupt vector back
  sta IRQVec
  lda #>original_vector
  sta IRQVec+1
  cli                     ; Re-enable interupts
  rts

interupt:
  ldx #$00
@loop:
  lda $00,x
  sta SCREEN,x
  inx
  cpx #$00
  bne @loop
  jmp (original_vector)   ; Carry on with normal interupt processing

original_vector:
  .addr $0000
