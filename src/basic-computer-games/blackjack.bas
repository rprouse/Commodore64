2 print tab(31);"black jack"
4 print tab(15);"creative computing  morristown, new jersey"
6 print:print:print
10 def fna(q)=q+11*(q>=22)
20 dim p(15,12),q(15),c(52),d(52),t(8),s(7),b(15)
30 dim r(15)
40 rem--p(i,j) is the jth card in hand i, q(i) is total of hand i
50 rem--c is the deck being dealt from, d is the discard pile,
60 rem--t(i) is the total for player i, s(i) is the total this hand for
70 rem--player i, b(i) is th bet for hand i
80 rem--r(i) is the length of p(i,*)
90 goto 1500
100 rem--subroutine to get a card.  result is put in x.
110 if c<51 then 230
120 print "reshuffling"
130 for d=d to 1 step -1
140 c=c-1
150 c(c)=d(d)
160 next d
170 for c1=52 to c step -1
180 c2=int(rnd(1)*(c1-c+1))+c
190 c3=c(c2)
200 c(c2)=c(c1)
210 c(c1)=c3
220 next c1
230 x=c(c)
240 c=c+1
250 return
300 rem--subroutine to evaluate hand i.  total is put into
310 rem--q(i). totals have the following meaning:
320 rem--  2-10...hard 2-10
330 rem-- 11-21...soft 11-21
340 rem-- 22-32...hard 11-21
350 rem--  33+....busted
360 q=0
370 for q2=1 to r(i)
380 x=p(i,q2)
390 gosub 500
400 next q2
410 q(i)=q
420 return
500 rem--subroutine to add card x to total q.
510 x1=x: if x1>10 then x1=10:  rem  same as x1=10 min x
520 q1=q+x1
530 if q>=11 then 590
540 if x>1 then 570
550 q=q+11
560 return
570 q=q1-11*(q1>=11)
580 return
590 q=q1-(q<=21 and q1>21)
600 if q<33 then 620
610 q=-1
620 return
700 rem--card printing subroutine
710 rem  d$ defined elsewhere
720 print mid$(d$,3*x-2,3);
730 print "  ";
740 return
750 rem--alternative printing routine
760 print " ";mid$(d$,3*x-1,2);
770 print "   ";
780 return
800 rem--subroutine to play out a hand.
810 rem--no splitting or blackjacks allowed
820 h1=5
830 gosub 1410
840 h1=3
850 on h goto 950,930
860 gosub 100
870 b(i)=b(i)*2
880 print "received a";
890 gosub 700
900 gosub 1100
910 if q>0 then gosub 1300
920 return
930 gosub 1320
940 return
950 gosub 100
960 print "received a";
970 gosub 700
980 gosub 1100
990 if q<0 then 940
1000 print "hit";
1010 goto 830
1100 rem--subroutine to add a card to row i
1110 r(i)=r(i)+1
1120 p(i,r(i))=x
1130 q=q(i)
1140 gosub 500
1150 q(i)=q
1160 if q>=0 then 1190
1170 print "...busted"
1180 gosub 1200
1190 return
1200 rem--subroutine to discard row i
1210 if r(i)<>0 then 1230
1220 return
1230 d=d+1
1240 d(d)=p(i,r(i))
1250 r(i)=r(i)-1
1260 goto 1210
1300 rem--prints total of hand i
1310 print
1320 aa=q(i): gosub 3400
1325 print "total is";aa
1330 return
1400 rem--subroutine to read reply
1410 rem  i$ defined elsewhere
1420 input h$: h$=left$(h$,1)
1430 for h=1 to h1 step 2
1440 if h$=mid$(i$,h,1) then 1480
1450 next h
1460 print "type ";mid$(i$,1,h1-1);" or ";mid$(i$,h1,2);" please";
1470 goto 1420
1480 h=(h+1)/2
1490 return
1500 rem--program starts here
1510 rem--initialize
1520 d$="n a  2  3  4  5  6  7n 8  9 10  j  q  k"
1530 i$="h,s,d,/,"
1540 for i=1 to 13
1550 for j=4*i-3 to 4*i
1560 d(j)=i
1570 next j
1580 next i
1590 d=52
1600 c=53
1610 print "do you want instructions";
1620 input h$
1630 if left$(h$,1)="n" or left$(h$,1)="n" then 1760
1640 print "this is the game of 21. as many as 7 players may play the"
1650 print "game. on each deal, bets will be asked for, and the"
1660 print "players' bets should be typed in. the cards will then be"
1670 print "dealt, and each player in turn plays his hand. the"
1680 print "first response should be either 'd', indicating that the"
1690 print "player is doubling down, 's', indicating that he is"
1700 print "standing, 'h', indicating he wants another card, or '/',"
1710 print "indicating that he wants to split his cards. after the"
1720 print "initial response, all further responses should be 's' or"
1730 print "'h', unless the cards were split, in which case doubling"
1740 print "down is again permitted. in order to collect for"
1750 print "blackjack, the initial response should be 's'."
1760 print "number of players";
1770 input n
1775 print
1780 if n<1 or n>7 or n>int(n) then 1760
1790 for i=1 to 8: t(i)=0: next i
1800 d1=n+1
1810 if 2*d1+c>=52 then gosub 120
1820 if c=2 then c=c-1
1830 for i=1 to n: z(i)=0: next i
1840 for i=1 to 15: b(i)=0: next i
1850 for i=1 to 15: q(i)=0: next i
1860 for i=1 to 7: s(i)=0: next i
1870 for i=1 to 15: r(i)=0: next i
1880 print "bets:"
1890 for i=1 to n: print "#";i;: input z(i): next i
1900 for i=1 to n
1910 if z(i)<=0 or z(i)>500 then 1880
1920 b(i)=z(i)
1930 next i
1940 print "player";
1950 for i=1 to n
1960 print i;"   ";
1970 next i
1980 print "dealer"
1990 for j=1 to 2
2000 print tab(5);
2010 for i=1 to d1
2020 gosub 100
2030 p(i,j)=x
2040 if j=1 or i<=n then gosub 750
2050 next i
2060 print
2070 next j
2080 for i=1 to d1
2090 r(i)=2
2100 next i
2110 rem--test for insurance
2120 if p(d1,1)>1 then 2240
2130 print "any insurance";
2140 input h$
2150 if left$(h$,1)<>"y" then 2240
2160 print "insurance bets"
2170 for i=1 to n: print "#";i;: input z(i): next i
2180 for i=1 to n
2190 if z(i)<0 or z(i)>b(i)/2 then 2160
2200 next i
2210 for i=1 to n
2220 s(i)=z(i)*(3*(-(p(d1,2)>=10))-1)
2230 next i
2240 rem--test for dealer blackjack
2250 l1=1: l2=1
2252 if p(d1,1)=1 and p(d1,2)>9 then l1=0: l2=0
2253 if p(d1,2)=1 and p(d1,1)>9 then l1=0: l2=0
2254 if l1<>0 or l2<>0 then 2320
2260 print:print "dealer has a";mid$(d$,3*p(d1,2)-2,3);" in the hole ";
2270 print "for blackjack"
2280 for i=1 to d1
2290 gosub 300
2300 next i
2310 goto 3140
2320 rem--no dealer blackjack
2330 if p(d1,1)>1 and p(d1,1)<10 then 2350
2340 print:print "no dealer blackjack."
2350 rem--now play the hands
2360 for i=1 to n
2370 print "player";i;
2380 h1=7
2390 gosub 1410
2400 on h goto 2550,2410,2510,2600
2410 rem--player wants to stand
2420 gosub 300
2430 if q(i)<>21 then 2490
2440 print "blackjack"
2450 s(i)=s(i)+1.5*b(i)
2460 b(i)=0
2470 gosub 1200
2480 goto 2900
2490 gosub 1320
2500 goto 2900
2510 rem--player wants to double down
2520 gosub 300
2530 gosub 860
2540 goto 2900
2550 rem--player wants to be hit
2560 gosub 300
2570 h1=3
2580 gosub 950
2590 goto 2900
2600 rem--player wants to split
2610 l1=p(i,1): if p(i,1)>10 then l1=10
2612 l2=p(i,2): if p(i,2)>10 then l2=10
2614 if l1=l2 then 2640
2620 print "splitting not allowed."
2630 goto 2370
2640 rem--play out split
2650 i1=i+d1
2660 r(i1)=2
2670 p(i1,1)=p(i,2)
2680 b(i+d1)=b(i)
2690 gosub 100
2700 print "first hand receives a";
2710 gosub 700
2720 p(i,2)=x
2730 gosub 300
2740 print
2750 gosub 100
2760 print "second hand receives a";
2770 i=i1
2780 gosub 700
2790 p(i,2)=x
2800 gosub 300
2810 print
2820 i=i1-d1
2830 if p(i,1)=1 then 2900
2840 rem--now play the two hands
2850 print "hand";1-(i>d1);
2860 gosub 800
2870 i=i+d1
2880 if i=i1 then 2850
2890 i=i1-d1
2900 next i
2910 gosub 300
2920 rem--test for playing dealer's hand
2930 for i=1 to n
2940 if r(i)>0 or r(i+d1)>0 then 3010
2950 next i
2960 print "dealer had a";
2970 x=p(d1,2)
2980 gosub 700
2990 print " concealed."
3000 goto 3140
3010 print "dealer has a";mid$(d$,3*p(d1,2)-2,3);" concealed ";
3020 i=d1
3030 aa=q(i): gosub 3400
3035 print "for a total of";aa
3040 if aa>16 then 3130
3050 print "draws";
3060 gosub 100
3070 gosub 750
3080 gosub 1100
3090 aa=q: gosub 3400
3095 if q>0 and aa<17 then 3060
3100 q(i)=q-(q<0)/2
3110 if q<0 then 3140
3120 aa=q: gosub 3400
3125 print "---total is";aa
3130 print
3140 rem--tally the result
3150 rem 
3160 z$="loses pushes wins "
3165 print
3170 for i=1 to n
3180 aa=q(i): gosub 3400
3182 ab=q(i+d1): gosub 3410
3184 ac=q(d1): gosub 3420
3186 s(i)=s(i)+b(i)*sgn(aa-ac)+b(i+d1)*sgn(ab-ac)
3188 b(i+d1)=0
3200 print "player";i;
3210 print mid$(z$,sgn(s(i))*6+7,6);" ";
3220 if s(i)<>0 then 3250
3230 print "      ";
3240 goto 3260
3250 print abs(s(i));
3260 t(i)=t(i)+s(i)
3270 print "total=";t(i)
3280 gosub 1200
3290 t(d1)=t(d1)-s(i)
3300 i=i+d1
3310 gosub 1200
3320 i=i-d1
3330 next i
3340 print "dealer's total=";t(d1)
3345 print
3350 gosub 1200
3360 goto 1810
3400 aa=aa+11*(aa>=22): return
3410 ab=ab+11*(ab>=22): return
3420 ac=ac+11*(ac>=22): return
