10 print tab(21);"life expectancy"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
40 print:print:print
270 print :print:print
280 print "this is a life expectancy test."
290 print "   do you wish instructions";
300 input i$
310 if left$(i$,1)="n" then 470
320 print:print
340 print "   this is a test to predict your life expectancy.  i"
350 print "will ask you a series of short questions, which you will"
360 print "reply by typing in the corresponding answer to the"
370 print "question."
380 print
390 print "        example:  what is your sex?"
400 print "               m=male"
410 print "               f=female"
420 print "'m' and 'f' are the possible replies to the question, answer"
430 print "like this:"
440 print "              choose one of the letters above? m"
450 print "typing an 'm' signifies you are a male."
460 print:print:print
470 r5=1
480 z=72
490 a$="abcdemghijklfno"
500 goto 1700
510 r5=r5+1
520 if r5>21 then 1900
530 data "+++sex+++"
540 data "are you male or female?"
550 data "m= male."
560 data " f= female."
570 data 2,"mf"
580 data "+++life style+++"
590   data "where do you live?"
600 data "g= if you live in an urban area with a population over 2 mil."
610 data "k= if you live in a town under 10,000, or on a farm."
620 data " i= neither."
630 data 3,"gki"
640 data "how do you work?"
650 data "m= if you work behind a desk."
660 data "l= if your work requires heavy physical labor."
670 data " i= none of the above."
680 data 3,"mli"
690 data "how long do you exercise strenuously,"
700 data "(tennis, running, swimming, etc.)?"
710 data "f= five times a week for ar least a half hour."
720 data "k= just two or three times a week."
730 data " i= do not exercise in this fashion."
740 data 3,"fki"
750 data "who do you live with?"
760 data "n= if you live with a spouse, friend, or in a family."
770 data "h= if you've lived alone for 1-10 years since age 25."
780 data "g= for 11-20 years."
790 data "m= for 21-30 years."
800 data "e= for 31-40 years."
810 data " d= more than 40 years."
820 data 6,"nhgmed"
830 data "+++psyche+++"
840 data "do you sleep more than 10 hours a night?"
850 data "i= no."
860 data " e=yes."
870 data 2,"ie"
880 data "+++mental state+++"
890 data "m= if you are intense, aggressive, or easily angered."
900 data "l= if you are easy going, relaxed, or a follower."
910 data " i= neither."
920 data 3,"mli"
930 data "+++how you feel+++"
940 data "are you happy or unhappy?"
950 data "j= happy."
960 data "g= unhappy."
970 data " i= neither."
980 data 3,"jgi"
990 data "+++factors+++"
1000 data "have you had a speeding ticket in the last year?"
1010 data "h= yes."
1020 data " i=no."
1030 data 2,"hi"
1040 data "+++income+++"
1050 data "do you earn more than $50,000 a year?"
1060 data "g= yes."
1070 data " i=no."
1080 data 2,"gi"
1090 data "+++schooling+++"
1100 data "j= if you have finished college."
1110 data "l= if you have finished college with a graduate"
1120 data "or professional degree."
1130 data " i= nothing listed."
1140 data 3,"jli"
1150 data "+++age+++"
1160 data "are you 65 or older and still working?"
1170 data "l= yes."
1180 data " i= no."
1190 data 2,"li"
1200 data "+++heredity+++"
1210 data "k= if any grandparents lived to 85 years old."
1220 data "o= if all four grandparents lived to 80 years old."
1230 data " i= no grandparents qualify in the above."
1240 data 3,"koi"
1250 data "has any parent died of a stroke or heart attack"
1260 data "before the age of 50?"
1270 data "e= yes."
1280 data " i= no."
1290 data 2,"ei"
1300 data "+++family diseases+++"
1310 data "any parent, brother, or sister under 50 has (or had) "
1320 data "cancer, a heart condition, or diabetes since childhood?"
1330 data "m= yes."
1340 data " i= no."
1350 data 2,"mi"
1360 data "+++health+++"
1365 data "how much do you smoke?"
1370 data "a= if you smoke more than two packs a day."
1380 data "c= one to two packs a day."
1390 data "m= one half to one pack a day."
1400 data " i= don't smoke."
1410 data 4,"acmi"
1420 data "+++drink+++"
1430 data "do you drink the equivalent of a "
1440 data "quarter bottle of alcoholic beverage a day?"
1450 data "h= yes."
1460 data " i= no."
1470 data 2,"hi"
1480 data "+++weight+++"
1490 data "a= if you are overweight by 50 pounds or more."
1500 data "e= over by 30-50 pounds."
1510 data "g= over by 10-30 pounds."
1520 data " i= not over weight."
1530 data 4,"aegi"
1540 data "+++checkups+++"
1550 data "do you?  if you are a male over 40 have an annual checkup?"
1560 data "k= yes."
1570 data " i= if no or not a male or under 40 years old."
1580 data 2,"ki"
1590 data "do you? if you are a woman see a gynecologist once a year?"
1600 data "k= yes."
1610 data " i= if no or not a woman."
1620 data 2,"ki"
1630 data "+++current age+++"
1640 data "k= if you are between 30 and 40 years old."
1650 data "l= between 40 and 50."
1660 data "f= between 50 and 70."
1670 data "n= over 70."
1680 data " i= under 30."
1690 data 5,"klfni"
1700 for q=1 to 7
1710 read q$
1720 if left$(q$,1)=" " then 1750
1730 print "  ";q$
1740 next q
1750 print " ";q$
1760 read c,c$
1770 print "choose one of the letters above";
1780 input g$
1790 for c2=1 to c
1800 if left$(g$,1)= mid$(c$,c2,1) then 1830
1810 next c2
1820 goto 1770
1830 print
1840 for n=1 to 15
1850 if left$(g$,1)=mid$(a$,n,1) then 1870
1860 next n
1870 m=n-9
1880 z=z+m
1890 goto 510
1900 print  "you are expected to live to the age of";z;"years"
1910 if z<60 then 1980
1920 for y=60 to z step 5
1930 read m$,f$
1940 next y
1950 data "26%","15%","36%","20%","48%","30%","61%","39%"
1960 data "75%","53%","87%","70%","96%","88%","99.9%","99.6%"
1970 print "out living ";m$;" of the men and ";f$;" of the women."
1980 end
