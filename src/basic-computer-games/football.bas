1 print tab(32);"football"
2 print tab(15);"creative computing  morristown, new jersey"
3 print:print:print
100 rem
120 dim a(20),b(20),c(40),h(2),t(2),w(2),x(2),y(2),z(2)
130 dim m$(2),d(2),p$(20)
140 print "presenting n.f.u. football (no fortran used)"
145 print:print
150 input "do you want instructions";a$
160 if a$="no" then 290
165 if a$<>"yes" then 150
170 print "this is a football game for two teams in which players must"
180 print "prepare a tape with a data statement (1770 for team 1,"
190 print "1780 for team 2) in which each team scrambles nos. 1-20"
195 print "these numbers are then assigned to twenty given plays."
200 print"a list of nos. and their plays is provided with"
210 print "both teams having the same plays. the more similar the"
220 print "plays the less yardage gained.  scores are given"
223 print "whenever scores are made. scores may also be obtained"
225 print "by inputting 99,99 for play nos. to punt or attempt a"
227 print "field goal, input 77,77 for play numbers. questions will be"
230 print "asked then. on 4th down, you will also be asked whether"
240 print "you want to punt or attempt a field goal. if the answer to"
250 print "both questions is no it will be assumed you want to"
260 print "try and gain yardage. answer all questions yes or no."
270 print "the game is played until players terminate (control-c)."
280 print "please prepare a tape and run.": stop
290 print:print "please input score limit on game";:input e
300 for i=1 to 40: read n: if i>20 then 350
330 a(n)=i: goto 360
350 b(n)=i-20
360 c(i)=n: next i
370 for i=1 to 20: read p$(i): next i
380 l=0: t=1
410 print "team";t;"play chart"
420 print "no.      play"
430 for i=1 to 20
440 rem
450 print c(i+l);tab(6);p$(i)
460 next i
630 l=l+20:t=2
640 print
650 print "tear off here----------------------------------------------"
660 for x=1 to 11: print: next x
670 for z=1 to 3000: next z
680 if l=20 then 410
690 d(1)=0: d(2)=3: m$(1)="--->": m$(2)="<---"
700 h(1)=0: h(2)=0: t(1)=2: t(2)=1
710 w(1)=-1: w(2)=1: x(1)=100: x(2)=0
720 y(1)=1: y(2)=-1: z(1)=0: z(2)=100
725 gosub 1910
730 print "team 1 defends 0 yd goal -- team 2 defends 100 yd goal."
740 t=int(2*rnd(1)+1)
760 print: print "the coin is flipped"
765 p=x(t)-y(t)*40
770 gosub 1860: print : print "team";t;"receives kick-off"
780 k=int(26*rnd(1)+40)
790 p=p-y(t)*k
794 if w(t)*p<z(t)+10 then 810
795 print: print "ball went out of endzone --automatic touchback--"
796 goto 870 
810 print "ball went";k;"yards.  now on";p:gosub 1900
830 print "team";t;"do you want to runback";:input a$
840 if a$="yes" then 1430
845 if a$<>"no" then 830
850 if w(t)*p<z(t) then 880
870 p=z(t)-w(t)*20
880 d=1: s=p
885 for i=1 to 72: print "=";: next i
890 print: print "team";t;"down";d;"on";p
893 if d<>1 then 900
895 if y(t)*(p+y(t)*10)>=x(t) then 898
897 c=4: goto 900
898 c=8
900 if c=8 then 904
901 print tab(27);10-(y(t)*p-y(t)*s);"yards to 1st down"
902 goto 910
904 print tab(27);x(t)-y(t)*p;"yards"
910 gosub 1900: if d=4 then 1180
920 rem
930 u=int(3*rnd(0)-1): goto 940
936 print "illegal play number, check and"
940 print "input offensive play, defensive play";
950 if t=2 then 970
960 input p1,p2: goto 975
970 input p2,p1
975 if p1=77 then 1180
980 if p1>20 then 1800
985 if p1<1 then 1800
990 if p2>20 then 1800
992 if p2<1 then 1800
995 p1=int(p1): p2=int(p2)
1000 y=int(abs(a(p1)-b(p2))/19*((x(t)-y(t)*p+25)*rnd(1)-15))
1005 print: if t=2 then 1015
1010 if a(p1)<11 then 1048
1012 goto 1020
1015 if b(p2)<11 then 1048
1020 if u<>0 then 1035
1025 print "pass incomplete team";t
1030 y=0: goto 1050
1035 g=rnd(1): if g>.025 then 1040
1037 if y>2 then 1045
1040 print "quarterback scrambled": goto 1050
1045 print "pass completed": goto 1050
1048 print "the ball was run"
1050 p=p-w(t)*y
1060 print: print "net yards gained on down";d;"are ";y
1070 g=rnd(1): if g>.025 then 1110
1080 print: print "** loss of possession from team";t;"to team";t(t)
1100 gosub 1850: print: t=t(t): goto 830
1110 if y(t)*p>=x(t) then 1320
1120 if w(t)*p>=z(t) then 1230
1130 if y(t)*p-y(t)*s>=10 then 880
1140 d=d+1: if d<>5 then 885
1160 print: print "conversion unsuccessful team";t:t=t(t)
1170 gosub 1850: goto 880
1180 print "does team";t;"want to punt";: input a$
1185 if a$="no" then 1200
1187 if a$<>"yes" then 1180
1190 print:print "team";t;"will punt": g=rnd(1): if g<.025 then 1080
1195 gosub 1850: k=int(25*rnd(1)+35): t=t(t): goto 790
1200 print "does team";t;"want to attempt a field goal";: input a$
1210 if a$="yes" then 1640
1215 if a$<>"no" then 1200
1217 goto 920
1230 print: print "safety against team";t;"**********************oh-oh"
1240 h(t(t))=h(t(t))+2: gosub 1810
1280 print"team";t;"do you want to punt instead of a kickoff";:input a$
1290 p=z(t)-w(t)*20: if a$="yes" then 1190
1320 print: print "touchdown by team";t;"*********************yea team"
1340 q=7: g=rnd(1): if g>.1 then 1380
1360 q=6: print "extra point no good": goto 1390
1380 print "extra point good"
1390 h(t)=h(t)+q: gosub 1810
1420 t=t(t): goto 765
1430 k=int(9*rnd(0)+1)
1440 r=int(((x(t)-y(t)*p+25)*rnd(1)-15)/k)
1460 p=p-w(t)*r
1480 print:print "runback team";t;r;"yards"
1485 g=rnd(1): if g<.025 then 1080
1490 if y(t)*p>=x(t) then 1320
1500 if w(t)*p>=z(t) then 1230
1510 goto 880
1640 print: print "team";t;"will attempt a field goal"
1645 g=rnd(1): if g<.025 then 1080
1650 f=int(35*rnd(1)+20)
1660 print: print "kick is";f;"yards long"
1680 p=p-w(t)*f: g=rnd(1)
1690 if g<.35 then 1735
1700 if y(t)*p<x(t) then 1740
1710 print "field goal good for team";t;"*********************yea"
1720 q=3: goto 1390
1735 print "ball went wide"
1740 print "field goal unsuccesful team";t;"-----------------too bad"
1742 gosub 1850: if y(t)*p<x(t)+10 then 1745
1744 t=t(t): goto 794
1745 print: print "ball now on";p
1750 t=t(t): gosub 1900: goto 830
1770 data 17,8,4,14,19,3,10,1,7,11,15,9,5,20,13,18,16,2,12,6
1780 data 20,2,17,5,8,18,12,11,1,4,19,14,10,7,9,15,6,13,16,3
1790 data "pitchout","triple reverse","draw","qb sneak","end around"
1792 data "double reverse","left sweep","right sweep","off tackle"
1794 data "wishbone option","flare pass","screen pass"
1796 data "roll out option","right curl","left curl","wishbone option"
1798 data "sideline pass","half-back option","razzle-dazzle","bomb!!!!"
1800 if p1<>99 then 936
1810 print: print "team 1 score is";h(1)
1820 print "team 2 score is";h(2): print
1825 if h(t)<e then 1830
1827 print "team";t;"wins*******************": goto 2000
1830 if p1=99 then 940
1835 return
1850 print
1860 for x=1 to 72: print "+";: next x: print
1870 return
1900 print tab(d(t)+5+p/2);m$(t)
1910 print "team 1 [0   10   20   30   40   50   60   70   80   90";
1915 print "   100] team 2"
1920 print
1930 return
2000 end
