CHROUT := $FFD2   ; Send a character to the screen
GETIN  := $FFE4   ; Get input returning 0 if there is none
STOP   := $FFE1   ; Check if the RUN/STOP key has been pressed

CHKOUT := $FFC9   ; Switches CHROUT output to another logical file
CHKIN  := $FFC6   ; Switches GETIN input to another logical file
CLRCHN := $FFCC   ; Resets CHROUT and CETIN to the defaults
