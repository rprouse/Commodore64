10 print tab(21);"game of rock, scissors, paper"
20 print tab(15);"creative computing  morristown, new jersey"
25 print:print:print
30 input "how many games";q
40 if q<11 then 60
50 print "sorry, but we aren't allowed to play that many.": goto 30
60 for g=1 to q
70 print: print "game number";g
80 x=int(rnd(1)*3+1)
90 print "3=rock...2=scissors...1=paper"
100 input "1...2...3...what's your choice";k
110 if (k-1)*(k-2)*(k-3)<>0 then print "invalid.": goto 90
120 print "this is my choice..."
130 on x goto 140,150,160
140 print "...paper": goto 170
150 print "...scissors": goto 170
160 print "...rock"
170 if x=k then 250
180 if x>k then 230
190 if x=1 then 210
200 print "you win!!!":h=h+1: goto 260
210 if k<>3 then 200
220 print "wow!  i win!!!":c=c+1:goto 260
230 if k<>1 or x<>3 then 220
240 goto 200
250 print "tie game.  no winner."
260 next g
270 print: print "here is the final game score:"
280 print "i have won";c;"game(s)."
290 print "you have won";h;"game(s)."
300 print "and";q-(c+h);"game(s) ended in a tie."
310 print: print "thanks for playing!!"
320 end
