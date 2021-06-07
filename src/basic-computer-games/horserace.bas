100 print tab(31);"horserace"
110 print tab(15);"creative computing  morristown, new jersey"
120 print:print:print
210 dim s(8)
220 print "welcome to south portland high racetrack"
230 print "                      ...owned by laurie chevalier"
240 print "do you want directions";
250 input x$
260 if x$="no" then 320
270 print"up to 10 may play.  a table of odds will be printed.  you"
280 print"may bet any + amount under 100000 on one horse."
290 print "during the race, a horse will be shown by its"
300 print"number.  the horses race down the paper!"
310 print
320 print "how many want to bet";
330 input c
340 print "when ? appears,type name"
350 for a=1 to c
360 input w$(a)
370 next a
380 print
390 print"horse",,"number","odds"
400 print
410 for i=1 to 8: s(i)=0: next i
420 let r=0
430 for a=1 to 8
440 let d(a)=int(10*rnd(1)+1)
450 next a
460 for a=1 to 8
470 let r=r+d(a)
480 next a
490 let v$(1)="joe maw"
500 let v$(2)="l.b.j."
510 let v$(3)="mr.washburn"
520 let v$(4)="miss karen"
530 let v$(5)="jolly"
540 let v$(6)="horse"
550 let v$(7)="jelly do not"
560 let v$(8)="midnight"
570 for n=1 to 8
580 print v$(n),,n,r/d(n);":1"
590 next n
600 print"--------------------------------------------------"
610 print "place your bets...horse # then amount"
620 for j=1 to c
630 print w$(j);
640 input q(j),p(j)
650 if p(j)<1 then 670
660 if p(j)<100000 then 690
670 print"  you can't do that!"
680 goto 630
690 next j
700 print
710 print"1 2 3 4 5 6 7 8"
720 print"xxxxstartxxxx"
730 for i=1 to 8
740 let m=i
750 let m(i)=m
760 let y(m(i))=int(100*rnd(1)+1)
770 if y(m(i))<10 then 860
780 let s=int(r/d(i)+.5)
790 if y(m(i))<s+17 then 880
800 if y(m(i))<s+37 then 900
810 if y(m(i))<s+57 then 920
820 if y(m(i))<77+s then 940
830 if y(m(i))<s+92 then 960
840 let y(m(i))=7
850 goto 970
860 let y(m(i))=1
870 goto 970
880 let y(m(i))=2
890 goto 970
900 let y(m(i))=3
910 goto 970
920 let y(m(i))=4
930 goto 970
940 let y(m(i))=5
950 goto 970
960 let y(m(i))=6
970 next i
980 let m=i
990 for i=1 to 8
1000 let s(m(i))=s(m(i))+y(m(i))
1010 next i
1020 let i=1
1030 for l=1 to 8
1040 for i=1 to 8-l
1050 if s(m(i))<s(m(i+1))then 1090
1060 let h=m(i)
1070 let m(i)=m(i+1)
1080 let m(i+1)=h
1090 next i
1100 next l
1110 let t=s(m(8))
1120 for i=1 to 8
1130 let b=s(m(i))-s(m(i-1))
1140 if b=0 then 1190
1150 for a=1 to b
1160 print
1170 if s(m(i))>27 then 1240
1180 next a
1190 print m(i);
1200 next i
1210 for a=1 to 28-t
1220 print
1230 next a
1240 print "xxxxfinishxxxx";
1242 print
1243 print
1244 print "---------------------------------------------"
1245 print
1250 if t<28 then 720
1270 print "the race results are:"
1272 let z9=1
1280 for i=8 to 1 step-1
1290 let f=m(i)
1300 print
1310 print z9;"place horse no.";f,"at ";r/d(f);":1"
1312 let z9=z9+1
1320  next i
1330 for j=1 to c
1340 if q(j)<>m(8) then 1370
1350 let n=q(j)
1355 print
1360 print w$(j);" wins $";(r/d(n))*p(j)
1370 next j
1372 print "do you want to bet on the next race ?"
1374 input "yes or no"; o$
1376 if o$="yes" then 380
1380 end
