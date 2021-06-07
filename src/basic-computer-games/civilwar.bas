2 print tab(26) "civil war"
4 print tab(15) "creative computing  morristown, new jersey"
6 print : print : print
20 rem original game design: cram, goodie, hibbard lexington h.s.
30 rem modifications: g. paul, r. hess (ties), 1973
50  dim s(4),c$(14),m1(14),m2(14),c1(14),c2(14),m(14)
60  rem union info on likely confederate strategy
70  s(1)=25 : s(2)=25 : s(3)=25 : s(4)=25
82  rem read historical data.
84  for d=1 to 14
86  read c$(d),m1(d),m2(d),c1(d),c2(d),m(d)
88  next d
89  let d=rnd(-1)
90  print
100  print "do you want instructions";
110  input x$
120  if x$="yes" then 160
130  if x$="no" then 370
140  print "yes or no -- ";
150  goto 110
160  print : print : print : print
170  print "this is a civil war simulation."
180  print "to play type a response when the computer asks."
190  print "remember that all factors are interrelated and that your"
200  print "responses could change history. facts and figures used are"
210  print "based on the actual occurrence. most battles tend to result"
220  print "as they did in the civil war, but it all depends on you!!"
230  print
240  print "the object of the game is to win as many battles as ";
245  print "possible."
250  print
260  print "your choices for defensive strategy are:"
270  print "        (1) artillery attack"
280  print "        (2) fortification against frontal attack"
290  print "        (3) fortification against flanking maneuvers"
300  print "        (4) falling back"
310  print " your choices for offensive strategy are:"
320  print "        (1) artillery attack"
330  print "        (2) frontal attack"
340  print "        (3) flanking maneuvers"
350  print "        (4) encirclement"
360  print "you may surrender by typing a '5' for your strategy."
370  print : print : print : print "are there two generals present ";
380  print "(answer yes or no)";
390  input b$
400  if b$="yes" then 430
410  if b$ <> "no" then 380
420  print : print "you are the confederacy.   good luck!"
425  print
430  let d=1
440  if b$ <> "yes" then 460
450  let d=2
460  print "select a battle by typing a number from 1 to 14 on"
470  print "request.  type any other number to end the simulation."
480  print "but '0' brings back exact previous battle situation"
490  print "allowing you to replay it"
500  print
510  print "note: a negative food$ entry causes the program to "
520  print "use the entries from the previous battle"
530  print
540  print "after requesting a battle, do you wish ";
550  print "battle descriptions ";
560  print "(answer yes or no)";
570  input x$
580  if x$="yes" then 600
590  if x$ <> "no" then 560
600  l=0:w=0:r1=0:q1=0:m3=0:m4=0:p1=0:p2=0:t1=0:t2=0
610  f(2)=0:h(2)=0:b(2)=0:r2=0:q2=0:c6=0:f=0:w0=0:y=0:y2=0:u=0:u2=0
620  print : print : print
630  print "which battle do you wish to simulate";
640  input a
650  if a <> 0 then 660
655  if r <> 0 then 1140
660  if a <=0 then 2860
665  if a >= 15 then 2860
670  let c$=c$(a)
680  let m1=m1(a)
690  let m2=m2(a)
700  let c1=c1(a)
710  let c2=c2(a)
720  let m=m(a)
960  let u=0
970  rem  inflation calc
980  let i1=10+(l-w)*2
990  let i2=10+(w-l)*2
1000  rem - money available
1010  let d(1)=100*int((m1*(100-i1)/2000)*(1+(r1-q1)/(r1+1))+.5)
1020  let d(2)=100*int(m2*(100-i2)/2000+.5)
1030  if b$ <> "yes" then 1050
1040  let d(2)=100*int((m2*(100-i2)/2000)*(1+(r2-q2)/(r2+1))+.5)
1050  rem - men   available
1060  let m5=int(m1*(1+(p1-t1)/(m3+1)))
1070  let m6=int(m2*(1+(p2-t2)/(m4+1)))
1080  let f1=5*m1/6
1090  print : print : print : print : print
1100  print "this is the battle of ";c$
1110  if x$="no" then 1150
1120  if a>11 then 1130
1125  on a goto 3580,3620,3650,3690,3720,3750,3780,3800,3830,3860,3890
1130  on a-11 goto 3920,3950,3980
1140  print c$" instant replay"
1150  print
1160  print " ","confederacy"," union"
1170  print "men"," "m5," "m6
1180  print "money","$";d(1),"$";d(2)
1190  print "inflation"," ";i1+15;"%"," ";i2;"%"
1195  print
1200  rem - only in printout is confed inflation = i1+15%
1210  rem - if two generals, input confed. first
1220  for i=1 to d
1230  if b$ <> "yes" then 1260
1240  if i=2 then 1260
1250  print "confederate general---";
1260  print "how much do you wish to spend for"
1270  print " - food......";
1280  input f
1290  if f >= 0 then 1360
1300  if r1 <> 0 then 1330
1310  print "no previous entries"
1320  goto 1270
1330  print "assume you want to keep same allocations"
1340  print
1350  goto 1510
1360  let f(i)=f
1370  print " - salaries..";
1380  input h(i)
1390  let n=1
1400  if h(i)<0 then 1490
1410  print " - ammunition";
1420  input b(i)
1430  let n=2
1440  if b(i)<0 then 1490
1450  print
1460  if f(i)+h(i)+b(i) <= d(i) then 1510
1470  print "think again! you have only $"d(i)
1480  goto 1270
1490  print "negative values not allowed."
1500  on n goto 1370,1410
1510  if b$ <> "yes" then 1550
1520  if i=2 then 1550
1530  print "union general---";
1540  next i
1550  for z=1 to d
1560  if b$ <> "yes" then 1620
1570  on z goto 1580,1600
1580  print "confederate ";
1590  goto 1620
1600  print "      union ";
1610  rem - find morale
1620  let o=((2*f(z)^2+h(z)^2)/f1^2+1)
1630  if o<10 then 1660
1640  print "morale is high"
1650  goto 1700
1660  if o<5 then 1690
1670  print "morale is fair"
1680  goto 1700
1690  print "morale is poor"
1700  if b$ <> "yes" then 1760
1710  let o(z)=o
1720  next z
1730  let o2=o(2)
1740  let o=o(1)
1750  print "confederate general---";
1760  rem - actual off/def battle situation
1770  if m <> 3 then 1800
1780  print "you are on the offensive"
1790  goto 1840
1800  if m <> 1 then 1830
1810  print "you are on the defensive"
1820  goto 1840
1830  print "both sides are on the offensive "
1840  print
1850  rem - choose strategies
1860  if b$ <> "yes" then 1910
1870  for i=1 to 2
1880  on i goto 1890,1920
1890  print "confederate strategy ";
1900  goto 1920
1910  print "your strategy ";
1920  input y
1930  if abs(y-3)<3 then 1960
1940  print "strategy";y;"not allowed."
1950  goto 1910
1960  if b$="yes" then 2000
1970  if y=5 then 2830
1980  gosub 3110
1990  goto 2170
2000  if i=2 then 2040
2010  let y1=y
2020  print "union strategy ";
2030  next i
2040  let y2=y
2050  let y=y1
2060  if y2=5 then 2020
2070  rem : simulated losses-north
2080  let c6=(2*c2/5)*(1+1/(2*(abs(y2-y)+1)))
2090  let c6=c6*(1.28+(5*m2/6)/(b(2)+1))
2100  let c6=int(c6*(1+1/o2)+.5)
2110  rem - if loss > men present, rescale losses
2120  let e2=100/o2
2130  if int(c6+e2)<m6 then 2190
2140  let c6=int(13*m6/20)
2150  let e2=7*c6/13
2160  let u2=1
2170  rem - calculate simulated losses
2180  print
2190  print : print : print ,"confederacy","union"
2200  let c5=(2*c1/5)*(1+1/(2*(abs(y2-y)+1)))
2210  let c5=int(c5*(1+1/o)*(1.28+f1/(b(1)+1))+.5)
2220  let e=100/o
2230  if c5+100/o<m1*(1+(p1-t1)/(m3+1)) then 2270
2240  let c5=int(13*m1/20*(1+(p1-t1)/(m3+1)))
2250  let e=7*c5/13
2260  let u=1
2270  if d=1 then 2500
2280  print "casualties",c5,c6
2290  print "desertions",int(e),int(e2)
2300  print
2310  if b$ <> "yes" then 2350
2320  print "compared to the actual casualties at "c$
2330  print "confederate:"int(100*(c5/c1)+.5)"% of the original"
2340  print "union:      "int(100*(c6/c2)+.5)"% of the original"
2350  print
2360  rem - 1 who won
2370  if u <> 1 then 2380
2375  if u2=1 then 2460
2380  if u=1 then 2420
2390  if u2=1 then 2440
2400  if c5+e=c6+e2 then 2460
2410  if c5+e<c6+e2 then 2440
2420  print "the union wins "c$
2430  goto 2600
2440  print "the confederacy wins "c$
2450  goto 2660
2460  print "battle outcome unresolved"
2470  let w0=w0+1
2480  if a=0 then 2790
2490  goto 2680
2500  let c6=int(17*c2*c1/(c5*20))
2510  let e2=5*o
2520  goto 2280
2530  print "your casualties were "int(100*(c5/c1)+.5)"% of "
2540  print "the actual casualties at ";c$
2550  print
2560  rem - find who won
2570  if u=1 then 2590
2580  if c5+e<17*c2*c1/(c5*20)+5*o then 2630
2590  print "you lose ";c$
2600  if a=0 then 2790
2610  let l=l+1
2620  goto 2680
2630  print "you win ";c$
2640  rem - cumulative battle factors which alter historical
2650  rem  resources available.if a replay don't update.
2660  if a=0 then 2790
2670  let w=w+1
2680  let t1=t1+c5+e
2690  let t2=t2+c6+e2
2700  let p1=p1+c1
2710  let p2=p2+c2
2720  let q1=q1+(f(1)+h(1)+b(1))
2730  let q2=q2+(f(2)+h(2)+b(2))
2740  let r1=r1+m1*(100-i1)/20
2750  let r2=r2+m2*(100-i2)/20
2760  let m3=m3+m1
2770  let m4=m4+m2
2780  gosub 3300
2790  u=0:u2=0
2800  print "---------------"
2810  goto 620
2820  rem------finish off
2830  print "the confederacy has surrendered"
2840  goto 2860
2850  print "the union has surrendered."
2860  print : print : print : print : print : print
2870  print "the confederacy ";
2880  print "has won "w" battles and lost "l
2890  if y=5 then 2940
2900  if y2=5 then 2920
2910  if w <= l then 2940
2915  if y=5 then 2940
2920  print "the confederacy has won the war"
2930  goto 2950
2940  print "the union has won the war"
2950  print
2960  if r1=0 then 3100
2970  print "for the "w+l+w0" battles fought (excluding reruns)"
2980  print " "," "," ";
2990  print "confederacy"," union"
3000  print "historical losses",int(p1+.5),int(p2+.5)
3010  print "simulated losses",int(t1+.5),int(t2+.5)
3020  print
3030  print "    % of original",int(100*(t1/p1)+.5),int(100*(t2/p2)+.5)
3040  if b$="yes" then 3100
3050  print
3060  print "union intelligence suggests that the south used "
3070  print "strategies 1, 2, 3, 4 in the following percentages"
3080  print s(1);s(2);s(3);s(4)
3090  rem---------------------------------
3100  stop
3110  rem - union strategy is computer chosen
3120  print "union strategy is ";
3130  if a <> 0 then 3180
3140  input y2
3150  if y2 <=0 then 3160
3155  if y2<5 then 3290
3160  print "enter 1 , 2 ,3 , or 4 (usually previous union strategy)"
3170  goto 3140
3180  let s0=0
3190  let r=100*rnd(0)
3200  for i=1 to 4
3210  let s0=s0+s(i)
3220  rem - if actual strategy info is in program data statements
3230  rem   then r-100 is extra weight given to that stategy.
3240  if r<s0 then 3270
3250  next i
3260  rem - if actual strat. in,then here is y2= hist. strat.
3270  let y2=i
3280  print y2
3290  return
3300  rem learn  present strategy, start forgetting old ones
3310  rem - present strategy of south gains 3*s, others lose s
3320  rem   probability points, unless a strategy falls below 5%.
3330  let s=3
3340  let s0=0
3350  for i=1 to 4
3360  if s(i) <= 5 then 3390
3370  let s(i)=s(i)-s
3380  let s0=s0+s
3390  next i
3400  let s(y)=s(y)+s0
3410  return
3420  rem - historical data...can add more (strat.,etc) by inserting
3430  rem   data statements after appro. info, and adjusting read
3440  data "bull run",18000,18500,1967,2708,1
3450  data "shiloh",40000.,44894.,10699,13047,3
3460  data "seven days",95000.,115000.,20614,15849,3
3470  data "second bull run",54000.,63000.,10000,14000,2
3480  data "antietam",40000.,50000.,10000,12000,3
3490  data "fredericksburg",75000.,120000.,5377,12653,1
3500  data "murfreesboro",38000.,45000.,11000,12000,1
3510  data "chancellorsville",32000,90000.,13000,17197,2
3520  data "vicksburg",50000.,70000.,12000,19000,1
3530  data "gettysburg",72500.,85000.,20000,23000,3
3540  data "chickamauga",66000.,60000.,18000,16000,2
3550  data "chattanooga",37000.,60000.,36700.,5800,2
3560  data "spotsylvania",62000.,110000.,17723,18000,2
3570  data "atlanta",65000.,100000.,8500,3700,1
3580  print "july 21, 1861.  gen. beauregard, commanding the south, met"
3590  print "union forces with gen. mcdowell in a premature battle at"
3600  print "bull run. gen. jackson helped push back the union attack."
3610  goto 1150
3620  print "april 6-7, 1862.  the confederate surprise attack at"
3630  print "shiloh failed due to poor organization."
3640  goto 1150
3650  print "june 25-july 1, 1862.  general lee (csa) upheld the"
3660  print "offensive throughout the battle and forced gen. mcclellan"
3670  print "and the union forces away from richmond."
3680  goto 1150
3690  print "aug 29-30, 1862.  the combined confederate forces under";
3695  print " lee"
3700  print "and jackson drove the union forces back into washington."
3710  goto 1150
3720  print "sept 17, 1862.  the south failed to incorporate maryland"
3730  print "into the confederacy."
3740  goto 1150
3750  print "dec 13, 1862.  the confederacy under lee successfully"
3760  print "repulsed an attack by the union under gen. burnside."
3770  goto 1150
3780  print "dec 31, 1862.  the south under gen. bragg won a close ";
3785  print "battle."
3790  goto 1150
3800  print "may 1-6, 1863.  the south had a costly victory and lost"
3810  print "one of their outstanding generals, 'stonewall' jackson."
3820  goto 1150
3830  print "july 4, 1863.  vicksburg was a costly defeat for the south"
3840  print "because it gave the union access to the mississippi."
3850  goto 1150
3860  print "july 1-3, 1863.  a southern mistake by gen. lee at ";
3865  print "gettysburg"
3870  print "cost them one of the most crucial battles of the war."
3880  goto 1150
3890  print "sept. 15, 1863. confusion in a forest near chickamauga led"
3900  print "to a costly southern victory."
3910  goto 1150
3920  print "nov. 25, 1863. after the south had sieged gen. rosencrans'"
3930  print "army for three months, gen. grant broke the siege."
3940  goto 1150
3950  print "may 5, 1864.  grant's plan to keep lee isolated began to"
3960  print "fail here, and continued at cold harbor and petersburg."
3970  goto 1150
3980  print "august, 1864.  sherman and three veteran armies converged"
3990  print "on atlanta and dealt the death blow to the confederacy."
4000  goto 1150
4010  end
