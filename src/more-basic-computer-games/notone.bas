3 print tab(26);"notone":print
5 print tab(20);"creative computing"
6 print tab(19);"morristown new jersey"
7 print:print:print
10 dim t(50),r(10),c(10),l(12)
15 input "would you like the instructions";a$
20 if a$="yes" then 35
25 if a$="no" then 100
30 print:print "answer yes or no!!":print:goto 15
35 print:print "the game of notone is played with"
40 print "two players and a pair of dice. there are"
45 print "ten rounds in the game one round consisting"
50 print "of one turn for each player. players"
55 print "(yourself and the computer) add the score"
60 print "they attain on each round, and the player"
62 print "with the highest score after ten rounds is the winner":print
67 print "on each turn the player may roll the two"
69 print "dice from 1 to n times. if t1 is the total of dice on"
72 print "the ith roll, then the players score for the turn is"
75 print "t(1)+t(2)+t(3)+........+t(n).  however,"
77 print "and here's the catch, if any t(i) is equal to t(1) then"
80 print "the turn is over and his score for that round is zero"
82 print "after each roll that doesn't equal t(1), the player can"
88 print "decide whether to roll again or stop and "
90 print "score the number of points already obtained."
100 for t=1 to 10:print:print "round ";t
110 x=x+1:r1=int(6*rnd(1))+1
115 r2=int(6*rnd(1))+1:print r1+r2
120 if x>1 then 130
125 t(1)=r1+r2:goto 135
130 t(x)=r1+r2
131 if t(1)<>t(x) then  135
132 print "you get a zero for this round"
133 x=0:t1=0:goto 200
135 t1=t1+t(x)
140 input "roll again ";b$
145 if b$="yes" then 110
150 if b$="no" then r(t)=t1:x=0:t1=0:for a=1 to 50:t(a)=0:next:goto 200
160 print:print "answer yes or no!!":print: goto 140
200 print:print tab(15);"computers move":print
201 restore
202 r1=int(6*rnd(1))+1:r2=int(6*rnd(1))+1
204 for d=2 to r1+r2:read l(d):next:d=r1+r2
205 for c=1 to l(d):if c=1 then 215
210 r1=int(6*rnd(1))+1:r2=int(6*rnd(1))+1
215 print "computer's roll"c":";r1+r2
220 if c>1 then 230
225 t(1)=r1+r2:goto 242
230 t(c)=r1+r2
235 if t(c)<>t(1) then 242
236 print "the computer gets a zero for the turn!!"
237 t1=0:goto 245
242 t1=t1+t(c):next c
245 c(t)=t1:t1=0:x=0
250 c2=c2+c(t):c1=c1+r(t)
253 print:for b=1 to 50:t(b)=0:next
255 if t=10 then print "final score":print
260 if c2<c1 then 270
263 print"computer: ";c2,"you: ";c1:goto 300
270 print "you:";c1;"computer:";c2
300 next t
305 data 18,18,9,9,6,6,6,9,9,18,18
310 print:print "scoring summary":print
315 print "round";tab(15);"you";tab(25);"computer":print
320 for e=1 to 10:print e;tab(16);r(e);tab(26);c(e):next
325 print:print "totals: ";tab(16);c1;tab(26);c2:print
