.include "memory.inc"

; SYS 2061
enable:
  lda INTERUPT_VECTOR     ; Copy the default interupt vector into our override
  sta original_vector
  lda INTERUPT_VECTOR+1
  sta original_vector+1

  sei                     ; Disable interupts
  lda #<interupt          ; Set our interupt to the vector
  sta INTERUPT_VECTOR
  lda #>interupt
  sta INTERUPT_VECTOR+1
  cli                     ; Re-enable interupts
  rts

; SYS 2086
disable:
  sei                     ; Disable interupts
  lda #<original_vector   ; Set the save interupt vector back
  sta INTERUPT_VECTOR
  lda #>original_vector
  sta INTERUPT_VECTOR+1
  cli                     ; Re-enable interupts
  rts

interupt:
  lda $91                 ; Load what is at memory location $91
  sta SCREEN              ; Output it to the upper left corner of the screen
  jmp (original_vector)   ; Carry on with normal interupt processing

original_vector:
  .addr $0000
