1 print tab(25)"warfish"
2 print tab(20)"creative computing"
3 print tab(18)"morristown, new jersey"
5 print
6 print
7 print
8 print
9 dim a$(72)
10 q0=rnd(1)
30 print"do you desire the rules of warfish ";
40 input x$
50 if x$="no" then 200
51 if x$="yes" then 60
52 print"yes or no only, please."
53 goto 30
60 print
70 print"you command an american submarine that been sent out"
80 print"to attack japanese ships at sea during world war two"
90 print
100 print" the orders that can be given are the following:"
110 print"periscope - to search for japanese ships"
120 print"torpedo - to launch torpedoes at japanese ships"
130 print "dive - to escape japanese ships that are attacking"
140 print
150 print"these are some historic u.s. navy submarines -"
160 print"      tautog, silversides, cavalla, bluefish, thresher"
170 print"       swordfish, flasher, trout,archer"
180 print"select one of the above, or use a name of your choice"
200 print"print the name of your submarine ";
210 input a$
220 t=26
230 d=int(rnd(1)*10)
240 if d<6 then 330
250 if d<>6 and d<> 7 then 270
255 r$="destroyer"
260 w=2100
270 if d<>8 then290
271 r$="destroyer escort"
280 w=1350
290 if d<>9 then 310
291 r$="torpedo boat"
300 w=70
310 if d=6 or d=7 then 313
311 q=1
312 goto 314
313 q=2
314 print
315 print
320 print"japanese ";r$;" is attacking"
330 if d>= 6 then 340
335 a=int(rnd(1)*10)
340 print
350 print
360 print"orders, commander  ";
370 input c$
371 c$=mid$(c$,1,1)
380 if c$="p" then 420
390 if c$="t" then 780
400 if c$="d" then 990
410 goto 360
420 if d>5 or q>0 then 760
430 if a>=4 then 470
435 r$="freighter"
440 if a<>0 and a<>1 then 450
445 w=6500
450 if a<> 2 then 460
455 w=7500
460 if a<>3 then 470
465 w=8100
470 if a<>7 and a<>8 then 490
475 r$="tanker"
480 if a<>8 then 485
481 w=10000
482 goto 490
485 w=9500
490 if a<>4 and a<>5 then 510
491 r$="transport"
500 if a<>5 then 505
501 w=11500
502 goto 510
505 w=8800
510 if a<>6 then 530
515 r$="ammunition ship"
520 w=9650
530 if a>=9 or a=6 then 540
535 q=1
540 if a<>6 then 550
545 q=1
550 if a<9 then 760
560 e=int(rnd(1)*10)
570 if e<>0 then 590
575 r$="battleship"
580 w=33500
590 if e<>1 then 610
595 r$="aircraft carrier"
600 w=25700
610 if e<>2 then 630
615 r$="heavy cruiser"
620 w= 9900
630 if e<>3 then 650
635 r$="light cruiser"
640 w=9600
650 if e<>4 and e<>5 then 670
655 r$="destroyer"
660 w=2100
670 if e<>6 and e<>7 then 690
675 r$="submarine"
680 w=1500
690 if e<>8 and e<>9 then 710
700 w=1350
710 if e<=5 then 720
715 q=1
720 if e<>4 ande<>5 then 730
725 q=2
730 if e<>2 and e<>3 then 740
735 q=3
740 if e<>1 then 750
745 w=4
750 ife<>0 then 760
755 q=6
760 print"japanese ";r$;" - ";w;" tons"
770 goto 340
780 if q>=1 then 800
785 print" no japanese ships in sight - just ocean"
790 if q<1 then 360
800 print t;" torpedoes left"
810 print"number of torpedoes to fire";
820 input r
830 if r<0 or t-r<0 then 810
840 if r<>int(r) then 810
850 t=t-r
860 s=int(rnd(1)*10)
870 if s>r then 860
880 q=q-s
890 if q<=0 then 900
895 q$="damaged"
900 if q>=1 then 930
905 q$="sunk"
910 o=o+w
920 l=l+1
930 print r;" torpedoes fired -";s;" hits";
940 if s<>0 then 950
945 print
950 if s<=0 then 960
955 print" -"; r$;" ";q$
960 if d>5 and q>0 then 1140
970 if t<1 then 1160
980 if q<1 then 230
985 goto 340
990 if d>=6 then 1000
995 print" then uss ";a$;" is not under attack"
1000 if d<6 then 360
1010 u=int(rnd(1)*10)*250+500
1020 print "distance of japanese ";r$;"            depth of uss ";a$
1030 print u;"yards                                  ";z;"feet"
1040 u=u-250
1050 z=z+25
1060 if u>-250 then 1030
1070 if r$="torpedo boat " then 1100
1080 n=int(rnd(1)*10)*25+50
1090 if n+26>z and n-26<z then 1120
1099 u=z=0
1100 print"the uss ";a$;" is unhurt"
1110 q=0
1111 goto 230
1120 print"the uss ";a$;" has been sunk by depth charges"
1130 goto 1180
1140 print"the uss ";a$;" has been sunk by gunfire"
1150 goto 1180
1160 print"the uss ";a$;" has expended all of its torpedoes"
1170 if o<=0 then 1180
1175 print"congratulations on a successful deployment"
1180 print
1190 print" the submarine uss ";a$;" has sunk a total of";l;" ships"
1200 print" the enemy tonnage sunk is "jo;" tons"
1210 end
