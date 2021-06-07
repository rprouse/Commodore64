10 print tab(33);"batnum"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
110 print "this program is a 'battle of numbers' game, where the"
120 print "computer is your opponent."
130 print 
140 print "the game starts with an assumed pile of objects. you"
150 print "and your opponent alternately remove objects from the pile."
160 print "winning is defined in advance as taking the last object or"
170 print "not. you can also specify some other beginning conditions."
180 print "don't use zero, however, in playing the game."
190 print "enter a negative number for new pile size to stop playing."
200 print
210 goto 330
220 for i=1 to 10
230 print
240 next i
330 input "enter pile size";n
350 if n>=1 then 370
360 goto 330
370 if n<>int(n) then 220
380 if n<1 then 220
390 input "enter win option - 1 to take last, 2 to avoid last: ";m
410 if m=1 then 430
420 if m<>2 then 390
430 input "enter min and max ";a,b
450 if a>b then 430
460 if a<1 then 430
470 if a<>int(a) then 430
480 if b<>int(b) then 430
490 input "enter start option - 1 computer first, 2 you first ";s
500 print:print
510 if s=1 then 530
520 if s<>2 then 490
530 c=a+b
540 if s=2 then 570
550 gosub 600
560 if w=1 then 220
570 gosub 810
580 if w=1 then 220
590 goto 550
600 q=n
610 if m=1 then 630
620 q=q-1
630 if m=1 then 680
640 if n>a then 720
650 w=1
660 print "computer takes";n;"and loses."
670 return
680 if n>b then 720
690 w=1
700 print "computer takes";n;"and wins."
710 return
720 p=q-c*int(q/c)
730 if p>=a then 750
740 p=a
750 if p<=b then 770
760 p=b
770 n=n-p
780 print "computer takes";p;"and leaves";n
790 w=0
800 return
810 print:print "your move ";
820 input p
830 if p<>0 then 870
840 print "i told you not to use zero! computer wins by forfeit."
850 w=1
860 return
870 if p<>int(p) then 920
880 if p>=a then 910
890 if p=n then 960
900 goto 920
910 if p<=b then 940
920 print "illegal move, reenter it ";
930 goto 820
940 n=n-p
950 if n<>0 then 1030
960 if m=1 then 1000
970 print "tough luck, you lose."
980 w=1
990 return
1000 print "congratulations, you win."
1010 w=1
1020 return
1030 if n>=0 then 1060
1040 n=n+p
1050 goto 920
1060 w=0
1070 return
1080 end
