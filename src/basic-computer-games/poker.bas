2 print tab(33);"poker"
4 print tab(15);"creative computing  morristown, new jersey"
6 print: print: print
10 dim a(50),b(15)
20 def fna(x)=int(10*rnd(1))
30 def fnb(x)=x-100*int(x/100)
40 print "welcome to the casino.  we each have $200."
50 print "i will open the betting before the draw; you open after."
60 print "to fold bet 0; to check bet .5."
70 print "enough talk -- let's get down to business."
80 print
90 let o=1
100 let c=200
110 let s=200
120 let p=0
130 rem
140 print
150 if c<=5 then 3670
160 print "the ante is $5.  i will deal:"
170 print
180 if s>5 then 200
190 gosub 3830
200 let p=p+10
210 let s=s-5
220 let c=c-5
230 for z=1 to 10
240 gosub 1740
250 next z
260 print "your hand:"
270 n=1
280 gosub 1850
290 n=6
300 i=2
310 gosub 2170
320 print
330 if i<>6 then 470
340 if fna(0)<=7 then 370
350 let x=11100
360 goto 420
370 if fna(0)<=7 then 400
380 let x=11110
390 goto 420
400 if fna(0)>=1 then 450
410 x=11111
420 i=7
430 z=23
440 goto 580
450 z=1
460 goto 510
470 if u>=13 then 540
480 if fna(0)>=2 then 500
490 goto 420
500 z=0
510 k=0
520 print "i check."
530 goto 620
540 if u<=16 then 570
550 z=2
560 if fna(0)>=1 then 580
570 z=35
580 v=z+fna(0)
590 gosub 3480
600 print "i'll open with $"v
610 k=v
620 gosub 3050
630 gosub 650
640 goto 820
650 if i<>3 then 760
660 print
670 print "i win."
680 c=c+p
690 print "now i have $"c"and you have $"s
700 print "do you wish to continue";
710 input h$
720 if h$="yes" then 120
730 if h$="no" then 4100
740 print "answer yes or no, please."
750 goto 700
760 if i<>4 then 810
770 print
780 print "you win."
790 s=s+p
800 goto 690
810 return
820 print
830 print "now we draw -- how many cards do you want";
840 input t
850 if t=0 then 980
860 z=10
870 if t<4 then 900
880 print "you can't draw more than three cards."
890 goto 840
900 print "what are their numbers:"
910 for q=1 to t
920 input u
930 gosub 1730
940 next q
950 print "your new hand:"
960 n=1
970 gosub 1850
980 z=10+t
990 for u=6 to 10
1000 if int(x/10^(u-6))<>10*int(x/10^(u-5)) then 1020
1010 gosub 1730
1020 next u
1030 print
1040 print "i am taking"z-10-t"card";
1050 if z=11+t then 1090
1060 print "s"
1070 print
1080 goto 1100
1090 print
1100 n=6
1110 v=i
1120 i=1
1130 gosub 2170
1140 b=u
1150 m=d
1160 if v<>7 then 1190
1170 z=28
1180 goto 1330
1190 if i<>6 then 1220
1200 z=1
1210 goto 1330
1220 if u>=13 then 1270
1230 z=2
1240 if fna(0)<>6 then 1260
1250 z=19
1260 goto 1330
1270 if u>=16 then 1320
1280 z=19
1290 if fna(0)<>8 then 1310
1300 z=11
1310 goto 1330
1320 z=2
1330 k=0
1340 gosub 3050
1350 if t<>.5 then 1450
1360 if v=7 then 1400
1370 if i<>6 then 1400
1380 print "i'll check"
1390 goto 1460
1400 v=z+fna(0)
1410 gosub 3480
1420 print "i'll bet $"v
1430 k=v
1440 gosub 3060
1450 gosub 650
1460 print
1470 print "now we compare hands:"
1480 j$=h$
1490 k$=i$
1500 print "my hand:"
1510 n=6
1520 gosub 1850
1530 n=1
1540 gosub 2170
1550 print
1560 print "you have ";
1570 k=d
1580 gosub 3690
1590 h$=j$
1600 i$=k$
1610 k=m
1620 print "and i have ";
1630 gosub 3690
1640 if b>u then 670
1650 if u>b then 780
1660 if h$="a flus" then 1700
1662 if fnb(m)<fnb(d) then 780
1664 if fnb(m)>fnb(d) then 670
1670 print "the hand is drawn."
1680 print "all $"p"remains in the pot."
1690 goto 140
1700 if fnb(m)>fnb(d) then 670
1710 if fnb(d)>fnb(m) then 780
1720 goto 1670
1730 z=z+1
1740 a(z)=100*int(4*rnd(1))+int(100*rnd(1))
1750 if int(a(z)/100)>3 then 1740
1760 if a(z)-100*int(a(z)/100)>12 then 1740
1765 if z=1 then 1840
1770 for k=1 to z-1
1780 if a(z)=a(k) then 1740
1790 next k
1800 if z<=10 then 1840
1810 n=a(u)
1820 a(u)=a(z)
1830 a(z)=n
1840 return
1850 for z=n to n+4
1860 print z"--  ";
1870 gosub 1950
1880 print " of";
1890 gosub 2070
1900 if z/2<>int(z/2) then 1920
1910 print
1920 next z
1930 print
1940 return
1950 k=fnb(a(z))
1960 if k<>9 then 1980
1970 print "jack";
1980 if k<>10 then 2000
1990 print "queen";
2000 if k<>11 then 2020
2010 print "king";
2020 if k<>12 then 2040
2030 print "ace";
2040 if k>=9 then 2060
2050 print k+2;
2060 return
2070 k=int(a(z)/100)
2080 if k<>0 then 2100
2090 print " clubs",
2100 if k<>1 then 2120
2110 print " diamonds",
2120 if k<>2 then 2140
2130 print " hearts",
2140 if k<>3 then 2160
2150 print " spades",
2160 return
2170 u=0
2180 for z=n to n+4
2190 b(z)=fnb(a(z))
2200 if z=n+4 then 2230
2210 if int(a(z)/100)<>int(a(z+1)/100) then 2230
2220 u=u+1
2230 next z
2240 if u<>4 then 2310
2250 x=11111
2260 d=a(n)
2270 h$="a flus"
2280 i$="h in"
2290 u=15
2300 return
2310 for z=n to n+3
2320 for k=z+1 to n+4
2330 if b(z)<=b(k) then 2390
2340 x=a(z)
2350 a(z)=a(k)
2360 b(z)=b(k)
2370 a(k)=x
2380 b(k)=a(k)-100*int(a(k)/100)
2390 next k
2400 next z
2410 x=0
2420 for z=n to n+3
2430 if b(z)<>b(z+1) then 2470
2440 x=x+11*10^(z-n)
2450 d=a(z)
2460 gosub 2760
2470 next z
2480 if x<>0 then 2620
2490 if b(n)+3<>b(n+3) then 2520
2500 x=1111
2510 u=10
2520 if b(n+1)+3<>b(n+4) then 2620
2530 if u<>10 then 2600
2540 u=14
2550 h$="straig"
2560 i$="ht"
2570 x=11111
2580 d=a(n+4)
2590 return
2600 u=10
2610 x=11110
2620 if u>=10 then 2690
2630 d=a(n+4)
2640 h$="schmal"
2650 i$="tz, "
2660 u=9
2670 x=11000
2680 goto 2740
2690 if u<>10 then 2720
2700 if i=1 then 2740
2710 goto 2750
2720 if u>12 then 2750
2730 if fnb(d)>6 then 2750
2740 i=6
2750 return
2760 if u>=11 then 2810
2770 u=11
2780 h$="a pair"
2790 i$=" of "
2800 return
2810 if u<>11 then 2910
2820 if b(z)<>b(z-1) then 2870
2830 h$="three"
2840 i$=" "
2850 u=13
2860 return
2870 h$="two p"
2880 i$="air, "
2890 u=12
2900 return
2910 if u>12 then 2960
2920 u=16
2930 h$="full h"
2940 i$="ouse, "
2950 return
2960 if b(z)<>b(z-1) then 3010
2970 u=17
2980 h$="four"
2990 i$=" "
3000 return
3010 u=16
3020 h$="full h"
3030 i$="ouse, "
3040 return
3050 g=0
3060 print:print "what is your bet";
3070 input t
3080 if t-int(t)=0 then 3140
3090 if k<>0 then 3120
3100 if g<>0 then 3120
3110 if t=.5 then 3410
3120 print "no small change, please."
3130 goto 3060
3140 if s-g-t>=0 then 3170
3150 gosub 3830
3160 goto 3060
3170 if t<>0 then 3200
3180 i=3
3190 goto 3380
3200 if g+t>=k then 3230
3210 print "if you can't see my bet, then fold."
3220 goto 3060
3230 g=g+t
3240 if g=k then 3380
3250 if z<>1 then 3420
3260 if g>5 then 3300
3270 if z>=2 then 3350
3280 v=5
3290 goto 3420
3300 if z=1 then 3320
3310 if t<=25 then 3350
3320 i=4
3330 print "i fold."
3340 return
3350 if z=2 then 3430
3360 print "i'll see you."
3370 k=g
3380 s=s-g
3390 c=c-k
3400 p=p+g+k
3410 return
3420 if g>3*z then 3350
3430 v=g-k+fna(0)
3440 gosub 3480
3450 print "i'll see you, and raise you"v
3460 k=g+v
3470 goto 3060
3480 if c-g-v>=0 then 3660
3490 if g<>0 then 3520
3500 v=c
3510 return
3520 if c-g>=0 then 3360
3530 if (o/2)<>int(o/2) then 3600
3540 print "would you like to buy back your watch for $50";
3550 input j$
3560 if left$(j$,1)="n" then 3600
3570 c=c+50
3580 o=o/2
3590 return
3600 if o/3<>int(o/3) then 3670
3610 print "would you like to buy back your tie tack for $50";
3620 input j$
3630 if left$(j$,1)="n" then 3670
3640 c=c+50
3650 o=o/3
3660 return
3670 print "i'm busted.  congratulations!"
3680 stop
3690 print h$;i$;
3700 if h$<>"a flus" then 3750
3710 k=int(k/100)
3720 gosub 2080
3730 print
3740 return
3750 k=fnb(k)
3760 gosub 1960
3770 if h$="schmal" then 3790
3780 if h$<>"straig" then 3810
3790 print " high"
3800 return
3810 print "'s"
3820 return
3830 print
3840 print "you can't bet with what you haven't got."
3850 if o/2=int(o/2) then 3970
3860 print "would you like to sell your watch";
3870 input j$
3880 if left$(j$,1)="n" then 3970
3890 if fna(0)>=7 then 3930
3900 print "i'll give you $75 for it."
3910 s=s+75
3920 goto 3950
3930 print "that's a pretty crummy watch - i'll give you $25."
3940 s=s+25
3950 o=o*2
3960 return
3970 if o/3<>int(o/3) then 4090
3980 print "will you part with that diamond tie tack":
3990 input j$
4000 if left$(j$,1)="n" then 4080
4010 if fna(0)>=6 then 4050
4020 print "you are now $100 richer."
4030 s=s+100
4040 goto 4070
4050 print "it's paste.  $25."
4060 s=s+25
4070 o=o*3
4080 return
4090 print "your wad is shot.  so long, sucker!"
4100 end
