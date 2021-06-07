1000 print tab(33);"salvo"
1010 print tab(15);"creative computing  morristown, new jersey"
1020 print:print:print
1030 rem
1040 dim a(10,10),b(10,10),c(7),d(7),e(12),f(12),g(12),h(12),k(10,10)
1050 z8=0
1060 for w=1 to 12
1070 e(w)=-1
1080 h(w)=-1
1090 next w
1100 for x=1 to 10
1110 for y=1 to 10
1120 b(x,y)=0
1130 next y
1140 next x
1150 for x=1 to 12
1160 f(x)=0
1170 g(x)=0
1180 next x
1190 for x=1 to 10
1200 for y=1 to 10
1210 a(x,y)=0
1220 next y
1230 next x
1240 for k=4 to 1 step -1
1250 u6=0
1260 gosub 2910
1270 def fna(k)=(5-k)*3-2*int(k/4)+sgn(k-1)-1
1280 def fnb(k)=k+int(k/4)-sgn(k-1)
1290 if v+v2+v*v2=0 then 1260
1300 if y+v*fnb(k)>10 then 1260
1310 if y+v*fnb(k)<1 then 1260
1320 if x+v2*fnb(k)>10 then 1260
1330 if x+v2*fnb(k)<1 then 1260
1340 u6=u6+1
1350 if u6>25 then 1190
1360 for z=0 to fnb(k)
1370 f(z+fna(k))=x+v2*z
1380 g(z+fna(k))=y+v*z
1390 next z
1400 u8=fna(k)
1405 if u8>u8+fnb(k) then 1460
1410 for z2= u8 to u8+fnb(k)
1415 if u8<2 then 1450
1420 for z3=1 to u8-1
1430 if sqr((f(z3)-f(z2))^2 + (g(z3)-g(z2))^2) < 3.59 then 1260
1440 next z3
1450 next z2
1460 for z=0 to fnb(k)
1470 a(f(z+u8),g(z+u8))=.5+sgn(k-1)*(k-1.5)
1480 next z
1490 next k
1500 print "enter coordinates for..."
1510 print "battleship"
1520 for x=1 to 5
1530 input y,z
1540 b(y,z)=3
1550 next x
1560 print "cruiser"
1570 for x=1 to 3
1580 input y,z
1590 b(y,z)=2
1600 next x
1610 print "destroyer<a>"
1620 for x=1 to 2
1630 input y,z
1640 b(y,z)=1
1650 next x
1660 print "destroyer<b>"
1670 for x=1 to 2
1680 input y,z
1690 b(y,z)=.5
1700 next x
1710 print "do you want to start";
1720 input j$
1730 if j$<>"where are your ships?" then 1890
1740 print "battleship"
1750 for z=1 to 5
1760 print f(z);g(z)
1770 next z
1780 print "cruiser"
1790 print f(6);g(6)
1800 print f(7);g(7)
1810 print f(8);g(8)
1820 print "destroyer<a>"
1830 print f(9);g(9)
1840 print f(10);g(10)
1850 print "destroyer<b>"
1860 print f(11);g(11)
1870 print f(12);g(12)
1880 goto 1710
1890 c=0
1900 print "do you want to see my shots";
1910 input k$
1920 print
1930 if j$<>"yes" then 2620
1940 rem*******************start
1950 if j$<>"yes" then 1990
1960 c=c+1
1970 print
1980 print "turn";c
1990 a=0
2000 for w=.5 to 3 step .5
2010 for x=1 to 10
2020 for y=1 to 10
2030 if b(x,y)=w then 2070
2040 next y
2050 next x
2060 goto 2080
2070 a=a+int(w+.5)
2080 next w
2090 for w=1 to 7
2100 c(w)=0
2110 d(w)=0
2120 f(w)=0
2130 g(w)=0
2140 next w
2150 p3=0
2160 for x=1 to 10
2170 for y=1 to 10
2180 if a(x,y)>10 then 2200
2190 p3=p3+1
2200 next y
2210 next x
2220 print "you have";a;"shots."
2230 if p3>=a then 2260
2240 print "you have more shots than there are blank squares."
2250 goto 2890
2260 if a<>0 then 2290
2270 print "i have won."
2280 stop
2290 for w=1 to a
2300 input x,y
2310 if x<>int(x) then 2370
2320 if x>10 then 2370
2330 if x<1 then 2370
2340 if y<>int(y) then 2370
2350 if y>10 then 2370
2360 if y>=1 then 2390
2370 print "illegal, enter again."
2380 goto 2300
2390 if a(x,y)>10 then 2440
2400 c(w)=x
2410 d(w)=y
2420 next w
2430 goto 2460
2440 print "you shot there before on turn";a(x,y)-10
2450 goto 2300
2460 for w=1 to a
2470 if a(c(w),d(w))=3 then 2540
2480 if a(c(w),d(w))=2 then 2560
2490 if a(c(w),d(w))=1 then 2580
2500 if a(c(w),d(w))=.5 then 2600
2510 a(c(w),d(w))=10+c
2520 next w
2530 goto 2620
2540 print "you hit my battleship."
2550 goto 2510
2560 print "you hit my cruiser."
2570 goto 2510
2580 print "you hit my destroyer<a>."
2590 goto 2510
2600 print "you hit my destroyer<b>."
2610 goto 2510
2620 a=0
2630 if j$="yes" then 2670
2640 c=c+1
2650 print
2660 print "turn";c
2670 a=0
2680 for w=.5 to 3 step .5
2690 for x=1 to 10
2700 for y=1 to 10
2710 if a(x,y)=w then 2750
2720 next y
2730 next x
2740 goto 2760
2750 a=a+int(w+.5)
2760 next w
2770 p3=0
2780 for x=1 to 10
2790 for y=1 to 10
2800 if a(x,y)>10 then 2820
2810 p3=p3+1
2820 next y
2830 next x
2840 print "i have";a;"shots."
2850 if p3>a then 2880
2860 print "i have more shots than blank squares."
2870 goto 2270
2880 if a<>0 then 2960
2890 print "you have won."
2900 stop
2910 x=int(rnd(1)*10+1)
2920 y=int(rnd(1)*10+1)
2930 v=int(3*rnd(1)-1)
2940 v2=int(3*rnd(1)-1)
2950 return
2960 for w=1 to 12
2970 if h(w)>0 then 3800
2980 next w
2990 rem*******************random
3000 w=0
3010 r3=0
3020 gosub 2910
3030 restore
3040 r2=0
3050 r3=r3+1
3060 if r3>100 then 3010
3070 if x>10 then 3110
3080 if x>0 then 3120
3090 x=1+int(rnd(1)*2.5)
3100 goto 3120
3110 x=10-int(rnd(1)*2.5)
3120 if y>10 then 3160
3130 if y>0 then 3270
3140 y=1+int(rnd(1)*2.5)
3150 goto 3270
3160 y=10-int(rnd(1)*2.5)
3170 goto 3270
3180 f(w)=x
3190 g(w)=y
3200 if w=a then 3380
3210 if r2=6 then 3030
3220 read x1,y1
3230 r2=r2+1
3240 data 1,1,-1,1,1,-3,1,1,0,2,-1,1
3250 x=x+x1
3260 y=y+y1
3270 if x>10 then 3210
3280 if x<1 then 3210
3290 if y>10 then 3210
3300 if y<1 then 3210
3310 if b(x,y)>10 then 3210
3320 for q9=1 to w
3330 if f(q9)<>x then 3350
3340 if g(q9)=y then 3210
3350 next q9
3360 w=w+1
3370 goto 3180
3380 if k$<>"yes" then 3420
3390 for z5=1 to a
3400 print f(z5);g(z5)
3410 next z5
3420 for w=1 to a
3430 if b(f(w),g(w))=3 then 3500
3440 if b(f(w),g(w))=2 then 3520
3450 if b(f(w),g(w))=1 then 3560
3460 if b(f(w),g(w))=.5 then 3540
3470 b(f(w),g(w))=10+c
3480 next w
3490 goto 1950
3500 print "i hit your battleship"
3510 goto 3570
3520 print "i hit your cruiser"
3530 goto 3570
3540 print "i hit your destroyer<b>"
3550 goto 3570
3560 print "i hit your destroyer<a>"
3570 for q=1 to 12
3580 if e(q)<>-1 then 3730
3590 e(q)=10+c
3600 h(q)=b(f(w),g(w))
3610 m3=0
3620 for m2=1 to 12
3630 if h(m2)<>h(q) then 3650
3640 m3=m3+1
3650 next m2
3660 if m3<>int(h(q)+.5)+1+int(int(h(q)+.5)/3) then 3470
3670 for m2=1 to 12
3680 if h(m2)<>h(q) then 3710
3690 e(m2)=-1
3700 h(m2)=-1
3710 next m2
3720 goto 3470
3730 next q
3740 print "program abort:"
3750 for q=1 to 12
3760 print "e(";q;") =";e(q)
3770 print "h(";q;") =";h(q)
3780 next q
3790 stop
3800 rem************************usingearray
3810 for r=1 to 10
3820 for s=1 to 10
3830 k(r,s)=0
3840 next s
3850 next r
3860 for u=1 to 12
3870 if e(u)<10 then 4020
3880 for r=1 to 10
3890 for s=1 to 10
3900 if b(r,s)<10 then 3930
3910 k(r,s)=-10000000
3920 goto 4000
3930 for m=sgn(1-r) to sgn(10-r)
3940 for n=sgn(1-s) to sgn(10-s)
3950 if n+m+n*m=0 then 3980
3960 if b(r+m,s+n)<>e(u) then 3980
3970 k(r,s)=k(r,s)+e(u)-s*int(h(u)+.5)
3980 next n
3990 next m
4000 next s
4010 next r
4020 next u
4030 for r=1 to a
4040 f(r)=r
4050 g(r)=r
4060 next r
4070 for r=1 to 10
4080 for s=1 to 10
4090 q9=1
4100 for m=1 to a
4110 if k(f(m),g(m))>=k(f(q9),g(q9)) then 4130
4120 q9=m
4130 next m
4131 if r>a then 4140
4132 if r=s then 4210
4140 if k(r,s)<k(f(q9),g(q9)) then 4210
4150 for m=1 to a
4160 if f(m)<>r then 4190
4170 if g(m)=s then 4210
4180 next m
4190 f(q9)=r
4200 g(q9)=s
4210 next s
4220 next r
4230 goto 3380
4240 end
