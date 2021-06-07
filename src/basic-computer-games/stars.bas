10 print tab(34);"stars"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
100 rem *** stars - people's computer center, menlo park, ca
140 rem *** a is limit on number, m is number of guesses
150 a=100:m=7
170 input "do you want instructions";a$
190 if left$(a$,1)="n" then 280
200 rem *** instructions on how to play
210 print "i am thinking of a whole number from 1 to";a
220 print "try to guess my number.  after you guess, i"
230 print "will type one or more stars (*).  the more"
240 print "stars i type, the closer you are to my number."
250 print "one star (*) means far away, seven stars (*******)"
260 print "means really close!  you get";m;"guesses."
270 rem *** computer thinks of a number
280 print
290 print
300 x=int(a*rnd(1)+1)
310 print "ok, i am thinking of a number, start guessing."
320 rem *** guessing begins, human gets m guesses
330 for k=1 to m
340 print
350 print "your guess";
360 input g
370 if g=x then 600
380 d=abs(g-x)
390 if d>=64 then 510
400 if d>=32 then 500
410 if d>=16 then 490
420 if d>=8 then 480
430 if d>=4 then 470
440 if d>=2 then 460
450 print "*";
460 print "*";
470 print "*";
480 print "*";
490 print "*";
500 print "*";
510 print "*";
520 print
530 next k
540 rem *** did not guess in m guesses
550 print 
560 print "sorry, that's";m;"guesses. the number was";x
580 goto 650
590 rem *** we have a winner
600 print:for n=1 to 79
610 print "*";
620 next n
630 print:print
640 print "you got it in";k;"guesses!!!  let's play again..."
650 goto 280
660 end
