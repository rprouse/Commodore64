10 print tab(33);"slalom"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
310 print "how many gates does this course have (1 to 25)";
320 input v
330 if v>25 then 360
340 if v<1 then 390
350 goto 1440
360 print "25 is the limit."
370 let v=25
380 goto 1440
390 print "try again,"
400 goto 310
410 print "rate yourself as a skier, (1=worst, 3=best)";
420 input a
430 if a<1 then 460
440 if a>3 then 460
450 goto 480
460 print "the bounds are 1-3"
470 goto 410
480 print"the starter counts down...5...4...3...2...1...go!";
490 rem
500 let t=0
510 let s=int(rnd(1)*(18-9)+9)
520 print
525 print "you're off!"
530 for o=1 to v
540    read q
550    print
555    print "here comes gate #";str$(o);":"
560    print s;"m.p.h."
570    let s1=s
580    print "option";
590    input o1
600    if o1=0 then 970
610   if o1>8 then 1420
620    if o1<1 then 1420
630    gosub 990
640    if s<7 then 1390
650    let t=t+(q-s+1)
660    if s>q then 1630
670 next o
680 print:print "you took";(t+rnd(1));"seconds."
690 let m=t
700 let m=m/v
710 if m<1.5-(a*.1) then 1650
720 if m<2.9-(a*.1) then 1680
730 if m<4.4-(a*.01) then 1710
740 print:print "do you want to race again";
750 input b$
760 rem
770 if b$="no" then 1740
780 if b$="yes" then 480
790 print "please type 'yes' or 'no'"
800 goto 740
810 stop
820 print
825 print "*** slalom: this is the 1976 winter olympic giant slalom.  you are"
830 print "            the american team's only hope of a gold medal."
840 print
845 print "     0 -- type this is you want to see how long you've taken."
850 print "     1 -- type this if you want to speed up a lot."
860 print "     2 -- type this if you want to speed up a little."
870 print "     3 -- type this if you want to speed up a teensy."
880 print "     4 -- type this if you want to keep going the same speed."
890 print "     5 -- type this if you want to check a teensy."
900 print "     6 -- type this if you want to check a little."
910 print "     7 -- type this if you want to check a lot."
920 print "     8 -- type this if you want to cheat and try to skip a gate."
930 print
935 print " the place to use these options is when the computer asks:"
940 print
945 print "option?"
950 print
955 print "                good luck!"
957 print
960 goto 1470
970 print "you've taken";(t+rnd(1));"seconds."
980 goto 580
990 on o1 goto 1130,1010,1170,1080,1190,1100,1150,1210
1000 stop
1010 let s=s+int(rnd(1)*(5-3)+3)
1020 print s;"m.p.h."
1030 if s>q then 1290
1040 if s>q-1 then 1060
1050 return
1060 print "close one!"
1070 return
1080 print s;"m.p.h."
1090 goto 1030
1100 let s=s-int(rnd(1)*(5-3)+3)
1110 print s;"m.p.h."
1120 goto 1030
1130 let s=s+int(rnd(1)*(10-5)+5)
1140 goto 1080
1150 let s=s-int(rnd(1)*(10-5)+5)
1160 goto 1110
1170 let s=s+int(rnd(1)*(4-1)+1)
1180 goto 1110
1190 let s=s-int(rnd(1)*(4-1)+1)
1200 goto 1110
1210 print "***cheat"
1220 if rnd(1)<.7 then 1260
1230 print "you made it!"
1240 let t=t+1.5
1250 return
1260 print "an official caught you!"
1270 print "you took";(t+rnd(1));"seconds."
1280 goto 740
1290 if rnd(1)<((s-q)*.1)+.2 then 1320
1300 print "you went over the naximum speed and made it!"
1310 return
1320 print "you went over the maximum speed and ";
1330 if rnd(1)<.5 then 1370
1340 print "wiped out!"
1350 print "you took";(t+rnd(1));"seconds"
1360 goto 740
1370 print "snagged a flag!"
1380 goto 1350
1390 print "let's be realistic, ok?  let's go back and try again..."
1400 let s=s1
1410 goto 550
1420 print "what?"
1430 goto 580
1440 print
1445 print "type ";chr$(34);"ins";chr$(34);" for instructions"
1450 print "type ";chr$(34);"max";chr$(34);" for approximate maximum speeds"
1460 print "type ";chr$(34);"run";chr$(34);" for the beginning of the race"
1470 print "command--";
1480 input a$
1490 rem
1500 if a$="ins" then 820
1510 if a$="max" then 1550
1520 if a$="run" then 410
1530 print chr$(34);a$;chr$(34);" is an illegal command--retry";
1540 goto 1480
1550 print "gate max"
1560 print " #  m.p.h."
1570 print"----------"
1580 for b=1 to v
1590    read q
1600    print b;"  ";q
1610 next b
1620 goto 1470
1630 let t=t+.5
1640 goto 670
1650 print "you won a gold medal!"
1660 let g(1)=g(1)+1
1670 goto 1730
1680 print "you won a silver medal"
1690 let s(1)=s(1)+1
1700 goto 1730
1710 print "you won a bronze medal"
1720 let b(1)=b(1)+1
1730 goto 740
1740 print "thanks for the race"
1750 if g(1)<1 then 1770
1760 print "gold medals:";g(1)
1770 if s(1)<1 then 1790
1780 print "silver medals:";s(1)
1790 if b(1)<1 then 1830
1800 print "bronze medals:";b(1)
1810 data 14,18,26,29,18,25,28,32,29,20,29,29,25,21,26,29,20,21,20
1820 data 18,26,25,33,31,22
1830 end
