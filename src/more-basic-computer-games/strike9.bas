10 print tab(25);"strike 9"
20 print tab(19);"creative computing"
30 print tab(18);"morristown new jersey"
90 dim a(9),d(4)
110 print:print:print
170 print "do you need instructions ";
180 input r$
190 if r$ = "no" then 340
200 if r$ <> "yes" then 170
210 print "strike nine is played with a pair of dice and a"
220 print "board with nine numbers: 1 2 3 4 5 6 7 8 9. you"
230 print "are given a roll and can knock off up to 4 numbers."
240 print "if you input that you want to remove 5 numbers, you"
250 print "will be given a chart of the numbers you have left"
260 print "to remove. next you input how many numbers you want"
270 print "to remove, and then input the numbers you want to "
280 print "take off, one at a time. the numbers you take off"
290 print "must add up to the roll. you win by removing every"
300 print "number from the board. you lose if you cannot"
310 print "remove all numbers with the roll you have."
320 print
340 print "ready to play?"
350 print
355 print "here is the board:"
360 rem set up the board
370 for b=1 to 9
380 print b;
390 a(b)=b
400 next b
405 print
410 c=int(rnd(1)*6+1)+int(rnd(1)*6+1)
420 print "your roll is ",c
430 t=0
440 for x=1 to 9
450 t=t+a(x)
460 next x
465 rem check for loss
470 if c > t then 950
480 if c=t then 1120
490 for k=1 to 9
500 for l=1 to 9
510 for m=1 to 9
520 for n=1 to 9
530 if n=k then 630
540 if n=l then 630
550 if n=m then 630
560 if m=k then 640
570 if m=l then 640
580 if l=k then 650
590 if c-a(k)=0 then 680
600 if c-a(k)=a(n) then 680
610 if c-a(k)-a(l)=a(n) then 680
620 if c-a(k)-a(m)=a(n) then 680
630 next n
640 next m
650 next l
660 next k
670 goto 950
680 for x=1 to 4
690 d(x)=0
700 next x
710 print "# of numbers to remove ";
720 input e
730 if int(e) <> e then 760
740 if e < 1 then 760
750 if e>4 then 880
755 goto 770
760 print "answer 1, 2, 3, or 4 (5 for the board)"
765 goto 710
770 print "what is the number";
780 for f=1 to e
790 input d(f)
800 if a(d(f)) <> 0 then 825
810 print "you removed it before, try agan."
820 goto 710
825 next f
830 if c <> d(1)+d(2)+d(3)+d(4) then 870
835 for f=1 to e
840 a(d(f))=0
850 next f
860 goto 410
870 print "those numbers don't add up to your roll, try again"
875 goto 710
880 print "the numbers you have left to remove are:  ";
890 for b=1 to 9
900 if a(b)=0 then 920
910 print a(b);
920 next b
930 print
940 goto 710
950 print "sorry, you lost this time."
960 t=0
970 for b=1 to 9
980 if a(b)=0 then 1000
990 t=t+1
1000 next b
1010 print "there are ";t;" numbers left on the board:   ";
1020 for x=1 to 9
1030 if a(x)=0 then 1050
1040 print a(x);
1050 next x
1060 print
1070 print "want to try again (yes or no)";
1080 input g$
1090 if g$="yes" then 170
1100 if g$ <> "no" then 1070
1110 end
1120 print "* * * congratulations * * *"
1130 print "* you won *"
1140 print
1150 print
1160 print "play another game (yes or no)";
1170 input h$
1180 if h$="yes" then 170
1190 if h$ <> "no" then 1160
1200 end
