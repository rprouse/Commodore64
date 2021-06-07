1 print tab(27)"doors"
2 print tab(20)"creative computing"
3 print tab(18)"morristown, new jersey"
4 print
5 print
6 print
25 dim k(20)
30 def fnr(z)=int(z*rnd(1))
32 for x=0 to 6:read r$(x):next x
33 for x=0 to 6: read s$(x):next x
35 d=1:t=10+fnr(21):n=3+fnr(3):k3=8+fnr(5)
40 print"there are";n;"locked doors and there are";k3;"keys(0-"k3-1")"
41 print"you will have ";t-1;"tries to open them all"
42 print"(some keys may open more than one door)"
65 for x=2 to n:k(x)=fnr(k3):next x
70 t=t-1:if t=0 then 150
80 print"tries left =";t;"           door #";d;"key";
90 input k2
100 if k2<>k(d) then 70
110 print s$(fnr(7)):d=d+1
120 if d<n+1 then 70
125 print
130 print"you did it, behind door #";n;"is..........................."
140 print r$(fnr(7)) "!!":goto 170
150 print"you lose,  the rest of the keys are:"
160 for x=d to n:print"door";x;"key"k(x):next x
170 print"do you want to play again(yes sir! or no sir!)"
171 input q$
180 if q$="yes sir!" then 35
181 if q$="no sir!" then 999
190 print"hey, i didn't just fall off a turnip truck, ya know!!!!!"
200 goto 170
500 data"a pot of gold","a beautiful maiden","a man eating tiger"
505 data"nothing","$22.59","a rolls royce","the keys to the world"
600 data"open sesame!","c-r-e-e-e-e-e-a-a-k!","wa lah!","ta-dah!"
605 data"abracadabra!", "click !!!!!!!!?!???????!!!!!!!!", "surprise!"
999 end
