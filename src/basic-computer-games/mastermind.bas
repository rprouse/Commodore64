2 print tab(30);"mastermind"
4 print tab(15);"creative computing  morristown, new jersey"
6 print: print: print
10 rem
20 rem     mastermind ii
30 rem     steve north
40 rem     creative computing
50 rem     po box 789-m morristown new jersey 07960
60 rem
70 rem
80 input "number of colors";c9
90 if c9>8 then print "no more than 8, please!":goto 80
100 input "number of positions";p9
110 input "number of rounds";r9
120 p=c9^p9
130 print "total possibilities =";p
140 h=0:c=0
150 dim q(p9),s(10,2),s$(10),a$(p9),g$(p9),i(p),h$(p9)
160 l$="bwrgoypt"
170 print
180 print
190 print "color     letter"
200 print "=====     ======"
210 for x=1 to c9
220 read x$
230 print x$;tab(13);mid$(l$,x,1)
240 next x
250 print
260 for r=1 to r9
270 print 
280 print "round number";r;"----"
290 print
300 print "guess my combination.":print
310 rem     get a combination
320 a=int(p*rnd(1)+1)
330 gosub 3000
340 for x=1 to a
350 gosub 3500
360 next x
370 for m=1 to 10
380 print "move # ";m;" guess ";:input x$
390 if x$="board" then 2000
400 if x$="quit" then 2500
410 if len(x$)<>p9 then print "bad number of positions.":goto 380
420 rem     unpack x$ into g$(1-p9)
430 for x=1 to p9
440 for y=1 to c9
450 if mid$(x$,x,1)=mid$(l$,y,1) then 480
460 next y
470 print "'"; mid$(x$,x,1); "' is unrecognized.":goto 380
480 g$(x)=mid$(x$,x,1)
490 next x
500 rem     now we convert q(1-p9) into a$(1-p9) [actual guess]
510 gosub 4000
520 rem     and get number of blacks and whites
530 gosub 4500
540 if b=p9 then 630
550 rem     tell human results
560 print "you have ";b;" blacks and ";w;" whites."
570 rem     save all this stuff for board printout later
580 s$(m)=x$
590 s(m,1)=b
600 s(m,2)=w
610 next m
620 print "you ran out of moves!  that's all you get!":goto 640
622 gosub 4000
623 print "the actual combination was: ";
624 for x=1 to p9
625 print a$(x);
626 next x
627 print
630 print "you guessed it in ";m;" moves!"
640 h=h+m
650 gosub 5000
660 rem
670 rem     now computer guesses
680 rem
690 for x=1 to p
700 i(x)=1
710 next x
720 print "now i guess.  think of a combination."
730 input "hit return when ready:";x$
740 for m=1 to 10
750 gosub 3000
760 rem     find a guess
770 g=int(p*rnd(1)+1)
780 if i(g)=1 then 890
790 for x=g to p
800 if i(x)=1 then 880
810 next x
820 for x=1 to g
830 if i(x)=1 then 880
840 next x
850 print "you have given me inconsistent information."
860 print "try again, and this time please be more careful."
870 goto 660
880 g=x
890 rem     now we convert guess #g into g$
900 for x=1 to g
910 gosub 3500
920 next x
930 gosub 6000
940 print "my guess is: ";
950 for x=1 to p9
960 print h$(x);
970 next x
980 input "  blacks, whites ";b1,w1
990 if b1=p9 then 1120
1000 gosub 3000
1010 for x=1 to p
1020 gosub 3500
1030 if i(x)=0 then 1070
1035 gosub 6500
1040 gosub 4000
1050 gosub 4500
1060 if b1<>b or w1<>w then i(x)=0
1070 next x
1080 next m
1090 print "i used up all my moves!"
1100 print "i guess my cpu is just having an off day."
1110 goto 1130
1120 print "i got it in ";m;" moves!"
1130 c=c+m
1140 gosub 5000
1150 next r
1160 print "game over"
1170 print "final score:"
1180 gosub 5040
1190 stop
2000 rem
2010 rem     board printout routine
2020 rem
2025 print
2030 print "board"
2040 print "move     guess          black     white"
2050 for z=1 to m-1
2060 print z;tab(9);s$(z);tab(25);s(z,1);tab(35);s(z,2)
2070 next z
2075 print
2080 goto 380
2500 rem
2510 rem     quit routine
2520 rem
2530 print "quitter!  my combination was: ";
2535 gosub 4000
2540 for x=1 to p9
2550 print a$(x);
2560 next x
2565 print
2570 print "good bye"
2580 stop
3000 rem
3010 rem     initialize q(1-p9) to zeros
3020 rem
3030 for s=1 to p9
3040 q(s)=0
3050 next s
3060 return
3500 rem
3510 rem     increment q(1-p9)
3520 rem
3522 if q(1)>0 then 3530
3524 rem  if zero, this is our first increment: make all ones
3526 for s=1 to p9
3527 q(s)=1
3528 next s
3529 return
3530 q=1
3540 q(q)=q(q)+1
3550 if q(q)<=c9 then return
3560 q(q)=1
3570 q=q+1
3580 goto 3540
4000 rem
4010 rem     convert q(1-p9) to a$(1-p9)
4020 rem
4030 for s=1 to p9
4040 a$(s)=mid$(l$,q(s),1)
4050 next s
4060 return
4500 rem
4510 rem     get number of blacks (b) and whites (w)
4520 rem     mashes g$ and a$ in the process
4530 rem
4540 b=0:w=0:f=0
4550 for s=1 to p9
4560 if g$(s)<>a$(s) then 4620
4570 b=b+1
4580 g$(s)=chr$(f)
4590 a$(s)=chr$(f+1)
4600 f=f+2
4610 goto 4660
4620 for t=1 to p9
4630 if g$(s)<>a$(t) then 4650
4640 if g$(t)=a$(t) then 4650
4645 w=w+1:a$(t)=chr$(f):g$(s)=chr$(f+1):f=f+2:goto 4660
4650 next t
4660 next s
4670 return
5000 rem
5010 rem     print score
5020 rem
5030 print "score:"
5040 print "     computer ";c
5050 print "     human    ";h
5060 print
5070 return
5500 rem
5510 rem     convert q(1-p9) into g$(1-p9)
5520 rem
5530 for s=1 to p9
5540 g$(s)=mid$(l$,q(s),1)
5550 next s
5560 return
6000 rem
6010 rem     convert q(1-p9) to h$(1-p9)
6020 rem
6030 for s=1 to p9
6040 h$(s)=mid$(l$,q(s),1)
6050 next s
6060 return
6500 rem
6510 rem     copy h$ into g$
6520 rem
6530 for s=1 to p9
6540 g$(s)=h$(s)
6550 next s
6560 return
8000 rem     program data for color names
8010 data black,white,red,green,orange,yellow,purple,tan
9998 rem   ...we're sorry but it's time to go...
9999 end
