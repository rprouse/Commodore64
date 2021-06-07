1 print tab(34);"king"
2 print tab(15);"creative computing  morristown, new jersey"
3 print:print:print
4 print "do you want instructions";
5 input z$
6 n5=8
10 if left$(z$,1)="n" then 47
11 if z$="again" then 1960
12 print:print:print
20 print "congratulations! you've just been elected premier of setats"
22 print "detinu, a small communist island 30 by 70 miles long. your"
24 print "job is to decide upon the contry's budget and distribute"
26 print "money to your countrymen from the communal treasury."
28 print "the money system is rallods, and each person needs 100"
30 print "rallods per year to survive. your country's income comes"
32 print "from farm produce and tourists visiting your magnificent"
34 print "forests, hunting, fishing, etc. half your land is farm land"
36 print "which also has an excellent mineral content and may be sold"
38 print "to foreign industry (strip mining) who import and support"
40 print "their own workers. crops cost between 10 and 15 rallods per"
42 print "square mile to plant."
44 print "your goal is to complete your";n5;"year term of office."
46 print "good luck!"
47 print
50 a=int(60000+(1000*rnd(1))-(1000*rnd(1)))
55 b=int(500+(10*rnd(1))-(10*rnd(1)))
65 d=2000
100 w=int(10*rnd(1)+95)
102 print
105 print "you now have ";a;" rallods in the treasury."
110 print int(b);:print "countrymen, ";
115 v9=int(((rnd(1)/2)*10+10))
120 if c=0 then 140
130 print int(c);"foreign workers, ";
140 print "and";int(d);"sq. miles of land."
150 print "this year industry will buy land for";w;
152 print "rallods per square mile."
155 print "land currently costs";v9;"rallods per square mile to plant."
162 print
200 print "how many square miles do you wish to sell to industry";
210 input h
215 if h<0 then 200
220 if h<=d-1000 then 300
230 print "***  think again. you only have";d-1000;"square miles of farm land."
240 if x<>0 then 200
250 print:print "(foreign industry will only buy farm land because"
260 print "forest land is uneconomical to strip mine due to trees,"
270 print "thicker top soil, etc.)"
280 x=1
299 goto 200
300 d=int(d-h)
310 a=int(a+(h*w))
320 print "how many rallods will you distribute among your countrymen";
340 input i
342 if i<0 then 320
350 if i<a then 400
360 if i=a then 380
370 print "   think again. you've only";a;" rallods in the treasury"
375 goto 320
380 j=0
390 k=0
395 a=0
399 goto 1000
400 a=int(a-i)
410 print "how many square miles do you wish to plant";
420 input j
421 if j<0 then 410
422 if j<=b*2 then 426
423 print "   sorry, but each countryman can only plant 2 sq. miles."
424 goto 410
426 if j<=d-1000 then 430
427 print "   sorry, but you've only";d-1000;"sq. miles of farm land."
428 goto 410
430 u1=int(j*v9)
435 if u1<a then 500
440 if u1=a then 490
450 print "   think again. you've only";a;" rallods left in the treasury."
460 goto 410
490 k=0
495 a=0
499 goto 1000
500 a=a-u1
510 print "how many rallods do you wish to spend on pollution control";
520 input k
522 if k<0 then 510
530 if k<=a then 1000
540 print "   think again. you only have ";a;" rallods remaining."
550 goto 510
600 if h<>0 then 1002
602 if i<>0 then 1002
604 if j<>0 then 1002
606 if k<>0 then 1002
609 print
612 print "goodbye."
614 print "(if you wish to continue this game at a later date, answer"
616 print "'again' when asked if you want instructions at the start"
617 print "of the game)."
618 stop
1000 goto 600
1002 print
1003 print
1010 a=int(a-k)
1020 a4=a
1100 if int(i/100-b)>=0 then 1120
1105 if i/100<50 then 1700
1110 print int(b-(i/100));"countrymen died of starvation"
1120 f1=int(rnd(1)*(2000-d))
1122 if k<25 then 1130
1125 f1=int(f1/(k/25))
1130 if f1<=0 then 1150
1140 print f1;"countrymen died of carbon-monoxide and dust inhalation"
1150 if int((i/100)-b)<0 then 1170
1160 if f1>0 then 1180
1165 goto 1200
1170 print "   you were forced to spend";int((f1+(b-(i/100)))*9);
1172 print "rallods on funeral expenses"
1174 b5=int(f1+(b-(i/100)))
1175 a=int(a-((f1+(b-(i/100)))*9))
1176 goto 1185
1180 print "   you were forced to spend ";int(f1*9);"rallods on ";
1181 print "funeral expenses."
1182 b5=f1
1183 a=int(a-(f1*9))
1185 if a>=0 then 1194
1187 print "   insufficient reserves to cover cost - land was sold"
1189 d=int(d+(a/w))
1190 a=0
1194 b=int(b-b5)
1200 if h=0 then 1250
1220 c1=int(h+(rnd(1)*10)-(rnd(1)*20))
1224 if c>0 then 1230
1226 c1=c1+20
1230 print c1;"workers came to the country and";
1250 p1=int(((i/100-b)/10)+(k/25)-((2000-d)/50)-(f1/2))
1255 print abs(p1);"countrymen ";
1260 if p1<0 then 1275
1265 print "came to";
1270 goto 1280
1275 print "left";
1280 print " the island."
1290 b=int(b+p1)
1292 c=int(c+c1)
1305 u2=int(((2000-d)*((rnd(1)+1.5)/2)))
1310 if c=0 then 1324
1320 print "of ";int(j);"sq. miles planted,";
1324 if j>u2 then 1330
1326 u2=j
1330 print " you harvested ";int(j-u2);"sq. miles of crops."
1340 if u2=0 then 1370
1344 if t1>=2 then 1370
1350 print "   (due to ";
1355 if t1=0 then 1365
1360 print "increased ";
1365 print "air and water pollution from foreign industry.)"
1370 q=int((j-u2)*(w/2))
1380 print "making";int(q);"rallods."
1390 a=int(a+q)
1400 v1=int(((b-p1)*22)+(rnd(1)*500))
1405 v2=int((2000-d)*15)
1410 print " you made";abs(int(v1-v2));"rallods from tourist trade."
1420 if v2=0 then 1450
1425 if v1-v2>=v3 then 1450
1430 print "   decrease because ";
1435 g1=10*rnd(1)
1440 if g1<=2 then 1460
1442 if g1<=4 then 1465
1444 if g1<=6 then 1470
1446 if g1<=8 then 1475
1448 if g1<=10 then 1480
1450 v3=int(a+v3)
1451 a=int(a+v3)
1452 goto 1500
1460 print "fish population has dwindled due to water pollution."
1462 goto 1450
1465 print "air pollution is killing game bird population."
1467 goto 1450
1470 print "mineral baths are being ruined by water pollution."
1472 goto 1450
1475 print "unpleasant smog is discouraging sun bathers."
1477 goto 1450
1480 print "hotels are looking shabby due to smog grit."
1482 goto 1450
1500 if b5>200 then 1600
1505 if b<343 then 1700
1510 if (a4/100)>5 then 1800
1515 if c>b then 1550
1520 if n5-1=x5 then 1900
1545 goto 2000
1550 print
1552 print
1560 print "the number of foreign workers has exceeded the number"
1562 print "of countrymen. as a minority, they have revolted and"
1564 print "taken over the country."
1570 if rnd(1)<=.5 then 1580
1574 print "you have been thrown out of office and are now"
1576 print "residing in prison."
1578 goto 1590
1580 print "you have been assassinated."
1590 print
1592 print
1596 stop
1600 print
1602 print
1610 print b5;"countrymen died in one year!!!!!"
1615 print "due to this extreme mismanagement, you have not only"
1620 print "been impeached and thrown out of office, but you"
1622 m6=int(rnd(1)*10)
1625 if m6<=3 then 1670
1630 if m6<=6 then 1680
1635 if m6<=10 then 1690
1670 print "also had your left eye gouged out!"
1672 goto 1590
1680 print "have also gained a very bad reputation."
1682 goto 1590
1690 print "have also been declared national fink."
1692 goto 1590
1700 print
1702 print
1710 print "over one third of the popultation has died since you"
1715 print "were elected to office. the people (remaining)"
1720 print "hate your guts."
1730 goto 1570
1800 if b5-f1<2 then 1515
1807 print
1815 print "money was left over in the treasury which you did"
1820 print "not spend. as a result, some of your countrymen died"
1825 print "of starvation. the public is enraged and you have"
1830 print "been forced to either resign or commit suicide."
1835 print "the choice is yours."
1840 print "if you choose the latter, please turn off your computer"
1845 print "before proceeding."
1850 goto 1590
1900 print
1902 print
1920 print "congratulations!!!!!!!!!!!!!!!!!!"
1925 print "you have succesfully completed your";n5;"year term"
1930 print "of office. you were, of course, extremely lucky, but"
1935 print "nevertheless, it's quite an achievement. goodbye and good"
1940 print "luck - you'll probably need it if you're the type that"
1945 print "plays this game."
1950 goto 1590
1960 print "how many years had you been in office when interrupted";
1961 input x5
1962 if x5<0 then 1590
1963 if x5<8 then 1969
1965 print "   come on, your term in office is only";n5;"years."
1967 goto 1960
1969 print "how much did you have in the treasury";
1970 input a
1971 if a<0 then 1590
1975 print "how many countrymen";    
1976 input b
1977 if b<0 then 1590
1980 print "how many workers";
1981 input c
1982 if c<0 then 1590
1990 print "how many square miles of land";
1991 input d
1992 if d<0 then 1590
1993 if d>2000 then 1996
1994 if d>1000 then 100
1996 print "   come on, you started with 1000 sq. miles of farm land"
1997 print "   and 10,000 sq. miles of forest land."
1998 goto 1990
2000 x5=x5+1
2020 b5=0
2040 goto 100
2046 end
