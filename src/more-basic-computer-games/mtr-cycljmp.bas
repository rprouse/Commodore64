10 print tab(21);"motorcycle jump"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
40 print:print:print
50 dim i2(14),i$(84)
90 i$="r.arm l.arm r.leg l.leg back  neck  skull ribs  knee  butt  "
100 i$=i$+"face  pelvispride bike  "
110 t=.1
130 t2=0
140 t3=0
150 print "we're at the scene of the big motorcycle jump!"
160 input "how many busses will you try to jump";n
170 j=n*15
180 print n;" busses!  that's ";j;" feet!"
190 input "what ramp angle will you use";a2
200 if a2<90 and a2>0 then 230
210 print a2;" degrees? that's impossible.  come on now, "
220 goto 190
230 a=a2*.01745
240 input "how fast will you leave the ramp";s
250 print "      good luck!"
260 if s>0 then 300
270 print "a practice jump!"
280 print "ok, this time ";
290 goto 240
300 h=6
310 d=0
320 g=6
330 r2=0
340 s2=0
350 s=s*1.5
360 print "there he goes!!!!"
380 s=s-s2
390 f=s*t
400 d2=f*cos(a)
410 r=f*sin(a)
420 r2=r2+(32*t)
430 r3=r2*t
440 h=h+r-r3
450 d=d+d2
460 print "*";
480 s2=(s/120)*32*t
490 if d>=j then g=g-r
510 if g<=0 then g=0
520 if h>g then 380
530 if d<j then 600
540 if d>j+20 then 640
550 l=((d-j)/30)+rnd(1)
560 if l>.8 then 650
570 print "he made it !  great jump, killer!"
580 t2=t2+1
590 goto 920
600 print "he's short of the ramp ....."
620 l2=int((((j-d)/5)*2)+(rnd(1)*5)+.5)
630 goto 670
640 print "he jumped too far!"
650 print "he missed the ramp."
660 l2=int(((d+20-j)/20)+(rnd(1)*5))
670 print "i think he's hurt......"
680 for k=1 to 14
690 i2(k)=k
700 next k
710 k2=14
720 if l2>14 then l2=14
730 if l2<=0 then l2=1
760 for k=1 to l2
770 v=int(rnd(1)*1000)
780 v=(v-(int(v/k2)*k2))+1
790 h2=i2(v)
800 i2(v)=i2(k2)
810 i2(k2)=h2
820 k2=k2-1
830 next k
840 print "well, killer, the doctor says you broke your:"
860 for k=(15-l2) to 14
880 p=(6*i2(k))-5
890 a$=mid$(i$,p,6)
900 print a$
910 next k
920 t3=t3+1
930 input "want to jump again";a$
940 if left$(a$,1)="y" then print:print:goto 160
950 print "you made it ";t2;" out of ";t3;" attempts."
960 print "be careful, now."
970 end
