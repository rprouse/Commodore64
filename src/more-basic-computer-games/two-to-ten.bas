10 print tab(28);"two to ten"
20 print tab(15);"creative computing  morristown new jersey"
30 print
40 print
50 print
60 print "welcome to the game of two to ten.  that name comes from the"
70 print "special 'deck of cards' used. there are no face cards - only"
80 print "the cards 2-10.  this game is easy and fun to play if you"
90 print "understand what you are doing so read the instructions"
100 print "carefully."
110 print "at the start of the game, you bet on winning. type in any"
120 print "number between 0 and 200.  i then pick a random number"
130 print "you are to reach by the sum total of more cards chosen."
140 print "because of the rare chance of you getting to that number"
150 print "exactly, you are given an allowance card.  the object of"
160 print "the game of to get the total of cards within the mystery"
170 print "number without going over."
180 print "you are given a hint as to what the number is.  this is not"
190 print "the exact number only one close. all you do in this game is"
200 print "decide when to stop.  at this point your total is compared"
210 print "with the number and your winnings are determined."
220 m=200
223 d=0
225 t=0
227 o=int(10*rnd(1))+25
229 n=int(o*rnd(1))+o
230 r=(int(15*rnd(1))+1)/100
250 s=int(2*rnd(1)+1)
260 if s <> 1 then 270
262 e=int(n-(n*r))
265 goto 280
270 e=int(n+(n*r))
280 a=int(9*rnd(11)+2)
283 print
285 print "place your bet ... you have $";m;" to spend.";
287 input b
288 print
289 if b < 0 then 297
290 if m >= b then 300
293 print "you can't bet more that you've got!"
295 goto 285
297 print "you may not bet against yourself."
298 goto 285
300 print "your 'lucky limit' card is a ";a
310 print "you must come within ";a;" without going over to win."
315 print
320 print "here we go"
322 print
324 print
340 d=d+1
350 c=int(9*rnd(1)+2)
360 print "card #";d;" is a ";c;".you are trying to come near ";e
365 t=t+c
370 if t <= n then 380
375 print "your total is over the number";n;" an automatic loss!"
377 goto 570
380 print "your total is ";t;"  do you want to continue";
385 input q$
387 print
390 if left$(q$,1)="y" then 322
410 if t < n-a or t > n then 550
500 print "you win!  the number was ";n;" your guess total was";t
510 print "within your limit card."
520 m=m+b
540 goto 600
550 print "you blew it!  the number was ";n;", outside your limit by ";
560 print (n-a)-t
565 print
570 m=m-b
600 print "you now have $";m;" in cash to bet in the next game!"
605 if m <= 0 then 655
610 print "would you like to play the next game";
615 input q$
620 if left$(q$,1)="y" then 223
630 print "hope you had fun."
640 goto 999
650 print
655 print chr$(7);
660 print "you are broke!! you may not play anymore!!"
999 end
