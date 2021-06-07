10 print tab(24);"mastermind"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
40 print:print:print
100 print "the game of mastermind"
110 print
130 print "color codes:"
140 print "               r=red     o=orange     y=yellow"
150 print "               g=green   b=blue       p=purple"
160 print
170 dim b$(10),y(10),z(10)
180 c(0)=4
190 for n=1 to 4
200 c(n)=int(6*rnd(1)+1)
210 next n
220 for n=1 to 4
230 x=c(n)
240 gosub 730
250 c(n)=x
260 next n
270 p$=""
273 for x1=1 to 4
275 p$=p$+chr$(c(x1))
277 next x1
280 for p=1 to 10
290 print
300 print "move number";p;
310 input g$
320 if g$= "board" then 910
330 if g$="quit" then 440
340 b$(p)=g$
350 gosub 520
360 if b=4 then 1010
370 gosub 600
380 print b;" black pegs"
390 y(p)=b
400 print w;" white pegs"
410 z(p)=w
420 next p
430 print "sorry, you lose"
440 print "the correct code was:";p$
450 print "want to play again";
460 input a$
480 if a$="yes" then 190
490 print
500 end
510 rem compute black pegs
520 for x1=1 to 4
523 g(x1)=asc(mid$(g$,x1,1))
525 next x1
530 b=0
540 for k=1 to 4
550 if g(k) <> c(k) then 570
560 b=b+1
570 next k
580 return
590 rem compute white pegs
600 for x1=1 to 4
603 r(x1)=asc(mid$(p$,x1,1))
605 next x1
610 w=0
620 for i=1 to 4
630 for j=1 to 4
640 if g(i) <> r(j) then 680
650 w=w+1
660 r(j)=0
670 goto 690
680 next j
690 next i
700 w=w-b
710 return
720 rem translate color codes to numerics
730 if x <> 1 then 760
740 x=89
750 return
760 if x <> 2 then 790
770 x=82
780 return
790 if x <> 3 then 820
800 x=80
810 return
820 if x <> 4 then 850
830 x=79
840 return
850 if x <> 5 then 880
860 x=71
870 return
880 x=66
890 return
900 rem print board summary
910 v=p-1
920 print "guess","blacks","whites"
930 print "-----","------","------"
960 for i=1 to v
970 print b$(i),y(i),z(i)
990 next i
1000 goto 290
1010 print "you win!!"
1020 goto 450
9999 end
