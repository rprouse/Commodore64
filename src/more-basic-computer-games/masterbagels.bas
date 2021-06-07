5 print tab(23);"masterbagels"
6 print tab(20);"creative computing"
7 print tab(18);"morristown, new jersey"
10 dim f(9),m(9),t(9),h(18,3)
20 input "teach";s$
30 if left$(s$,1)="n" then 130
50 print "  hi, this is a logic game designed to test your deductive"
60 print "ability.  i will choose a random number and you isolate it."
70 print "when prompted, enter a valid number, and i will then respond"
80 print "with the # of digits that are right and in the right position"
90 print "and the # right but in the wrong position.  if i think you"
100 print "are hopelessly lost, i will tell you the answer and we"
110 print "will go on to the next number.  to recap your entries"
120 print "enter a 0, to quit on a number enter 1, and to stop enter 2"
130 s=0
140 print
150 print "how many #'s(1-100), # digits(2-6), and max value(2-9)";
160 input j,a,b
180 if a<=0 then 220
190 if a>6 then 220
200 if b<2 then 220
210 if b<10 then 240
220 print "illegal range, re-enter run parameters"
230 goto 160
240 if j<100 then 260
250 j=100
260 for x=0 to j+a+b
270 i=rnd(1)
280 next x
290 for n=1 to j
300 for x=0 to a
310 t(x)=int(rnd(1)*b+1)
320 next x
330 for i=1 to a+b+1
340 for x=1 to a
350 f(x)=0
360 next x
370 f1=0
380 f2=0
390 input "guess";v
400 if v<> 0 then 450
410 for x=1 to i-1
420 print h(x,1)","h(x,2)"="h(x,3)
430 next x
440 goto 390
450 if v=1 then 750
460 if v=2 then 920
470 t1=v
480 for x=1 to a
490 m(x)=int(t1/(10^(a-x)))
500 t1=t1-m(x)*(10^(a-x))+((sgn(a-(x+1))-1)*-.5)
510 if m(x)<1 then 530
520 if m(x)<b+1 then 550
530 print "bad number in"v
540 goto 340
550 if m(x)<>t(x) then 580
560 f(x)=1
570 f1=f1+1
580 next x
590 if f1=a then 810
600 for y=1 to a
610 if t(y)=m(y) then 690
620 for x=1 to a
630 if m(y)<>t(x) then 680
640 if f(x)=1 then 680
650 f(x)=1
660 f2=f2+1
670 goto 690
680 next x
690 next y
700 print f1","f2
710 h(i,1)=f1
720 h(i,2)=f2
730 h(i,3)=v
740 next i
750 i=a-1+b+1
760 v=0
770 for x=1 to a
780 v=v+t(x)*(10^(a-x))
790 next x
800 print "answer is"v
810 s=s+i
820 print i"tries,"s/n"average for"n"numbers"
830 y=int(rnd(r)*i)
840 y=int(h(y,2)/1024+4*rnd(1))
850 for x=1 to y+1
860 i=rnd(1)
870 next x
880 next n
890 input "run again";s$
900 if left$(s$,1)="y" then 130
920 end
