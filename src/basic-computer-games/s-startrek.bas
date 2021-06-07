10 rem super startrek - may 16,1978 - requires 24k memory
30 rem
40 rem ****        **** star trek ****        ****
50 rem **** simulation of a mission of the starship enterprise,
60 rem **** as seen on the star trek tv show.
70 rem **** origional program by mike mayfield, modified version
80 rem **** published in dec's "101 basic games", by dave ahl.
90 rem **** modifications to the latter (plus debugging) by bob
100 rem *** leedom - april & december 1974,
110 rem *** with a little help from his friends . . .
120 rem *** comments, epithets, and suggestions solicited --
130 rem *** send to:  r. c. leedom
140 rem ***           westinghouse defense & electronics systems cntr.
150 rem ***           box 746, m.s. 338
160 rem ***           baltimore, md  21203
170 rem ***
180 rem *** converted to microsoft 8 k basic 3/16/78 by john gorders
190 rem *** line numbers from version strek7 of 1/12/75 preserved as
200 rem *** much as possible while using multiple statements per line
205 rem *** some lines are longer than 72 characters; this was done
210 rem *** by using "?" instead of "print" when entering lines
215 rem ***
220 print:print:print:print:print:print:print:print:print:print:print
221 print"                                    ,------*------,"
222 print"                    ,-------------   '---  ------'"
223 print"                     '-------- --'      / /"
224 print"                         ,---' '-------/ /--,"
225 print"                          '----------------'":print
226 print"                    the uss enterprise --- ncc-1701"
227 print:print:print:print:print
260 rem clear 600
270 z$="                         "
330 dim g(8,8),c(9,2),k(3,3),n(3),z(8,8),d(8)
370 t=int(rnd(1)*20+20)*100:t0=t:t9=25+int(rnd(1)*10):d0=0:e=3000:e0=e
440 p=10:p0=p:s9=200:s=0:b9=2:k9=0:x$="":x0$=" is "
470 def fnd(d)=sqr((k(i,1)-s1)^2+(k(i,2)-s2)^2)
475 def fnr(r)=int(rnd(r)*7.98+1.01)
480 rem initialize enterprize's position
490 q1=fnr(1):q2=fnr(1):s1=fnr(1):s2=fnr(1)
530 fori=1to9:c(i,1)=0:c(i,2)=0:nexti
540 c(3,1)=-1:c(2,1)=-1:c(4,1)=-1:c(4,2)=-1:c(5,2)=-1:c(6,2)=-1
600 c(1,2)=1:c(2,2)=1:c(6,1)=1:c(7,1)=1:c(8,1)=1:c(8,2)=1:c(9,2)=1
670 fori=1to8:d(i)=0:nexti
710 a1$="navsrslrsphatorshedamcomxxx"
810 rem setup what exhists in galaxy . . .
815 rem k3= # klingons  b3= # starbases  s3 = # stars
820 fori=1to8:forj=1to8:k3=0:z(i,j)=0:r1=rnd(1)
850 ifr1>.98thenk3=3:k9=k9+3:goto980
860 ifr1>.95thenk3=2:k9=k9+2:goto980
870 ifr1>.80thenk3=1:k9=k9+1
980 b3=0:ifrnd(1)>.96thenb3=1:b9=b9+1
1040 g(i,j)=k3*100+b3*10+fnr(1):nextj:nexti:ifk9>t9thent9=k9+1
1100 ifb9<>0then1200
1150 ifg(q1,q2)<200theng(q1,q2)=g(q1,q2)+120:k9=k9+1
1160 b9=1:g(q1,q2)=g(q1,q2)+10:q1=fnr(1):q2=fnr(1)
1200 k7=k9:ifb9<>1thenx$="s":x0$=" are "
1230 print"your orders are as follows:"
1240 print"     destroy the";k9;"klingon warships which have invaded"
1252 print"   the galaxy before they can attack federation headquarters"
1260 print"   on stardate";t0+t9;"  this gives you";t9;"days.  there";x0$
1272 print"  ";b9;"starbase";x$;" in the galaxy for resupplying your ship"
1280 print:rem print"hit any key except return when ready to accept command"
1300 i=rnd(1):rem if inp(1)=13 then 1300
1310 rem here any time new quadrant entered
1320 z4=q1:z5=q2:k3=0:b3=0:s3=0:g5=0:d4=.5*rnd(1):z(q1,q2)=g(q1,q2)
1390 ifq1<1orq1>8orq2<1orq2>8then1600
1430 gosub 9030:print:if t0<>t then 1490
1460 print"your mission begins with your starship located"
1470 print"in the galactic quadrant, '";g2$;"'.":goto 1500
1490 print"now entering ";g2$;" quadrant . . ."
1500 print:k3=int(g(q1,q2)*.01):b3=int(g(q1,q2)*.1)-10*k3
1540 s3=g(q1,q2)-100*k3-10*b3:ifk3=0then1590
1560 print"combat area      condition red":ifs>200then1590
1580 print"   shields dangerously low"
1590 fori=1to3:k(i,1)=0:k(i,2)=0:nexti
1600 fori=1to3:k(i,3)=0:nexti:q$=z$+z$+z$+z$+z$+z$+z$+left$(z$,17)
1660 rem position enterprise in quadrant, then place "k3" klingons, &
1670 rem "b3" starbases, & "s3" stars elsewhere.
1680 a$="<*>":z1=s1:z2=s2:gosub8670:ifk3<1then1820
1720 fori=1tok3:gosub8590:a$="+k+":z1=r1:z2=r2
1780 gosub8670:k(i,1)=r1:k(i,2)=r2:k(i,3)=s9*(0.5+rnd(1)):nexti
1820 ifb3<1then1910
1880 gosub8590:a$=">!<":z1=r1:b4=r1:z2=r2:b5=r2:gosub8670
1910 fori=1tos3:gosub8590:a$=" * ":z1=r1:z2=r2:gosub8670:nexti
1980 gosub6430
1990 ifs+e>10thenife>10ord(7)=0then2060
2020 print:print"** fatal error **   you've just stranded your ship in "
2030 print"space":print"you have insufficient maneuvering energy,";
2040 print" and shield control":print"is presently incapable of cross";
2050 print"-circuiting to engine room!!":goto6220
2060 input"command";a$
2080 fori=1to9:ifleft$(a$,3)<>mid$(a1$,3*i-2,3)then2160
2140 onigoto2300,1980,4000,4260,4700,5530,5690,7290,6270
2160 nexti:print"enter one of the following:"
2180 print"  nav  (to set course)"
2190 print"  srs  (for short range sensor scan)"
2200 print"  lrs  (for long range sensor scan)"
2210 print"  pha  (to fire phasers)"
2220 print"  tor  (to fire photon torpedoes)"
2230 print"  she  (to raise or lower shields)"
2240 print"  dam  (for damage control reports)"
2250 print"  com  (to call on library-computer)"
2260 print"  xxx  (to resign your command)":print:goto 1990
2290 rem course control begins here
2300 input"course (0-9)";c1:ifc1=9thenc1=1
2310 ifc1>=1andc1<9then2350
2330 print"   lt. sulu reports, 'incorrect course data, sir!'":goto1990
2350 x$="8":ifd(1)<0thenx$="0.2"
2360 print"warp factor (0-";x$;")";:inputw1:ifd(1)<0andw1>.2then2470
2380 ifw1>0andw1<=8then2490
2390 ifw1=0then1990
2420 print"   chief engineer scott reports 'the engines won't take";
2430 print" warp ";w1;"!'":goto1990
2470 print"warp engines are damaged.  maxium speed = warp 0.2":goto1990
2490 n=int(w1*8+.5):ife-n>=0then2590
2500 print"engineering reports   'insufficient energy available"
2510 print"                       for maneuvering at warp";w1;"!'"
2530 ifs<n-eord(7)<0then1990
2550 print"deflector control room acknowledges";s;"units of energy"
2560 print"                         presently deployed to shields."
2570 goto1990
2580 rem klingons move/fire on moving starship . . .
2590 fori=1tok3:ifk(i,3)=0then2700
2610 a$="   ":z1=k(i,1):z2=k(i,2):gosub8670:gosub8590
2660 k(i,1)=z1:k(i,2)=z2:a$="+k+":gosub8670
2700 nexti:gosub6000:d1=0:d6=w1:ifw1>=1thend6=1
2770 fori=1to8:ifd(i)>=0then2880
2790 d(i)=d(i)+d6:ifd(i)>-.1andd(i)<0thend(i)=-.1:goto2880
2800 ifd(i)<0then2880
2810 ifd1<>1thend1=1:print"damage control report:  ";
2840 printtab(8);:r1=i:gosub8790:printg2$;" repair completed."
2880 nexti:ifrnd(1)>.2then3070
2910 r1=fnr(1):ifrnd(1)>=.6then3000
2930 d(r1)=d(r1)-(rnd(1)*5+1):print"damage control report:  ";
2960 gosub8790:printg2$;" damaged":print:goto3070
3000 d(r1)=d(r1)+rnd(1)*3+1:print"damage control report:  ";
3030 gosub8790:printg2$;" state of repair improved":print
3060 rem begin moving starship
3070 a$="   ":z1=int(s1):z2=int(s2):gosub8670
3110 x1=c(c1,1)+(c(c1+1,1)-c(c1,1))*(c1-int(c1)):x=s1:y=s2
3140 x2=c(c1,2)+(c(c1+1,2)-c(c1,2))*(c1-int(c1)):q4=q1:q5=q2
3170 fori=1ton:s1=s1+x1:s2=s2+x2:ifs1<1ors1>=9ors2<1ors2>=9then3500
3240 s8=int(s1)*24+int(s2)*3-26:ifmid$(q$,s8,2)="  "then3360
3320 s1=int(s1-x1):s2=int(s2-x2):print"warp engines shut down at ";
3350 print"sector";s1;",";s2;"due to bad navagation":goto3370
3360 nexti:s1=int(s1):s2=int(s2)
3370 a$="<*>":z1=int(s1):z2=int(s2):gosub8670:gosub3910:t8=1
3430 ifw1<1thent8=.1*int(10*w1)
3450 t=t+t8:ift>t0+t9then6220
3470 rem see if docked, then get command
3480 goto1980
3490 rem exceeded quadrant limits
3500 x=8*q1+x+n*x1:y=8*q2+y+n*x2:q1=int(x/8):q2=int(y/8):s1=int(x-q1*8)
3550 s2=int(y-q2*8):ifs1=0thenq1=q1-1:s1=8
3590 ifs2=0thenq2=q2-1:s2=8
3620 x5=0:ifq1<1thenx5=1:q1=1:s1=1
3670 ifq1>8thenx5=1:q1=8:s1=8
3710 ifq2<1thenx5=1:q2=1:s2=1
3750 ifq2>8thenx5=1:q2=8:s2=8
3790 ifx5=0then3860
3800 print"lt. uhura reports message from starfleet command:"
3810 print"  'permission to attempt crossing of galactic perimeter"
3820 print"  is hereby *denied*.  shut down your engines.'"
3830 print"chief engineer scott reports  'warp engines shut down"
3840 print"  at sector";s1;",";s2;"of quadrant";q1;",";q2;".'"
3850 ift>t0+t9then6220
3860 if8*q1+q2=8*q4+q5then3370
3870 t=t+1:gosub3910:goto1320
3900 rem maneuver energy s/r **
3910 e=e-n-10:ife>=0thenreturn
3930 print"shield control supplies energy to complete the maneuver."
3940 s=s+e:e=0:ifs<=0thens=0
3980 return
3990 rem long range sensor scan code
4000 ifd(3)<0thenprint"long range sensors are inoperable":goto1990
4030 print"long range scan for quadrant";q1;",";q2
4040 o1$="-------------------":printo1$
4060 fori=q1-1toq1+1:n(1)=-1:n(2)=-2:n(3)=-3:forj=q2-1toq2+1
4120 ifi>0andi<9andj>0andj<9thenn(j-q2+2)=g(i,j):z(i,j)=g(i,j)
4180 nextj:forl=1to3:print": ";:ifn(l)<0thenprint"*** ";:goto4230
4210 printright$(str$(n(l)+1000),3);" ";
4230 nextl:print":":printo1$:nexti:goto1990
4250 rem phaser control code begins here
4260 ifd(4)<0thenprint"phasers inoperative":goto1990
4265 ifk3>0then4330
4270 print"science officer spock reports  'sensors show no enemy ships"
4280 print"                                in this quadrant'":goto1990
4330 ifd(8)<0thenprint"computer failure hampers accuracy"
4350 print"phasers locked on target;  ";
4360 print"energy available =";e;"units"
4370 input"number of units to fire";x:ifx<=0then1990
4400 ife-x<0then4360
4410 e=e-x:ifd(7)<0thenx=x*rnd(1)
4450 h1=int(x/k3):fori=1to3:ifk(i,3)<=0then4670
4480 h=int((h1/fnd(0))*(rnd(1)+2)):ifh>.15*k(i,3)then4530
4500 print"sensors show no damage to enemy at ";k(i,1);",";k(i,2):goto4670
4530 k(i,3)=k(i,3)-h:printh;"unit hit on klingon at sector";k(i,1);",";
4550 printk(i,2):ifk(i,3)<=0thenprint"*** klingon destroyed ***":goto4580
4560 print"   (sensors show";k(i,3);"units remaining)":goto4670
4580 k3=k3-1:k9=k9-1:z1=k(i,1):z2=k(i,2):a$="   ":gosub8670
4650 k(i,3)=0:g(q1,q2)=g(q1,q2)-100:z(q1,q2)=g(q1,q2):ifk9<=0then6370
4670 nexti:gosub6000:goto1990
4690 rem photon torpedo code begins here
4700 ifp<=0thenprint"all photon torpedoes expended":goto 1990
4730 ifd(5)<0thenprint"photon tubes are not operational":goto1990
4760 input"photon torpedo course (1-9)";c1:ifc1=9thenc1=1
4780 ifc1>=1andc1<9then4850
4790 print"ensign chekov reports,  'incorrect course data, sir!'"
4800 goto1990
4850 x1=c(c1,1)+(c(c1+1,1)-c(c1,1))*(c1-int(c1)):e=e-2:p=p-1
4860 x2=c(c1,2)+(c(c1+1,2)-c(c1,2))*(c1-int(c1)):x=s1:y=s2
4910 print"torpedo track:"
4920 x=x+x1:y=y+x2:x3=int(x+.5):y3=int(y+.5)
4960 ifx3<1orx3>8ory3<1ory3>8then5490
5000 print"               ";x3;",";y3:a$="   ":z1=x:z2=y:gosub8830
5050 ifz3<>0then4920
5060 a$="+k+":z1=x:z2=y:gosub8830:ifz3=0then5210
5110 print"*** klingon destroyed ***":k3=k3-1:k9=k9-1:ifk9<=0then6370
5150 fori=1to3:ifx3=k(i,1)andy3=k(i,2)then5190
5180 nexti:i=3
5190 k(i,3)=0:goto5430
5210 a$=" * ":z1=x:z2=y:gosub8830:ifz3=0then5280
5260 print"star at";x3;",";y3;"absorbed torpedo energy.":gosub6000:goto1990
5280 a$=">!<":z1=x:z2=y:gosub8830:ifz3=0then4760
5330 print"*** starbase destroyed ***":b3=b3-1:b9=b9-1
5360 ifb9>0ork9>t-t0-t9then5400
5370 print"that does it, captain!!  you are hereby relieved of command"
5380 print"and sentenced to 99 stardates at hard labor on cygnus 12!!"
5390 goto 6270
5400 print"starfleet command reviewing your record to consider"
5410 print"court martial!":d0=0
5430 z1=x:z2=y:a$="   ":gosub8670
5470 g(q1,q2)=k3*100+b3*10+s3:z(q1,q2)=g(q1,q2):gosub6000:goto1990
5490 print"torpedo missed":gosub6000:goto1990
5520 rem shield control
5530 ifd(7)<0thenprint"shield control inoperable":goto1990
5560 print"energy available =";e+s;:input"number of units to shields";x
5580 ifx<0ors=xthenprint"<shields unchanged>":goto1990
5590 ifx<=e+sthen5630
5600 print"shield control reports  'this is not the federation treasury.'"
5610 print"<shields unchanged>":goto1990
5630 e=e+s-x:s=x:print"deflector control room report:"
5660 print"  'shields now at";int(s);"units per your command.'":goto1990
5680 rem damage control
5690 ifd(6)>=0then5910
5700 print"damage control report not available":ifd0=0then1990
5720 d3=0:fori=1to8:ifd(i)<0thend3=d3+.1
5760 nexti:ifd3=0then1990
5780 print:d3=d3+d4:ifd3>=1thend3=.9
5810 print"technicians standing by to effect repairs to your ship;"
5820 print"estimated time to repair:";.01*int(100*d3);"stardates"
5840 input "will you authorize the repair order (y/n)";a$
5860 ifa$<>"y"then 1990
5870 fori=1to8:ifd(i)<0thend(i)=0
5890 nexti:t=t+d3+.1
5910 print:print"device             state of repair":forr1=1to8
5920 gosub8790:printg2$;left$(z$,25-len(g2$));int(d(r1)*100)*.01
5950 nextr1:print:ifd0<>0then5720
5980 goto 1990
5990 rem klingons shooting
6000 ifk3<=0thenreturn
6010 ifd0<>0thenprint"starbase shields protect the enterprise":return
6040 fori=1to3:ifk(i,3)<=0then6200
6060 h=int((k(i,3)/fnd(1))*(2+rnd(1))):s=s-h:k(i,3)=k(i,3)/(3+rnd(0))
6080 printh;"unit hit on enterprise from sector";k(i,1);",";k(i,2)
6090 ifs<=0then6240
6100 print"      <shields down to";s;"units>":ifh<20then6200
6120 ifrnd(1)>.6orh/s<=.02then6200
6140 r1=fnr(1):d(r1)=d(r1)-h/s-.5*rnd(1):gosub8790
6170 print"damage control reports ";g2$;" damaged by the hit'"
6200 nexti:return
6210 rem end of game
6220 print"it is stardate";t:goto 6270
6240 print:print"the enterprise has been destroyed.  then federation ";
6250 print"will be conquered":goto 6220
6270 print"there were";k9;"klingon battle cruisers left at"
6280 print"the end of your mission."
6290 print:print:ifb9=0then6360
6310 print"the federation is in need of a new starship commander"
6320 print"for a similar mission -- if there is a volunteer,"
6330 input"let him step forward and enter 'aye'";a$:ifa$="aye"then10
6360 end
6370 print"congrulation, captain!  then last klingon battle cruiser"
6380 print"menacing the fderation has been destroyed.":print
6400 print"your efficiency rating is";1000*(k7/(t-t0))^2:goto6290
6420 rem short range sensor scan & startup subroutine
6430 fori=s1-1tos1+1:forj=s2-1tos2+1
6450 ifint(i+.5)<1orint(i+.5)>8orint(j+.5)<1orint(j+.5)>8then6540
6490 a$=">!<":z1=i:z2=j:gosub8830:ifz3=1then6580
6540 nextj:nexti:d0=0:goto6650
6580 d0=1:c$="docked":e=e0:p=p0
6620 print"shields dropped for docking purposes":s=0:goto6720
6650 ifk3>0thenc$="*red*":goto6720
6660 c$="green":ife<e0*.1thenc$="yellow"
6720 ifd(2)>=0then6770
6730 print:print"*** short range sensors are out ***":print:return
6770 o1$="---------------------------------":printo1$:fori=1to8
6820 forj=(i-1)*24+1to(i-1)*24+22step3:print" ";mid$(q$,j,3);:nextj
6830 onigoto6850,6900,6960,7020,7070,7120,7180,7240
6850 print"        stardate          ";int(t*10)*.1:goto7260
6900 print"        condition          ";c$:goto7260
6960 print"        quadrant          ";q1;",";q2:goto7260
7020 print"        sector            ";s1;",";s2:goto7260
7070 print"        photon torpedoes  ";int(p):goto7260
7120 print"        total energy      ";int(e+s):goto7260
7180 print"        shields           ";int(s):goto7260
7240 print"        klingons remaining";int(k9)
7260 nexti:printo1$:return
7280 rem library computer code
7290 ifd(8)<0thenprint"computer disabled":goto1990
7320 input"computer active and awaiting command";a:ifa<0then1990
7350 print:h8=1:ona+1goto7540,7900,8070,8500,8150,7400
7360 print"functions available from library-computer:"
7370 print"   0 = cumulative galactic record"
7372 print"   1 = status report"
7374 print"   2 = photon torpedo data"
7376 print"   3 = starbase nav data"
7378 print"   4 = direction/distance calculator"
7380 print"   5 = galaxy 'region name' map":print:goto7320
7390 rem setup to change cum gal record to galaxy map
7400 h8=0:g5=1:print"                        the galaxy":goto7550
7530 rem cum galactic record
7540 rem input"do you want a hardcopy? is the tty on (y/n)";a$
7542 rem ifa$="y"thenpoke1229,2:poke1237,3:null1
7543 print:print"        ";
7544 print"computer record of galaxy for quadrant";q1;",";q2
7546 print
7550 print"       1     2     3     4     5     6     7     8"
7560 o1$="     ----- ----- ----- ----- ----- ----- ----- -----"
7570 printo1$:fori=1to8:printi;:ifh8=0then7740
7630 forj=1to8:print"   ";:ifz(i,j)=0thenprint"***";:goto7720
7700 printright$(str$(z(i,j)+1000),3);
7720 nextj:goto7850
7740 z4=i:z5=1:gosub9030:j0=int(15-.5*len(g2$)):printtab(j0);g2$;
7800 z5=5:gosub 9030:j0=int(39-.5*len(g2$)):printtab(j0);g2$;
7850 print:printo1$:nexti:print:goto1990
7890 rem status report
7900 print "   status report:":x$="":ifk9>1thenx$="s"
7940 print"klingon";x$;" left: ";k9
7960 print"mission must be completed in";.1*int((t0+t9-t)*10);"stardates"
7970 x$="s":ifb9<2thenx$="":ifb9<1then8010
7980 print"the federation is maintaining";b9;"starbase";x$;" in the galaxy"
7990 goto5690
8010 print"your stupidity has left you on your on in"
8020 print"  the galaxy -- you have no starbases left!":goto5690
8060 rem torpedo, base nav, d/d calculator
8070 ifk3<=0then4270
8080 x$="":ifk3>1thenx$="s"
8090 print"from enterprise to klingon battle cruser";x$
8100 h8=0:fori=1to3:ifk(i,3)<=0then8480
8110 w1=k(i,1):x=k(i,2)
8120 c1=s1:a=s2:goto8220
8150 print"direction/distance calculator:"
8160 print"you are at quadrant ";q1;",";q2;" sector ";s1;",";s2
8170 print"please enter":input"  initial coordinates (x,y)";c1,a
8200 input"  final coordinates (x,y)";w1,x
8220 x=x-a:a=c1-w1:ifx<0then8350
8250 ifa<0then8410
8260 ifx>0then8280
8270 ifa=0thenc1=5:goto8290
8280 c1=1
8290 ifabs(a)<=abs(x)then8330
8310 print"direction =";c1+(((abs(a)-abs(x))+abs(a))/abs(a)):goto8460
8330 print"direction =";c1+(abs(a)/abs(x)):goto8460
8350 ifa>0thenc1=3:goto8420
8360 ifx<>0thenc1=5:goto8290
8410 c1=7
8420 ifabs(a)>=abs(x)then8450
8430 print"direction =";c1+(((abs(x)-abs(a))+abs(x))/abs(x)):goto8460
8450 print"direction =";c1+(abs(x)/abs(a))
8460 print"distance =";sqr(x^2+a^2):ifh8=1then1990
8480 nexti:goto1990
8500 ifb3<>0thenprint"from enterprise to starbase:":w1=b4:x=b5:goto8120
8510 print"mr. spock reports,  'sensors show no starbases in this";
8520 print" quadrant.'":goto1990
8580 rem find empty place in quadrant (for things)
8590 r1=fnr(1):r2=fnr(1):a$="   ":z1=r1:z2=r2:gosub8830:ifz3=0then8590
8600 return
8660 rem insert in string array for quadrant
8670 s8=int(z2-.5)*3+int(z1-.5)*24+1
8675 if len(a$)<>3then print"error":stop
8680 ifs8=1thenq$=a$+right$(q$,189):return
8690 ifs8=190thenq$=left$(q$,189)+a$:return
8700 q$=left$(q$,s8-1)+a$+right$(q$,190-s8):return
8780 rem prints device name
8790 onr1goto8792,8794,8796,8798,8800,8802,8804,8806
8792 g2$="warp engines":return
8794 g2$="short range sensors":return
8796 g2$="long range sensors":return
8798 g2$="phaser control":return
8800 g2$="photon tubes":return
8802 g2$="damage control":return
8804 g2$="shield control":return
8806 g2$="library-computer":return
8820 rem string comparison in quadrant array
8830 z1=int(z1+.5):z2=int(z2+.5):s8=(z2-1)*3+(z1-1)*24+1:z3=0
8890 ifmid$(q$,s8,3)<>a$thenreturn
8900 z3=1:return
9010 rem quadrant name in g2$ from z4,z5 (=q1,q2)
9020 rem call with g5=1 to get region name only
9030 ifz5<=4thenonz4goto9040,9050,9060,9070,9080,9090,9100,9110
9035 goto9120
9040 g2$="antares":goto9210
9050 g2$="rigel":goto9210
9060 g2$="procyon":goto9210
9070 g2$="vega":goto9210
9080 g2$="canopus":goto9210
9090 g2$="altair":goto9210
9100 g2$="sagittarius":goto9210
9110 g2$="pollux":goto9210
9120 onz4goto9130,9140,9150,9160,9170,9180,9190,9200
9130 g2$="sirius":goto9210
9140 g2$="deneb":goto9210
9150 g2$="capella":goto9210
9160 g2$="betelgeuse":goto9210
9170 g2$="aldebaran":goto9210
9180 g2$="regulus":goto9210
9190 g2$="arcturus":goto9210
9200 g2$="spica"
9210 ifg5<>1thenonz5goto9230,9240,9250,9260,9230,9240,9250,9260
9220 return
9230 g2$=g2$+" i":return
9240 g2$=g2$+" ii":return
9250 g2$=g2$+" iii":return
9260 g2$=g2$+" iv":return
