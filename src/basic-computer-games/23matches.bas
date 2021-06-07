20 print tab(31);"23 matches"
30 print tab(15);"creative computing  morristown, new jersey"
40 print:print:print
80 print " this is a game called '23 matches'."
90 print
100 print "when it is your turn, you may take one, two, or three"
110 print "matches. the object of the game is not to have to take"
120 print "the last match."
130 print
140 print "let's flip a coin to see who goes first."
150 print "if it comes up heads, i will win the toss."
155 print
160 rem
165 n = 23
170 q = int(2*rnd(5))
180 if q = 1 then 210
190 print "tails! you go first. "
195 print
200 goto 300
210 print "heads! i win! ha! ha!"
220 print "prepare to lose, meatball-nose!!"
230 print
250 print "i take 2 matches"
260 n = n -2
270 print "the number of matches is now" n
280 print
290 print "your turn -- you may take 1, 2 or 3 matches."
300 print "how many do you wish to remove",
310 input k
320 if k > 3 then 430
330 if k <= 0 then 430
340 n = n - k
350 print "there are now";n;"matches remaining."
351 if n = 4 then 381
352 if n = 3 then 383
353 if n = 2 then 385
360 if n <= 1 then  530
370 z = 4 - k
372 goto 390
380 print
381 z = 3
382 goto 390
383 z = 2
384 goto 390
385 z = 1
390 print "my turn ! i remove" z "matches"
400 n = n - z
410 if n <= 1 then 470
420 goto 270
430 print "very funny! dummy!"
440 print "do you want to play or goof around?"
450 print "now, how many matches do you want",
460 goto 310
470 print
480 print"you poor boob! you took the last match! i gotcha!!"
490 print "ha ! ha ! i beat you !!!"
500 print
510 print "good bye loser!"
520 goto 560
530 print "you won, floppy ears !"
540 print "think you're pretty smart !"
550 print "lets play again and i'll blow your shoes off !!"
560 stop
570 end
