100 print tab(26);"column"
110 print tab(20);"creative computing"
120 print tab(18);"morristown, new jersey"
130 print:print:print
140 print "this program will show you a card trick. after the first deal"
150 print "pick a card and type the number of the column containing it."
160 print "the dealer will then pick up the cards, a column at a time,"
170 print "and will deal them out again horizontally. when he finishes"
180 print "each time, type the number of the the new column containing your"
190 print "card. following the last deal the dealer will turn over the"
200 print "cards, one at a time, until he reaches the one you picked."
210 print:print:print
220 dim a(21),b(21)
230 for x=1 to 21
240 j=0
250 t=int(52*(rnd(1)))
270 for y=1 to x-1
280 if a(y)=t then 250
290 next y
300 a(x)=t
310 next x
320 n=0
330 for i=1 to 3
340 for z=1 to 21
350 if a(z)=4*(int(a(z)/4)) then 470
360 if a(z)-2=4*(int(a(z)/4)) then 440
370 if a(z)-3=4*(int(a(z)/4)) then 410
380 c$="spades"
390 d$=""
400 goto 490
410 c$="hearts"
420 d$=""
430 goto 490
440 c$="clubs"
450 d$=""
460 goto 490
470 c$="diamon"
480 d$="ds"
490 n=n+1
500 if n <> 4 then 530
510 print
520 n=1
530 if a(z) > 35 then 580
540 print tab((n-1)*25);int(a(z)/4)+2;"of ";c$;d$;
550 if j=5 then 900
560 if j=10 then 980
570 goto 710
580 if int(a(z)/4)=9 then 670
590 if int(a(z)/4)=10 then 650
600 if int(a(z)/4)=11 then 630
610 a$="jack"
620 goto 680
630 a$="queen"
640 goto 680
650 a$="king"
660 goto 680
670 a$="ace"
680 print tab((n-1)*25);a$;" of ";c$;d$;
690 if j=5 then 900
700 if j=10 then 980
710 next z
720 print:print
730 print "which column contains your card";
740 input k
750 if k<1 or k > 3 then print:print "(1-3)":goto 730
760 print:print
770 t=1
780 s=k+2-3*int((k+1)/3)
790 gosub 940
800 s=k
810 gosub 940
820 s=k+1-3*int(k/3)
830 gosub 940
840 for c=1 to 21
850 a(c)=b(c)
860 next c
870 next i
880 j=5
890 for z=1 to 11+int(10*rnd(1)+1):n=0:goto 350
900 print:next z:print
910 print "oops!!! your card is the";
920 n=1
930 j=10:z=11:goto 350
940 for r=s to s+18 step 3
950 b(t)=a(r)
960 t=t+1
970 next r:return
980 print ".":print
990 print "do you want to see it again";:input t$
1000 if t$="yes" then print:print:goto 230
1010 end
