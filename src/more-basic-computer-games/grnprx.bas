10 print tab(26);"grnprx"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
40 print:print:print
1020 dim p(9),f(4),g(4),h(82)
1030 rem
1040 for x=1 to 9
1043 read p(x)
1045 next x
1050 for i=1 to 4
1060 read g(i),f(i)
1080 let g(i)=g(i)/2.04545
1090 let f(i)=(f(i)+.61/2.04545)
1100 next i
1110 for x=1 to 82:read h(x):next x
1115 rem
1120 def fna(x)=int(x*2.04545+.05)
1130 def fnt(t)=int(t*10+.5)/10
1133 def fnc(t)=-(int(t*r)+2)*(int(t*r)+2<82)-82*(82<int(t*r)+2)
1134 def fnb(t)=-(int(t*r)+1)*(int(t*r)+1<82)-82*(82<int(t*r)+1)
1135 def fnp(t)=int(h(fnb(t))+fnq(t)*fnr(t)+.5)
1136 def fnq(t)=h(fnc(t))-h(fnb(t))
1137 def fnr(t)=t*r-int(t*r)
1140 rem
1150 let d=2
1200 print
1210 print "welcome to the puc gran prix"
1220 print
1250 rem
1260 print "do you want a course description";
1270 input a$
1280 if left$(a$,1)<>"y" then 1910
1300 print
1320 print tab(23);"2";tab(66);"1"
1330 print tab(21);"cc0xpxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0cc"
1340 print tab(12);"85-100 cc (800)";tab(69);"c"
1350 print tab(18);"c";tab(70);"c"
1360 print tab(15);"3 0";tab(21);"puc gran prix race";tab(70);"c"
1370 print tab(16);"x";tab(69);"c"
1375 print tab(15);"x";tab(67);"cc"
1380 print tab(14);"x";tab(38);"ss";tab(59);"(2800) c 50-"
1390 print tab(13);"x";tab(22);"sssssss    sss  sssoxxxxxxxxxxxxxxxx";
1395 print "xpxxoc   70"
1400 print tab(12);"x       ss       sssssss       7";
1405 print tab(64);"8"
1410 print tab(11);"x (1900)0 6    90-110"
1420 print tab(10);"x       x"
1430 print tab(9);"x       x"
1433 print tab(28);"distances in yards, eg. ";
1435 print "(800) = 800 yds."
1440 print tab(8);"x       x";tab(20);"speeds in mph, ";
1445 print "eg. 85 to 100 mph."
1450 print "       p     x"
1460 print "      x       x"
1470 print "     x       x"
1480 print "   x       x"
1490 print " 4 0(1500) x"
1500 print "  h       x"
1510 print "  h      x"
1520 print "20-h   0 5"
1530 print " 35 h  h"
1535 print "     hh"
1540 print
1550 print
1560 print "1 to 2 is a straightaway 800 yards long"
1570 print "2 to 3 is a curve 200 yards long"
1580 print "     the breakaway speed range is 85 to 100 mph"
1590 print "3 to 4 is a straightaway 500 yards long"
1600 print "     it ends at position 1500 yards from starting";
1605 print " grid"
1610 print "4 to 5 is a hairpin curve 100 yards long"
1620 print "     the breakaway speed range is 20 to 35 mph"
1630 print "5 to 6 is another straightaway 300 yards long"
1640 print "     it ends at position 1900 yards from the grid"
1650 print "6 to 7 is a set of 's' curves 500 yards long"
1660 print "     the speed range is 90-110 mph"
1670 print "7 to 8 is the final straightaway of 400 yards"
1680 print "     it enters the last curve at 2800 yards"
1690 print "8 to 9 is the final curve of 400 yards"
1700 print "     the breakaway speed range is 50 to 70 mph"
1710 print
1720 print "the total length of one lap is 3200 yards"
1730 print
1820 print "during the straightaways you will be able to control the"
1830 print "acceleration and braking of the car.  the curves will be";
1835 print " taken"
1840 print "at whatever speed you enter them."
1842 print "below the breakaway speed, the curves may be taken with ";
1844 print "no difficulty."
1850 print "above the fastest speed indicated, you will crash!!"
1860 print "within the speed range, there is the possibility that you";
1865 print " might"
1870 print "lose time or speed by swinging uide or by spinning out."
1880 print "the faster you take the curves, the greater the risks--"
1890 print "and the less the time!!!!"
1905 print
1906 print
1907 print "your task is to transverse the track in a minimum of time"
1908 print "without crashing!!!"
1909 print
1910 print "your car may be one of the following:"
1911 print "1. porsche"
1912 print "2. ferrari"
1913 print "3. maserati"
1914 print "4. lotus ford"
1915 print "which car would you like";
1916 input z
1917 on z goto 1920,1923,1926,1929
1918 print "we don't have that car in stock, please choose again.";
1919 goto 1916
1920 m=15
1921 let b=-20
1922 goto 1931
1923 m=10
1924 b=-25
1925 goto 1931
1926 m=12
1927 b=-22
1928 goto 1931
1929 m=8
1930 b=-30
1931 print "your car has a maximum acceleration of ";m;"mph/sec."
1932 print "and a maximum braking of ";b;"mph/sec."
1933 print "you will race against one of the following:"
1934 print "1. u.s. postal delivery truck"
1935 print "2. 1970 beat pontiac gto"
1936 print "3. 1966 well used ford mustang"
1937 print "4. lotus ford"
1938 print "5. 1974 ferrara"
1939 print "6. the physics supercharged lightbeam special"
1940 print "choose one opponent by entering number";
1941 input r1
1942 if r1>0 and r1<6 then 1946
1943 if r1=6 then 1948
1944 print "which car did you say";
1945 goto 1941
1946 let r=2*r1-5
1947 goto 1949
1948 let r=2.5e+08
1949 let r=(90+2*r)/100+7*rnd(1)/100
1950 print
3000 rem
3002 rem           begin the race!!
3004 rem
3010 let j=1
3020 print "elapsed time","speed","position","opponent's","acc";
3025 print "eleration"
3030 print "  seconds"," mph"," yards"," position"
3040 print
3070 x=0:s=0:t=0:t9=0:x9=0
3080 rem
3100 if j<9 then 3200
3130 print
3160 print "completed lap";",elapsed time";fnt(t);"sec."
3166 print "your opponent finished in ";80/r;"seconds"
3167 let k1=fnt(t)-80/r
3168 if k1>0 then 3171
3169 print "congratulations, you won by "j-k1;"seconds"
3170 goto 8600
3171 print "sorry, you lost by ";k1;"seconds"
3172 goto 8600
3200 if fnp(t)>3200 then 3203
3201 print "  ";fnt(t),"  ";fna(s),"  ";int(x),"  ";fnp(t),"  ";
3202 goto 3210
3203 print "  ";fnt(t),"  ";fna(s),"  ";int(x),"  finish","  ";
3210 input a1
3220 let a=a1/2.04545
3230 if a1>=0 then 3600
3240 if a1>=b then 3300
3250 print "maximum braking is ";b;"mph/sec"
3260 goto 3200
3300 let t1=-s/a
3310 if t1>d then 3500
3320 let x1=x+s*t1+a/2+t1*t1
3330 if x1>p(j+1) then 3400
3340 print "you stopped";int(p(j+1)-x1);"yards from point";j+1
3350 let s=0
3360 let x=x1
3370 let t=t+t1
3380 goto 3100
3400 let y=p(j+1)-x
3402 if a<>0 then 3410
3404 let t=t+y/s
3406 goto 3440
3410 let s1=sqr(s*s+2*a*y)
3420 let t=t-(s-s1)/a
3430 let s=s1
3440 let j=j+1
3450 goto 8000
3500 let x1=x+s*d+a/2*d*d
3510 if x1>p(j+1) then 3400
3520 let t=t+d
3530 let s=s+a*d
3540 let x=x1
3550 goto 3100
3600 if a1 <= m then 3700
3610 print "maximum acceleration is ";m;"mph/sec"
3620 goto 3200
3700 let x1=x+s*d+a/2*d*d
3710 if x1>p(j+1) then 3400
3720 goto 3500
8000 rem *** sub curve ***
8010 rem
8020 let i=int(j/2)
8030 let t1=(p(j+1)-p(j))/s
8040 let s1=g(i)+(f(i)-g(i))*rnd(1)
8050 if s>s1 then 8100
8055 print "curve";j;-j-i;", speed";fna(s);"mph"
8060 let j=j+1
8070 let x=p(j)
8080 let t=t+t1
8090 goto 3100
8100 if s>s1+(f(i)-s1)/2 then 8200
8110 let t2=t1*rnd(1)*.4
8120 print "speed in curve";fna(s);"mph, took curve wide, lost";
8125 print fnt(t2);"sec."
8130 let t1=t1+t2
8140 goto 8060
8200 if s>f(i) then 8300
8210 let s2=s-s*rnd(1)+.9
8220 let t1=t1*s/s2
8230 print "spun out at";fna(s);"mph, lost speed and time"
8240 let s=s2
8250 goto 8060
8300 print "lost control at";fna(s);"mph.  your car crashed!!"
8305 print "your opponent finished in ";82/r;"seconds!"
8330 rem
8600 print
8605 print "do you wish to try again";
8610 input a$
8620 if left$(a$,1)="y" then 1910
9000 rem
9010 data 0,800,1000,1500,1600,1900,2400,2800,3200
9020 data 85,100
9030 data 20,35
9040 data 90,110
9050 data 50,70
9060 rem
9070 data 0,1,3,9,21,39,62,87,120,156,196,244,293,351,410
9080 data 479,550,625,700,758,800,847,894,942,990,1030,1080
9090 data 1135,1200,1260,1330,1382,1425,1470,1490,1505,1519
9100 data 1539,1548,1563,1578,1512,1610,1632,1658,1683,1718
9110 data 1758,1800,1850,1890,1943,1997,2050,2104,2057,2210
9120 data 2294,2317,2370,2420,2480,2535,2600,2670,2725,2768,2799,2830
9130 data 2861,2892,2920,2951,2982,3013,3044,3075,3106,3137,3168,3199
9140 data 10000
