5 print tab(33);"bagels"
10 print tab(15);"creative computing  morristown, new jersey":print:print
15 rem *** bagles number guessing game
20 rem *** original source unknown but suspected to be
25 rem *** lawrence hall of science, u.c. berkely
30 dim a1(3),a(3),b(3)
40 y=0:t=255
50 print:print:print
70 input "would you like the rules (yes or no)";a$
90 if left$(a$,1)="n" then 150
100 print:print "i am thinking of a three-digit number.  try to guess"
110 print "my number and i will give you clues as follows:"
120 print "   pico   - one digit correct but in the wrong position"
130 print "   fermi  - one digit correct and in the right position"
140 print "   bagels - no digits correct"
150 for i=1 to 3
160 a(i)=int(10*rnd(1))
165 if i-1=0 then 200
170 for j=1 to i-1
180 if a(i)=a(j) then 160
190 next j
200 next i
210 print:print "o.k.  i have a number in mind."
220 for i=1 to 20
230 print "guess #";i,
240 input a$
245 if len(a$)<>3 then 630
250 for z=1 to 3:a1(z)=asc(mid$(a$,z,1)):next z
260 for j=1 to 3
270 if a1(j)<48 then 300
280 if a1(j)>57 then 300
285 b(j)=a1(j)-48
290 next j
295 goto 320
300 print "what?"
310 goto 230
320 if b(1)=b(2) then 650
330 if b(2)=b(3) then 650
340 if b(3)=b(1) then 650
350 c=0:d=0
360 for j=1 to 2
370 if a(j)<>b(j+1) then 390
380 c=c+1
390 if a(j+1)<>b(j) then 410
400 c=c+1
410 next j
420 if a(1)<>b(3) then 440
430 c=c+1
440 if a(3)<>b(1) then 460
450 c=c+1
460 for j=1 to 3
470 if a(j)<>b(j) then 490
480 d=d+1
490 next j
500 if d=3 then 680
505 if c=0 then 545
520 for j=1 to c
530 print "pico ";
540 next j
545 if d=0 then 580
550 for j=1 to d
560 print "fermi ";
570 next j
580 if c+d<>0 then 600
590 print "bagels";
600 print
605 next i
610 print "oh well."
615 print "that's twenty guesses.  my number was";100*a(1)+10*a(2)+a(3)
620 goto 700
630 print "try guessing a three-digit number.":goto 230
650 print "oh, i forgot to tell you that the number i have in mind"
660 print "has no two digits the same.":goto 230
680 print "you got it!!!":print
690 y=y+1
700 input "play again (yes or no)";a$
720 if left$(a$,1)="y" then 150
730 if y=0 then 750
740 print:print "a";y;"point bagels buff!!"
750 print "hope you had fun.  bye."
999 end
