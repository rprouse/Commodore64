1 print tab(28)"safe"
2 print tab(20)"creative confuting"
3 print tab(18)"morristown, new jersey"
4 print
5 print
6 print
10 dim a1(4)
20 print"do you want directions";
30 input a$
40 if a$="yes" then 80
50 if a$="no" then 250
60 print"answer yes or no"
70 goto 20
80 print
90 print
100 print"you are a burgular and have encountered a safe.  you  must"
110 print"open the safe to get the secret plans that you came for."
120 print"to do this , you must enter the number of what you want the"
130 print" dial turned to, the computer will act as the safe and will"
140 print"help you by giving a sort of clue, that is you will'hear'"
150 print"a click at evenly spaced notches as you move to the proper"
160 print"number.  there are four of them before the final click is"
170 print"'heard'. after the final one is heard, you will go on to"
180 print"the next number. the computer will'say' 'click' for each"
190 print"notch that you pass and '**click**' when you reach the"
200 print"proper number.  if you pass it or take longer than ten tries"
210 print "on any one number, you will activate the alarm."
220 print"remember that when you turn the dial to the left, the"
230 print"numbers go from 1 -99 ,and when you go to the right, the"
240 print"numbers go from 99-1"
250 print"okay, start to the right,  shhhhhh!!!!!!!!!!!!!!"
260 a=int(rnd(1)*81)+10
270 b=int(rnd(1)*81)+10
280 c=int(rnd(1)*81)+10
290 print"are you ready";
300 input a$
310 if a$="yes" then 340
320 if a$<>"what"then 990
330 printa;b;c
340 l=100-a
350 for m=1 to 4
360 a1(m)=(5-m)*l/5+a
370 next m
380 j=1
390 print"okay, then let's start"
400 input m
410 on sgn(m-a)+2 goto 500,570,420
420 for k=1 to 4
430 if m>a1(k) then 460
440 print"click"
460 next k
470 if j>=10 then 500
480 j=j+1
490 goto 400
500 print"the sensor has been tri6gered"
510 print"leave while you can before the"
520 print"police get here."
530 print"want to try the same safe";
540 input a$
550 if a$="yes" then 280
560 goto 250
570 print"** click **"
580 l=l+b
590 for k=1 to 4
600 a1(k)=k*l/5+b
610 next k
620 print"and now to the left"
630 j=1
640 input m
650 on sgn(m-a)+2 goto 660,500,680
660 on sgn(m-b)+2 goto 670,760,500
670 m=m+100
680 for k=1 to 4
690 if m<a1(k) then 720
700 print"click"
710 a1(k)=200
720 next k
730 if j>=10 then 500
740 j=j+1
750 goto 640
760 print"** click **"
770 l=(100-c)+b
780 for k=1 to 4
790 a1(k)=b+100-k*l/5
800 next k
810 print"and now to the right again"
820 j=1
830 input m
840 on sgn(m-b)+2 goto 860,500,850
850 onsgn(m-c)+2 goto 500,950,870
860 m=m+100
870 for k=1 to 4
880 if m>a1(k) then 910
890 print"click"
900 a1(k)=-200
910 next k
920 if j>=10 then 500
930 j=j+1
940 goto 830
950 print"** click **...you opened it"
960 print"but oh,oh, he must have moved it"
970 print"try the one over there"
980 goto 250
990 end
