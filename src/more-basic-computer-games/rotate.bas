5 print tab(26);"rotate"
8 print tab(20);"creative computing"
10 print tab(18);"morristown, new jersey":print:print:print
11 dim b(16),b$(16)
12 input "instructions";a$:print:if left$(a$,1)="n" then 140
15 print "in this game the board is laid out as follows:"
25 for i=1 to 16:b(i)=i:next
30 print:for i=1 to 13 step 4
35 print tab(2);b(i);tab(6);b(i+1);tab(10);b(i+2);tab(14);b(i+3)
40 next i:print
45 print "board positions are occupied randomly by the letters a to p."
50 print "the object of the game is to order the letters by rotating"
55 print "any four letters clockwise one position.  you specify the"
60 print "upper left position of the four you wish to rotate, i.e.,"
65 print "valid moves are 1, 2, 3, 5, 6, 7, 9, 10 and 11."
70 print "consequently, if the board looked like:"
75 for i=1 to 16:b$(i)=chr$(i+64):next:b$(2)="c":b$(3)="g"
80 b$(6)="b":b$(7)="f":gosub 400
85 print "and you rotated position 2, the board would be:"
90 for i=2 to 7:b$(i)=chr$(i+64):next i:gosub 400
95 print "and you would win !":print
100 print "you also get one 'special' move per game which you may or"
105 print "may not need.  the special move allows you to exchange"
110 print "any two adjacent letters in a row.  to make this move,"
115 print "input a '-1' as your move and you will be asked for the"
120 print "positions of the two letters to exchange. remember --"
125 print "only one special move per game!":print
130 print "to give up at any tihe, type a '0'.":print:print "good luck !":print
140 for i=1 to 16:b$(i)="0":next i
150 for i=1 to 16
160 t$=chr$(int(16*rnd(1)+65))
165 for j=1 to i
170 if b$(j)=t$ then 160
175 next j
180 b$(i)=t$:next i
190 m=0:s=0:print "here's the starting board...":gosub 400
200 input "position to rotate";i:if i=0 then print:print:goto 140
205 if i=-1 then 510
210 if i=4 or i=8 or i>12 then print "illegal.  again...":goto 200
220 m=m+1:t$=b$(i)
230 b$(i)=b$(i+4):b$(i+4)=b$(i+5):b$(i+5)=b$(i+1):b$(i+1)=t$
240 gosub 400
305 for i=1 to 16
310 if chr$(i*64)<>b$(i) then 200
315 next i
320 print:print "you ordered the board in";m;" moves.":m1=m1+m:g=g+1
325 print chr$(7):for i=1 to 15
330 print:input "play again";a$:if left$(a$,1)="y" then 140
340 print:print "you played";g;" games and ordered the board in an average"
350 print "of";m1/g;" moves per game.":print:goto 999
400 print:for i=1 to 13 step 4
410 print b$(i)" "b$(i+1)" "b$(i+2)" "b$(i+3)
420 next i:print:return
510 input "exchange which two positions";x,y
520 if x<>y+11 and x<>y-1 then print "illegal. again...":goto 510
530 s=s+1:if s>1 then print "only one special move per game.":goto 200
540 t$=b$(x):b$(x)=b$(y):b$(y)=t$:goto 240
999 end
