1 print tab(27);"big6"
2 print tab(20);"creative computing"
3 print tab(18);"morristown, new jersey"
4 print:print:print
10 print "  this program is a dice wheel game in which"
20 print "you can bet on any number between one and six"
30 print "and up to three numbers."
40 print "  the house limit is from $1 to $500!!"
50 print "to end this program type the word 'stop'."
60 print "good luck!"
65 print:print
67 dim s(3)
70 goto 90
80 print "you cannot bet on less than one or more than three numbers."
90 print "how many numbers do you want to bet on";
100 input n$:if n$="stop" then 3360
110 n=val(n$)
120 if n=2 then 370
130 if n=3 then 600
140 if n>3 or n<1 then 80
190 print "what number";
200 input v
210 if v<=6 or v>=1 then 260
240 print "you can only bet on an integer fron one to six."
250 goto 190
260 print "wager";
270 input f
280 if f<=500 or f >=1 then 330
310 print "the house limit is from $1 to $500"
320 goto 260
330 gosub 1870
340 s2=v:s3=f:gosub 2060
360 goto 3260
370 print "what two numbers";
380 input v,p
390 if v<=6 or v>=1 or p<=6 or p>=1 then 460
440 print "you can only bet on an integer from one to six."
450 goto 370
460 print "wager on both";
470 input f,i
480 if f<=500 or f>=1 or i<=500 or i>=1 then 550
530 print "the house limit is from $1 to $500."
540 goto 460
550 gosub 1870
560 s2=v:s3=f:gosub 2060
570 s2=p:s3=i:gosub 2060
590 goto 3260
600 print "what three numbers";
610 input v,p,s
620 if v<=6 or v>=1 or p<=6 or p>=1 or s<=6 or s>=1 then 710
690 print "you can only bet on an integer from one to six."
700 goto 600
710 print "wager on each of the three";
720 input f,i,j
730 if f<=500 or f>=1 or i<=500 or i>=1 or j<=500 or j>=1 then 820
800 print "the house limit is from $1 to $500."
810 goto 710
820 gosub 1870
830 s2=v:s3=f:gosub 2060
840 s2=p:s3=i:gosub 2060
850 s2=s:s3=j:gosub 2060
870 goto 3260
1870 x=-1
1880 a=int(6*rnd(1)+1):b=int(6*rnd(1)+1):c=int(6*rnd(1)+1)
1890 s(1)=a:s(2)=b:s(3)=c
1900 for y=1 to 2
1910 for x=1 to 3-y
1920 if s(x)<=s(x+1) then 1940
1930 te=s(x):s(x)=s(x+1):s(x+1)=te
1940 next x:next y
1950 print "the lucky numbers are: "s(1);s(2);s(3)
1960 return
2060 c1=0
2070 if s2=a then c1=c1+1
2080 if s2=b then c1=c1+1
2090 if s2=c then c1=c1+1
2100 if c1>0 then 2130
2110 s3=s3*(-1)
2120 print "you lose on: ";s2:goto 2150
2130 s3=s3*c1
2140 print "you win ";c1;" times on:"s2
2150 w=w+s3
2160 return
3260 if w=0 then print "you're even!!":print:goto 90
3270 if w>0 then print "you're ahead $";w:print:goto 90
3280 if w<0 then print "you're behind $";w:print:goto 90
3350 rem
3360 print:print:print "so you want to cash in your chips, i see!!"
3370 if w>0 then 3410
3380 print "you didn't win any money, but i'm willing to call it even!!"
3390 goto 3440
3410 print "you won exactly $";w;"!! not bad !!!"
3440 end
