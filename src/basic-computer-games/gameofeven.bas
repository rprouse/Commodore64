1 print tab(28);"game of even wins"
2 print tab(15);"creative computing  morristown, new jersey"
3 print:print
4 input "do you want instructions (yes or no)";a$:print
5 if a$="no" then 20
6 print "the game is played as follows:":print
7 print "at the beginning of the game, a random number of chips are"
8 print "placed on the board.  the number of chips always starts"
9 print "as an odd number.  on each turn, a player must take one,"
10 print "two, three, or four chips.  the winner is the player who"
11 print "finishes with a total number of chips that is even."
12 print "the computer starts out knowing only the rules of the"
13 print "game.  it gradually learns to play well.  it should be"
14 print "difficult to beat the computer after twenty games in a row."
15 print "try it!!!!": print
16 print "to quit at any time, type a '0' as your move.": print
20 dim r(1,5)
25 l=0: b=0
30 for i=0 to 5
40 r(1,i)=4
50 r(0,i)=4
60 next i
70 a=0: b=0
90 p=int((13*rnd(1)+9)/2)*2+1
100 if p=1 then 530
110 print "there are";p;"chips on the board."
120 e1=e
130 l1=l
140 e=(a/2-int(a/2))*2
150 l=int((p/6-int(p/6))*6+.5)
160 if r(e,l)>=p then 320
170 m=r(e,l)
180 if m<=0 then 370
190 p=p-m
200 if m=1 then 510
210 print "computer takes";m;"chips leaving";p;"... your move";
220 b=b+m
230 input m
240 m=int(m)
250 if m<1 then 450
260 if m>4 then 460
270 if m>p then 460
280 if m=p then 360
290 p=p-m
300 a=a+m
310 goto 100
320 if p=1 then 550
330 print "computer takes";p;"chips."
340 r(e,l)=p
350 b=b+p
360 if b/2=int(b/2) then 420
370 print "game over ... you win!!!": print
390 if r(e,l)=1 then 480
400 r(e,l)=r(e,l)-1
410 goto 70
420 print "game over ... i win!!!": print
430 goto 70
450 if m=0 then 570
460 print m;"is an illegal move ... your move";
470 goto 230
480 if r(e1,l1)=1 then 70
490 r(e1,l1)=r(e1,l1)-1
500 goto 70
510 print "computer takes 1 chip leaving";p;"... your move";
520 goto 220
530 print "there is 1 chip on the board."
540 goto 120
550 print "computer takes 1 chip."
560 goto 340
570 end
