1 print tab(33);"queen"
2 print tab(15);"creative computing  morristown, new jersey"
3 print:print:print
10 dim s(64)
11 for i=1 to 64
12 read s(i)
13 next i
14 data  81,  71,  61,  51,  41,  31,  21,  11
15 data  92,  82,  72,  62,  52,  42,  32,  22
16 data 103,  93,  83,  73,  63,  53,  43,  33
17 data 114, 104,  94,  84,  74,  64,  54,  44
18 data 125, 115, 105,  95,  85,  75,  65,  55
19 data 136, 126, 116, 106,  96,  86,  76,  66
20 data 147, 137, 127, 117, 107,  97,  87,  77
21 data 158, 148, 138, 128, 118, 108,  98,  88
22 input "do you want instructions";w$
23 if w$="no" then 30
24 if w$="yes" then 28
25 print "please answer 'yes' or 'no'."
26 goto 22
28 gosub 5000
29 goto 100
30 gosub 5160
90 rem     error checks
100 print "where would you like to start";
110 input m1
115 if m1=0 then 232
120 t1=int(m1/10)
130 u1=m1-10*t1
140 if u1=1 then 200
150 if u1=t1 then 200
160 print "please read the directions again."
170 print "you have begun illegally."
175 print
180 goto 100
200 gosub 2000
210 print "computer moves to square";m
215 if m=158 then 3400
220 print "what is your move";
230 input m1
231 if m1<>0 then 239
232 print
233 print "it looks like i have won by forfeit."
234 print
235 goto 4000
239 if m1<=m then 3200
240 t1=int(m1/10)
250 u1=m1-10*t1
260 p=u1-u
270 if p<>0 then 300
280 l=t1-t
290 if l<=0 then 3200
295 goto 200
300 if t1-t <>p then 320
310 goto 200
320 if t1-t <>2*p then 3200
330 goto 200
1990 rem     locate move for computer
2000 if m1=41 then 2180
2010 if m1=44 then 2180
2020 if m1=73 then 2180
2030 if m1=75 then 2180
2040 if m1=126 then 2180
2050 if m1=127 then 2180
2060 if m1=158 then 3300
2065 c=0
2070 for k=7 to 1 step -1
2080 u=u1
2090 t=t1+k
2100 gosub 3500
2105 if c=1 then 2160
2110 u=u+k
2120 gosub 3500
2125 if c=1 then 2160
2130 t=t+k
2140 gosub 3500
2145 if c=1 then 2160
2150 next k
2155 goto 2180
2160 c=0
2170 return
2180 gosub 3000
2190 return
2990 rem     random move
3000 z=rnd(1)
3010 if z>.6 then 3110
3020 if z>.3 then 3070
3030 u=u1
3040 t=t1+1
3050 m=10*t+u
3060 return
3070 u=u1+1
3080 t=t1+2
3090 m=10*t+u
3100 return
3110 u=u1+1
3120 t=t1+1
3130 m=10*t+u
3140 return
3190 rem     illegal move message
3200 print
3210 print "y o u   c h e a t . . .  try again";
3220 goto 230
3290 rem     player wins
3300 print
3310 print "c o n g r a t u l a t i o n s . . ."
3320 print 
3330 print "you have won--very well played."
3340 print "it looks like i have met my match."
3350 print "thanks for playing---i can't win all the time."
3360 print
3370 goto 4000
3390 rem     computer wins
3400 print
3410 print "nice try, but it looks like i have won."
3420 print "thanks for playing."
3430 print
3440 goto 4000
3490 rem     test for computer move
3500 m=10*t+u
3510 if m=158 then 3570
3520 if m=127 then 3570
3530 if m=126 then 3570
3540 if m=75 then 3570
3550 if m=73 then 3570
3560 return
3570 c=1
3580 goto 3560
3990 rem     another game???
4000 print "anyone else care to try";
4010 input q$
4020 print
4030 if q$="yes" then 30 
4040 if q$="no" then 4050
4042 print "please answer 'yes' or 'no'."
4045 goto 4000
4050 print:print "ok --- thanks again."
4060 stop
4990 rem     directions
5000 print "we are going to play a game based on one of the chess"
5010 print "moves.  our queen will be able to move only to the left,"
5020 print "down, or diagonally down and to the left."
5030 print
5040 print "the object of the game is to place the queen in the lower"
5050 print "left hand square by alternating moves between you and the"
5060 print "computer.  the first one to place the queen there wins."
5070 print
5080 print "you go first and place the queen in any one of the squares"
5090 print "on the top row or right hand column."
5100 print "that will be your first move."
5110 print "we alternate moves."
5120 print "you may forfeit by typing '0' as your move."
5130 print "be sure to press the return key after each response."
5140 print
5150 print
5160 print
5170 for a=0 to 7
5180 for b=1 to 8
5185 i=8*a+b
5190 print s(i);
5200 next b
5210 print
5220 print
5230 print
5240 next a
5250 print
5260 return
9999 end
