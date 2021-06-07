100 print tab(22);"under or over"
110 print tab(20);"creative computing"
120 print tab(18);"morristown, new jersey"
130 print:print:print
140 print"this is a game of under and over. if you pick"
150 print"under or over seven, you will win even money."
160 print"if you pick even you will win money at four to one"
170 print"odds. you have $100 to start with. good luck!":print:print
180 a=100
190 restore
200 rem
210 read a$,b$,c$
220 data "under","over","even"
230 print"what number do you wish to play and how much"
240 print"do you want to bet on the number";:input b,c
250 print:print"the dice have now been thrown. the results"
260 print"are as follows:"
270 q=int(6*rnd(1)+1):r=int(6*rnd(1)+1)
280 print " die #1","die #2","sum","your#","toss"
290 if q+r>7 then 310
295 if q+r=7 then 320
300 print q,r,q+r,b,a$:print
303 if b=q+r then 350
305 if b<7 then 380
307 goto 410
310 print q,r,q+r,b,b$:print
313 if b=q+r then 350
315 if b>7 then 380
317 goto 410
320 print q,r,q+r,b,c$:print
330 if b=q+r then 350
340 goto 420
350 a=a+(4*c)
360 print tab(20)"********you win 4 to 1********"
370 print"the amount you now have is" a :print:goto 440
380 a=a+c
390 print tab(20)"********you win even money********"
400 print"the amount you now have is" a :print:goto 440
410 a=a-c
420 print tab(20)"!!!!!you lose!!!!!"
430 print"the amount you now have is" a :print
440 if a>0 then 190
450 print"the game is over and you are flat broke. sorry charlie"
460 print"this proves that it is not good to gamble"
470 print"do you want to play again";:input w$
480 if left$(w$,1)="y" then 180
490 end
