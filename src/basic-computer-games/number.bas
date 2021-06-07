1 print tab(33);"number"
2 print tab(15);"creative computing  morristown, new jersey"
3 print:print:print
4 print "you have 100 points.  by guessing numbers from 1 to 5, you"
5 print "can gain or lose points depending upon how close you get to"
6 print "a random number selected by the computer.": print
7 print "you occasionally will get a jackpot which will double(!)"
8 print "your point count.  you win when you get 500 points."
9 print: p=100
10 def fnr(x)=int(5*rnd(1)+1)
12 input "guess a number from 1 to 5";g
15 r=fnr(1)
16 s=fnr(1)
17 t=fnr(1)
18 u=fnr(1)
19 v=fnr(1)
20 if g=r then 30
21 if g=s then 40
22 if g=t then 50
23 if g=u then 60
24 if g=v then 70
25 if g>5 then 12
30 p=p-5
35 goto 80
40 p=p+5
45 goto 80
50 p=p+p
53 print "you hit the jackpot!!!"
55 goto 80
60 p=p+1
65 goto 80
70 p=p-(p*.5)
80 if p>500 then 90
82 print "you have";p;"points.":print
85 goto 12
90 print "!!!!you win!!!! with ";p;"points."
99 end
