10 print tab(34);"hi lo"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
100 print "this is the game of hi lo.":print
110 print "you will have 6 tries to guess the amount of money in the"
120 print "hi lo jackpot, which is between 1 and 100 dollars.  if you"
130 print "guess the amount, you win all the money in the jackpot!"
140 print "then you get another chance to win more money.  however,"
150 print "if you do not guess the amount, the game ends.":print
160 r=0
170 b=0:print
180 y=int(100*rnd(1))
200 print "your guess";
210 input a
220 b=b+1
230 if a=y then 300
240 if a>y then 270
250 print "your guess is too low.":goto 280
270 print "your guess is too high."
280 print:if b<6 then 200
290 print "you blew it...too bad...the number was";y
295 r=0:goto 350
300 print "got it!!!!!!!!!!   you win";y;"dollars."
310 r=r+y
320 print "your total winnings are now";r;"dollars."
350 print:print "play again (yes or no)";
360 input a$:if a$="yes" then 170
380 print:print "so long.  hope you enjoyed yourself!!!"
390 end
