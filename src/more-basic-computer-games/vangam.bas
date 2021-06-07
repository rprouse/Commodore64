5 print tab(26);"vangam"
6 print tab(20);"creative computing"
7 print tab(18);"morristown, new jersey"
8 print:print:print
10 dim q(200)
15 x=(1+sqr(5))/2:y=1+1/x:x=1+x
16 for i=0 to 99
17 q(i*2)=int(i*x):q(i*2+1)=int(i*y)
18 next i:t=0
20 print "van wythoff's game: do you want instructions";
30 input b$:if left$(b$,1)="n" then 130
40 print "you are to create two piles of matches, each containing 100"
50 print "or less.  you play alternately with me, and our moves consist"
60 print "of:"
65 print tab(10);"(a) taking away 1 or more matches";
67 print " from one pile only, or"
70 print tab(10);"(b) taking away the same number from each pile."
80 print "the one who takes away the last match of all wins."
90 print "enter your moves in this manner:"
100 print tab(10);"2l - (2 left) take two from left pile"
110 print tab(10);"3r - (3 right) take three from right pile"
120 print tab(10);"5b - (5 both) take five from each pile"
130 print:print:print
200 input "desired pile sizes (number,number)";s1,s2
210 l=s1:r=s2
220 if l+r>5 then 240
230 print "oh, you're a sport, you are."
240 input "do you want to go first";b$
255 print tab(27);"left  right"
257 print tab(27);l;tab(33);r
260 p=l*2:if l>r then 400
270 p=r*2
400 if left$(b$,1)="n" then 690
405 if l=r then print "you like sitting ducks, don't you?"
410 print:input "your move:  ";b$
415 for x=1 to len(b$)
420 if asc(mid$(b$,x,1))<48 or asc(mid$(b$,x,1))>57 then 425
423 next x
425 s3=val(mid$(b$,1,x-1))
427 if s3=0 then 460
430 if mid$(b$,x,1)="l" then 550
440 if mid$(b$,x,1)="r" then 570
450 if mid$(b$,x,1)="b" then 590
460 t=t+1:if t>2 then 1940
470 print:print "improper entry, stop fooling around.":goto 410
550 if s3>l then 460
555 l=l-s3:goto 610
570 if s3>r then 460
575 r=r-s3:goto 610
590 if s3>l then 460
600 l=l-s3:goto 570
610 print tab(19);"leaving";tab(27);l;tab(33);r
614 print "hm.. ";
615 for i=1 to 500:a=a+i:next i
620 if l+r>0 then 690
630 print:print:print "you win!!":print
635 print "congradulations.  you are a very clever van wythoff's"
637 print "gamesman."
640 goto 1900
690 i=0:m=0
700 if q(i)=l then 760
710 if q(i+1)=l then 780
720 if q(i)=r then 800
730 if q(i+1)=r then 820
740 i=i+2:goto 700
760 l1=i:l2=1:if m=1 then 840
770 m=1:goto 720
780 l1=i:l2=0:if m=1 then 840
790 m=1:goto 720
800 r1=i:r2=1:if m=1 then 840
810 m=1: goto 740
820 r1=i:r2=0:if m=1 then 840
830 m=1: goto 740
840 if l=r then 895
845 if r1=l1 then 1080
850 if l1>r1 then 900
860 p=l1+l2
880 if q(p)>r then 940
890 m=r-q(p):r=q(p):a$="r":goto 1110
895 m=l:l=0:r=0:a$="b":goto 1110
900 p=r1+r2
920 if q(p)>l then 940
930 m=l-q(p):l=q(p):a$="l":goto 1110
940 m=0:a$="b"
950 p=l1:if r1<l1 then p=r1
960 p=p-2:g=0
965 m=m+1:l=l-1:r=r-1
970 for i=p to 0 step -2
990 if q(i)=l then 1040
1000 if q(i+1)=l then 1050
1010 if q(i)=r then 1060
1020 if q(i+1)=r then 1070
1030 next i:goto 965
1040 if q(i+1)=r then 1110
1045 goto 1075
1050 if q(i)=r then 1110
1055 goto 1075
1060 if q(i+1)=l then 1110
1065 goto 1075
1070 if q(i)=l then 1110
1075 if g=1 then 960
1077 g=1:goto 965
1080 if l>r then 1100
1090 r=r-1:m=1:a$="r":goto 1110
1100 l=l-1:m=1:a$="l"
1110 b$="":if m>9 then 1930
1113 b$=chr$(m+48)
1114 b$=b$+a$
1115 print "i take :";tab(14);b$;tab(19);"leaving";tab(27);l;tab(33);r
1120 if l+r>0 then 410
1130 print:print "sorry - i win.  don't feel badly - i'm an expert."
1900 print:input "do you want to play again";b$
1910 if left$(b$,1)="y" then 130
1920 goto 1970
1930 b$=chr$(int(m/10)+48):b$=b$+chr$(m-int(m/10)*10+48)
1935 goto 1114
1940 print:print "look, you just won't stop fooling about.  buzz off."
1945 goto 1970
1970 print:print "o.k.  bye now."
1980 end
