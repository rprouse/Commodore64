1 print tab(33);"combat"
2 print tab(15);"creative computing  morristown, new jersey"
3 print: print: print
4 print "i am at war with you.": print "we have 72000 soldiers apiece."
5 print:print "distribute your forces."
6 print ,"me","  you"
7 print "army",30000,
8 input a
9 print "navy",20000,
10 input b
11 print "a. f.",22000,
12 input c
13 if a+b+c>72000 then 5
14 d=30000
15 e=20000
16 f=22000
17 print "you attack first. type (1) for army; (2) for navy;"
18 print "and (3) for air force."
19 input y
20 print "how many men"
21 input x
22 if x<0 then 20
23 on y goto 100,200,300
100 if x>a then 20
105 if x<a/3 then 120
110 if x<2*a/3 then 150
115 goto 270
120 print "you lost";x;"men from your army."
125 a=int(a-x)
130 goto 500
150 print "you lost";int(x/3);"men, but i lost ";int(2*d/3)
155 a=int(a-x/3)
160 d=0
165 goto 500 
200 if x>b then 20
210 if x<e/3 then 230
215 if x<2*e/3 then 250
220 goto 270
230 print "your attack was stopped!"
232 b=int(b-x)
235 goto 500
250 print "you destroyed";int(2*e/3);"of my army."
255 e=int(e/3)
260 goto 500
270 print "you sunk one of my patrol boats, but i wiped out two"
275 print "of your air force bases and 3 army bases."
280 a=int(a/3)
285 c=int(c/3)
290 e=int(2*e/3)
293 goto 500
300 if x>c then 20
310 if x<c/3 then 350
320 if x<2*c/3 then 370
330 goto 380
350 print "your attack was wiped out."
355 c=int(c-x)
360 goto 500
370 print "we had a dogfight. you won - and finished your mission."
375 d=int(2*d/3)
377 e=int(e/3)
378 f=int(f/3)
379 goto 500
380 print "you wiped out one of my army patrols, but i destroyed"
381 print "two navy bases and bombed three army bases."
385 a=int(a/4)
387 b=int(b/3)
390 d=int(2*d/3)
500 print
501 print,"you","me"
510 print "army",a,d
520 print "navy",b,e
530 print "a. f.",c,f
1000 print "what is your next move?"
1010 print "army=1  navy=2  air force=3"
1020 input g
1030 print "how many men"
1040 input t
1045 if t<0 then 1030
1050 on g goto 1600,1700,1800
1600 if t>a then 1030
1610 if t<d/2 then 1630
1615 print "you destroyed my army!"
1616 d=0
1617 goto 2000
1630 print "i wiped out your attack!"
1635 a=a-t
1640 goto 2000
1700 if t>b then 1030 
1710 if t<e/2 then 1750
1720 goto 1770
1750 print "i sunk two of your battleships, and my air force"
1751 print "wiped out your ungaurded capitol."
1755 a=a/4
1760 b=b/2
1765 goto 2000
1770 print "your navy shot down three of my xiii planes,"
1771 print "and sunk three battleships."
1775 f=2*f/3
1780 e=(e/2)
1790 goto 2000
1800 if t>c then 1030 
1810 if t>f/2 then 1830 
1820 goto 1850
1830 print "my navy and air force in a combined attack left"
1831 print "your country in shambles."
1835 a=a/3
1837 b=b/3
1840 c=c/3
1845 goto 2000
1850 print "one of your planes crashed into my house. i am dead."
1851 print "my country fell apart."
1860 goto 2010
2000 print
2001 print "from the results of both of your attacks,"
2002 if a+b+c>3/2*(d+e+f) then 2010
2005 if a+b+c<2/3*(d+e+f) then 2015
2006 print "the treaty of paris concluded that we take our"
2007 print "respective countries and live in peace."
2008 goto 2020
2010 print "you won, oh! shucks!!!!"
2012 goto 2020
2015 print "you lost-i conquered your country.  it serves you"
2016 print "right for playing this stupid game!!!"
2020 end
