10 print tab(26)"obstacle"
20 printtab(20)"creative computing"
30 printtab(18)"morristown, new jersey"
150 rem variables          usage
160 rem -----------------------------------------
170 rem   a1                decimal value for the character'*'
180 rem   a2                decimal value for the character ' '
190 rem   a3                decimal value for the character '!'
200 rem   a4                decimal value for the character 's'
210 rem   a5                decimal value for the character 'f'
220 rem   a6                decimal value for the character '-'
230 rem   d                 direction
240 rem   d1                total no. of turns taken
250 rem   i                 row matrix
260 rem   j                 column matrix index
270 rem   k                 place holder for the variable i
280 rem   l                 place holder for the variable j
290 rem   m                 matrix varible
300 rem   n$                input to yes-no questions
310 rem   r1                random number generator variable
320 rem   s                 speed
330 rem   s1                total speed counter
340 rem   t                 'time' ratio (d1/s1)*1oo
350 rem
360 rem                            start program
370 rem
380 rem
390 rem         instructions
400 rem
410 print
420 print
430 print
440 print
450 print "do you want instructions";:input n$
460 if n$<>"yes" then 610
470 print"the object of this game is to move your car'*'"
480 print" beginning at's' and navigate through the obstacles"
490 print"'!'&'-' walls to the space marked 'f', you must land"
500 print"on the space marked 'f' on the exact amount of spaces"
510 print"there are no diagonal moves."
520 print"there are no right to left moves."
530 print"directions no.1 is up."
540 print "direction no.2 is left to right"
550 print"direction no.3 is down."
560 print
570 print"speed is the no. of spaces in a given direction"
580 rem
590 rem     initialation
600 rem
610 dim m(15,50)
620 a1=asc("*")
630 a2=asc("!")
640 a3=asc(" ")
650 a4=asc("s")
660 a5=asc("f")
670 a6=asc("-")
680 d1=0:s1=0
690 rem   *** note - course set up routine
700 for i=1 to 10
710 for j=1 to 42
720 r1=int(rnd(1)*1.2)
730 if r1=0 then 760
740 m(i,j)=a2
750 goto 770
760 m(i,j)=a3
770 next j
780 next i
790 m(2,2)=a4
800 m(10,40)=a3
810 m(10,41)=a5
820 m(2,3)=a3
830 m(3,2)=a3
840 for i=1 to 10:m(i,1)=a2:m(i,42)=a2:next i
850 for j=1 to 42:m(1,j)=a6:m(11,j)=a6:next j
860 rem
870 rem        ** printing routine **
880 rem
890 k=i:l=j
900 print
910 for i=1 to 11
920 for j=1 to 42
930 print chr$(m(i,j));
940 next j
950 print
960 next i
970 i=k:j=l
980 rem        88 note- new course option**
990 if d1>0 then 1080
1000 print"option :(a=continue,b=new course,c=stop)";
1010 input n$
1020 if n$="a" then 1080
1030 if n$="b" then 670
1040 if n$="c" then 1420
1050 print"invalid option"
1060 goto 1000
1070 rem
1080 rem           ** main program body **
1090 rem
1100 print"direction";:input d:d=int(abs(d))
1110 if d<1 then 1100
1111 if d>3 then 1100
1120 print:print"speed";:input s:s=int(abs(s))
1130 d1=d1+1:s1=s1+s:if d1<>1 then 1160
1140 rem           ** note - car starts at position 2,2
1150 j=2:i=2
1160 if d=1 then 1190
1170 if d=2 then 1230
1180 if d=3 then 1270
1190 m(i,j)=a3:rem      ** wipes out previous character **
1200 for c=1 to s:i=abs(i-1):if m(i,j)=a2 then 1340
1210 if m(i,j)=a6 then 1340
1215 next c
1220 m(i,j)=a1: goto 1310
1230 m(i,j)=a3
1240 for c=1 to s:j=j+1:if m(i,j)=a2then 1340
1250 if m(i,j)=a6 then 1340
1255 next c
1260 m(i,j)=a1: goto 1310
1270 m(i,j)=a3
1280 for c=1 to s: i=i+1:if m(i,j)=a2 then 1340
1290 if m(i,j)=a6 then 1340
1295 next c
1300 m(i,j)=a1
1310 rem      ** note - winning check**
1320 if m(10,41)<>a1 then 870
1330 goto 1360
1340 print"illegal move...... you lose!!":goto 1400
1350 rem
1360 rem        ** end of ren routine **
1370 rem
1380 t=(d1/s1)*100
1390 print "you won!! and your time is ";t
1400 print:print"do you wish to play again";:input n$
1410 if n$="yes" then 670
1420 end
