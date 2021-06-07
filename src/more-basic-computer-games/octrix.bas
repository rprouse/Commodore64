1 print tab(27)"octrix"
2 print tab(20)"creative computing"
3 print tab(18)"morristown, new jersey"
5 print
6 print
7 print
10 dim a(32),p(4,9),c$(255),q(4,11),t$(72)
11 dim n$(72),y(72)
40 restore
50 for x=0 to7
60 ready$(x)
70 next x
80 for x=0 to 3
90 read x$(x)
100 next x
110 data"ace","two","three","four","five","six","seven","eight"
120 data"clubs","diamonds","hearts","spades"
130 for x=0 to 9
140 read t$(x)
150 data "a","2","3","4","5","6","7","8","low","high"
160 next x
170 print"teach game(y or n)";
180 input z$
190 if z$<>"y" then 380
200 print"  this  is a game called octrix.  each player is dealt 8"
210 print"cards ranging from ace through eight.  the cards are"
220 print"ranked according to bridge suits with the ace of clubs the"
230 print"lowest and the eight of spades highest.  the object is to"
240 print"win as many of the eight tricks as possible.  each trick "
250 print"played determines the play of the next trick.  if the high "
260 print"and low cards played match color the next trick will be "
270 print"high and if they do not match it will be low.  it is im-"
280 print"portant to set strategy to win consecutive tricks in that "
290 print"scoring is 1 point per trick, 4 for two in a row,9 for 3, up"
300 print"to 64 for all eight."
305 print
310 print"    respond to the input prompt with the card you want to"
320 print"play in a two character format with the value(a-8) as the "
330 print"first character, and suit(c,d,h,s) as the second character."
340 print"    (to see the remaining cards, enter a'p' in"
350 print"    response to the 'what card' query)"
360 print
370 print"that's it, good luck!!"
380 rem
390 for x=1 to 15
400 read z
410 m$=m$+chr$(z)
420 next x
430 data 35,35,35,35,13,72,72,72,72,13,73,73,73,73,13
440 z9=88
450 print"how many points (0 entry gives standard 88)";
460  input z
470 if z=0 then 490
480 z9=z
490 for x=0 to 31
500 a(x)=x
510 next x
520 print"how many players";
530 input n
540 n=int(n)
550 if n>4 then 570
560 if n>0 then 590
570 print"only one to four players allowed, re-enter"
580 goto 520
590 for x=0 to n-1
600 q(x,0)=0
610 print"enter player's name";
620 input n$(x)
630 y=len(n$(x))
640 for z=1 to y
650 t$=mid$(n$(x),1,z-1)
660 if t$=" " then 680
670 next z
680 if z>1 then 710
690 print"don't start name with space,re-";
700 goto 610
710 s$(x)=mid$(n$(x),1,z-1)
720 next x
730 for j=0 to 127
740 c$(j)=" "
750 next j
760 if n=4 then 850
770 if n=1 then 810
780 print"should i play too(y or n)";
790 input z$
800 if z$<>"y" then 850
810 s$(n)="computer"
820 n$(n)="i"
830 q(n,0)=0
840 n=n+1
850 for i=0 to 31
860 x=a(i)
870 y=int(rnd(1)*(32-i)+i)
880 a(i)=a(y)
890 a(y)=x
900 next i
910 for y=0 to 7
920 for x=0 to n-1
930 p(x,y)=a(y*4+x)
940 c$(x*32+p(x,y))="*"
950 next x
960 next y
970 h=1
980 gosub 1680
990 for r=1 to 7
1000 print"trick #";r;"("t$(8+h)" card wins)"
1010 for x=0 to n-1
1020 if s$(x)="computer"then 2090
1030 z=z*z
1040 print"what card, "s$(x)
1050 print m$;
1060 input e$
1070 if e$<>"p" then 1100
1080 gosub 1680
1090 goto 1040
1100 y=len(e$)
1110 if y=2 then 1140
1120 print"bad input,re-enter"
1130 goto 1050
1140 y$=mid$(e$,1,1)
1150 z$=mid$(e$,2,1)
1160 if val(y$)>0 then 1190
1170 if y$<>"a" then 1120
1180 y$="1"
1190 y=val(y$)
1200 if y=0 then 1120
1210 if y>8 then 1120
1220 z=0
1230 q(x,10)=0
1240 if z$="c" then 1320
1250 z=3
1260 if z$="s" then 1320
1270 q(x,10)=1
1280 z=1
1290 if z$="d" then 1320
1300 z=2
1310 if z$<>"h" then 1120
1320 y=(y-1)*4+z
1330 if c$(x*32+y)<>"*" then 1120
1340 q(x,9)=y
1350 next x
1360 gosub 1880
1370 next r
1380 for x=0 to n-1
1390 for z=0 to 31
1400 if c$(32*x+z)="*" then 1430
1410 next z
1420 print"bad scan"
1430 c$(32*x+z)=" "
1440 q(x,9)=z
1450 next x
1460 r=8
1470 gosub 1880
1480 h1=0
1490 print"that hand ";
1500 for x=0 to n-1
1510 q(x,9)=0
1520 y=0
1530 z=0
1540 for r=1 to 8
1550 z=z+q(x,r)
1560 q(x,r)=0
1570 if q(x,r+1)<>0 then 1600
1580 y=y+z*z
1590 z=0
1600 next r
1610 q(x,0)=q(x,0)+y
1620 print n$(x)" scored ";y;"points for a";q(x,0);"total"
1630 if q(h1,0)>q(x,0) then 1650
1640 h1=x
1650 next x
1660 if q(h1,0)>=z9 then 2450
1670 goto 850
1680 for s=0 to n-1
1681 s8=0
1682 s9=23-(len(s$(s))+7)
1684 if int(s9/2)*2<>s9 then s8=1
1686 s9=int(s9/2)
1690 print spc(9+s9);s$(s);"'s hand";spc(s9+s8);
1700 next s
1710 print
1720 for s=0 to n-1
1730 print"         clb    dia    hrt   spd";
1740 next s
1750 print
1760 for s=0 to 7
1770 for y=0 to n-1
1780 z=y*32+s*4
1790 print"!";t$(s);"     !";c$(z);"     !";c$(z+1);"     !";c$(z+2);
1791 print"     !";c$(z+3);" !";
1800 next y
1810 print t$(s)
1820 next s
1830 print
1840 return
1880 l1=0:h1=0
1890 for x=0 to n-1
1900 y=int(q(x,9)/4)
1910 z=q(x,9)-y*4
1920 print n$(x)" played the "y$(y)" of "x$(z)
1930 c$(x*32+q(x,9))=" "
1940 if q(x,9)>q(l1,9) then 1960
1950 l1=x
1960 if q(x,9)<q(h1,9) then 1980
1970 h1=x
1980 next x
1990 if h=1 then 2030
2000 q(l1,r)=1
2010 print n$(l1)" won trick #";r
2020 goto 2050
2030 q(h1,r)=1
2040 print n$(h1)" won trick #";r
2050 h=0
2060 if q(l1,10)<>q(h1,10) then 2080
2070 h=1
2080 return
2090 l1=0:l2=0:h1=0:h2=0
2100 for s=0 to n-2
2110 for s1=0 to 7
2120 if p(s,s1)>p(l1,l2) then 2160
2130 if c$(s*43+p(s,s1))=" " then 2160
2140 l1=s
2150 l2=s1
2160 if p(s,s1)<p(h1,h2) then 2200
2170 if c$(s*32+p(s,s1))=" " then 2200
2180 h1=s
2190 h2=s1
2200 next s1
2210 next s
2220 for s=r-1 to 7
2230 if h=1 then 2280
2240 if p(n-1,s)<p(l1,l2) then 2260
2250 goto 2290
2260 if rnd(1)>.3 then 2380
2270 goto 2300
2280 if p(n-1,s)>p(h1,h2) then 2260
2290 next s
2300 h1=32
2310 y=int(rnd(1)*16+h*16)
2320 for s1=r-1 to 7
2330 l1=abs(p(n-1,s1)-y)
2340 if h1<l1 then 2370
2350 h1=l1
2360 s=s1
2370 next s1
2380 q(x,9)=p(n-1,s)
2390 p(n-1,s)=p(n-1,r-1)
2400 z=q(x,9)-(int(q(x,9)/4)*4)
2410 if z<2 then 2430
2420 z=abs(z-3)
2430 q(x,10)=z
2440 goto 1360
2450 if h1>n-2 then 2510
2460 for x=h1+1 to n-1
2470 if q(h1,0)>q(x,0) then 2500
2480 print"game tied after regulation, entering sudden death"
2490 goto 850
2500 next x
2510 print n$(h1)"won the game, congratulations "s$(h1)
2520 end
