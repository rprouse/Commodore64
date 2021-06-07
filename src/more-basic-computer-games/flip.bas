10 print tab(25);"flip"
20 print tab(18);"creative computing"
30 print tab(16);"morristown new jersey":print:print:print
31 b1=50
32 print "explanation (y or n)";
34 input t$
36 if left$(t$,1) <> "y" then 180
50 print "on each turn, you guess yes <'y'> or no <'n'>."
60 print "only one is correct, and the program has decided"
70 print "which one, before you make your guess. at first"
80 print "your odds are 50%, pure chance. but later the"
90 print "program will try to take advantage of patterns"
100 print "in your guessing."
110 print
120 print "game ends after ";b1;" turns; a score of ";
125 print int(b1/2-1);" or more"
130 print "is good. program tells when you win a turn,"
140 print "by typing an asterisk ('*') as the first"
150 print "character of the following line."
160 print
170 rem
180 rem inialize: 16 probabilities, 4 responses (x),
190 rem old-memory factor (f1), randomness factor (f2),
200 rem scores (s1,s2) and right-answer flag.
210 print
220 print
230 dim p(16),x(4)
240 print "begin."
250 for i=1 to 16
260 p(i)=.5
270 next i
280 for i=1 to 4
290 x(i)=0
300 if rnd(1) < .5 then 320
310 x(i)=1
320 next i
330 f1=.8
340 f2=.3
350 s1=0
360 s2=0
370 a$=" "
380 rem
390 rem take the estimated probability (z1)
400 rem of the person guessing yes.
410 rem use an adjusted probability <z2>.
420 i9=8*x(4)+4*x(3)+2*x(2)+x(1)+1
430 z1=p(i9)
440 z2=z1
450 if z2 <> .5 then 480
460 z2=rnd(1)
470 goto 520
480 if z2 > .5 then 510
490 z2=z2*f2+0*(1-f2)
500 goto 520
510 z2=z2*f2+1*(1-f2)
520 z5=0
530 if rnd(1) < z2 then 560
540 z5=1
550 rem
560 rem interact with person. get his response (z3).
570 rem update response history (x), appropriate prob. (p(i9)).
580 print a$;
590 z3=0
600 input h$
610 if left$(h$,1) = "y" then 650
620 if left$(h$,1) ="n" then 660
630 print "error, must be  y  or  n  ."
640 goto 600
650 z3=1
660 a$=" "
670 s2=s2+1
680 if z3 <> z5 then 710
690 a$="*"
700 s1=s1+1
710 rem update x - the last 4 choises.
720 x(1)=x(3)
730 x(2)=x(4)
740 x(3)=z3
750 x(4)=z5
760 rem update the probability using old 19.
770 p(i9)=f1*p(i9)*(1-f1)*x(3)
780 if s2 < b1 then 380
790 print a$;
800 print
810 print "end of game."
820 print "you got ";s1;" out of ";s2;" correct."
830 print:print
840 print "play again (y or n)";
850 input t$
860 if left$(t$,1)="y" then 240
870 end
