1 print tab(33);"boxing"
2 print tab(15);"creative computing  morristown, new jersey"
3 print:print:print
4 print "boxing olympic style (3 rounds -- 2 out of 3 wins)"
5 j=0
6 l=0
8 print
10 print "what is your opponent's name";
20 input j$
30 print "input your man's name";
40 input l$
50 print "different punches are: (1) full swing; (2) hook; (3) uppercut; (4) jab."
60 print "what is your mans best";
64 input b
70 print "what is his vulnerability";
80 input d
90 b1=int(4*rnd(1)+1)
100 d1=int(4*rnd(1)+1)
110 if b1=d1 then 90
120 print j$;"'s advantage is";b1;"and vulnerability is secret.":print
130 for r=1 to 3
140 if j>= 2 then 1040
150 if l>=2 then 1060
160 x=0
170 y=0
180 print "round";r;"begins..."
185 for r1= 1 to 7
190 i=int(10*rnd(1)+1)
200 if i>5 then 600
210 print l$;"'s punch";
220 input p
221 if p=b then 225
222 goto 230
225 x=x+2
230 if p=1 then 340
240 if p=2 then 450
250 if p=3 then 520
270 print l$;" jabs at ";j$"'s head ";
271 if d1=4 then 290
275 c=int(8*rnd(1)+1)
280 if c<4 then 310
290 x=x+3
300 goto 950
310 print "it's blocked."
330 goto 950
340 print l$ " swings and ";
341 if d1=4 then 410
345 x3=int(30*rnd(1)+1)
350 if x3<10 then 410
360 print "he misses ";
370 print
375 if x=1 then 950
380 print
390 print
400 goto 300
410 print "he connects!"
420 if x>35 then 980
425 x=x+15
440 goto 300
450 print l$;" gives the hook... ";
455 if d1=2 then 480
460 h1=int(2*rnd(1)+1)
470 if h1=1 then 500
475 print "connects..."
480 x=x+7
490 goto 300
500 print "but it's blocked!!!!!!!!!!!!!"
510 goto 300
520 print l$ " tries an uppercut ";
530 if d1=3 then 570
540 d5=int(100*rnd(1)+1)
550 if d5<51 then 570
560 print "and it's blocked (lucky block!)"
565 goto 300
570 print "and he connects!"
580 x=x+4
590 goto 300
600 j7=int(4*rnd(1)+1)
601 if j7 =b1 then 605
602 goto 610
605 y=y+2
610 if j7=1 then 720
620 if j7=2 then 810
630 if j7 =3 then 860
640 print j$;" jabs and ";
645 if d=4 then 700
650 z4=int(7*rnd(1)+1)
655 if z4>4 then 690
660 print "it's blocked!"
670 goto 300
690 print " blood spills !!!"
700 y=y+5
710 goto 300
720 print j$" takes a full swing and";
730 if d=1 then 770
740 r6=int(60*rnd(1)+1)
745 if r6 <30 then 770
750 print " it's blocked!"
760 goto 300
770 print " pow!!!!! he hits him right in the face!"
780 if y>35 then 1010
790 y=y+15
800 goto 300
810 print j$;" gets ";l$;" in the jaw (ouch!)"
820 y=y+7
830 print "....and again!"
835 y=y+5
840 if y>35 then 1010
850 print
860 print l$;" is attacked by an uppercut (oh,oh)..."
865 if d=3 then 890
870 q4=int(200*rnd(1)+1)
880 if q4>75 then 920
890 print "and ";j$;" connects..."
900 y=y+8
910 goto 300
920 print " blocks and hits ";j$;" with a hook."
930 x=x+5
940 goto 300
950 next r1
951 if x>y then 955
952 print:print j$" wins round" r
953 j=j+1
954 goto 960
955 print:print l$" wins round"r
956 l=l+1
960 next r
961 if j>= 2 then 1040
962 if l>=2 then 1060
980 print j$ " is knocked cold and " l$" is the winner and champ!";
1000 goto 1080
1010 print l$ " is knocked cold and " j$" is the winner and champ!";
1030 goto 1000
1040 print j$ " wins (nice going," j$;")."
1050 goto 1000
1060 print l$ " amazingly wins!!"
1070 goto 1000
1080 print
1085 print
1090 print "and now goodbye from the olympic arena."
1100 print
1110 end
