10 print tab(30);"tic tac toe"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
50 rem
100 rem   this program plays tic tac toe
110 rem   the machine goes first
120 print "the game board is numbered:": print
130 print "1  2  3": print "8  9  4": print "7  6  5"
140 print
150 rem
160 rem
170 rem
180 def fnm(x)=x-8*int((x-1)/8)
190 rem
200 rem  main program
210 print
220 print
230 a=9
240 m=a
250 gosub 650
260 p=m
270 b=fnm(p+1)
280 m=b
290 gosub 650
300 q=m
310 if q=fnm(b+4) then 360
320 c=fnm(b+4)
330 m=c
340 gosub 700
350 goto 730
360 c=fnm(b+2)
370 m=c
380 gosub 650
390 r=m
400 if r=fnm(c+4) then 450
410 d=fnm(c+4)
420 m=d
430 gosub 700
440 goto 730
450 if p/2<>int(p/2) then 500
460 d=fnm(c+7)
470 m=d
480 gosub 700
490 goto 730
500 d=fnm(c+3)
510 m=d
520 gosub 650
530 s=m
540 if s=fnm(d+4) then 590
550 e=fnm(d+4)
560 m=e
570 gosub 700
580 rem
590 e=fnm(d+6)
600 m=e
610 gosub 700
620 print "the game is a draw."
630 goto 210
640 rem
650 gosub 700
660 print "your move";
670 input m
680 return
700 print "computer moves";m
710 return
720 rem
730 print "and wins ********"
740 goto 210
750 end
