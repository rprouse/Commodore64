2 print tab(32);"flipflop"
4 print tab(15);"creative computing  morristown, new jersey"
6 print
10 rem *** created by michael cass
15 dim a$(20)
20 print "the object of this puzzle is to change this:"
30 print
40 print "x x x x x x x x x x"
50 print
60 print "to this:"
70 print
80 print "o o o o o o o o o o"
90 print
100 print "by typing the number corresponding to the position of the"
110 print "letter on some numbers, one position will change, on"
120 print "others, two will change.  to reset line to all x's, type 0"
130 print "(zero) and to start over in the middle of a game, type "
140 print "11 (eleven)."
170 print
180 rem
190 q=rnd(1)
200 print "here is the starting line of x's."
210 print
220 c=0
230 print "1 2 3 4 5 6 7 8 9 10"
240 print "x x x x x x x x x x"
250 print
260 rem
270 for x=1 to 10
280 a$(x)="x"
290 next x
300 goto 320
310 print "illegal entry--try again."
320 print "input the number";
330 input n
340 if n<>int(n) then 310
350 if n=11 then 180
360 if n>11 then 310
370 if n=0 then 230
380 if m=n then 510
390 m=n
400 if a$(n)="o" then 480
410 a$(n)="o"
420 r=tan(q+n/q-n)-sin(q/n)+336*sin(8*n)
430 n=r-int(r)
440 n=int(10*n)
450 if a$(n)="o" then 480
460 a$(n)="o"
470 goto 610
480 a$(n)="x"
490 if m=n then 420
500 goto 610
510 if a$(n)="o" then 590
520 a$(n)="o"
530 r=.592*(1/tan(q/n+q))/sin(n*2+q)-cos(n)
540 n=r-int(r)
550 n=int(10*n)
560 if a$(n)="o" then 590
570 a$(n)="o"
580 goto 610
590 a$(n)="x"
600 if m=n then 530
610 print "1 2 3 4 5 6 7 8 9 10"
620 for z=1 to 10: print a$(z);" ";: next z
630 c=c+1
640 print
650 for z=1 to 10
660 if a$(z)<>"o" then 320
670 next z
680 if c>12 then 710
690 print "very good.  you guessed it in only";c;"guesses."
700 goto 720
710 print "try harder next time.  it took you";c;"guesses."
720 print "do you want to try another puzzle";
730 input x$
740 if left$(x$,1)="n" then 780
760 print
770 goto 180
780 end
