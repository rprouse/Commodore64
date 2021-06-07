100 print tab(23);"chuck-a-luck"
110 print tab(20);"creative computing"
120 print tab(18);"morristown, new jersey"
130 print:print:print
140 print "choose a number from 1 to 6. i will roll 3 dice."
150 print "if your number matches 1 die, i pay off even money."
160 print "two dice, 2:1    3 dice, 3:1"
170 print:print:m=500
180 print "you have $";m;". make a bet."
190 input b
200 if b > m then 410
210 if b > 0 then if b*100=int(b*100) then 230
220 goto 420
230 print "choose a number";
240 input n
250 if int(n)=n and n > 0 and n < 7 then 270
260 print "cheater'!!!!!":goto 230
270 a=int(rnd(1)*6)+1:print a;"    ";:d=int(rnd(1)*6)+1:print d;"    ";
280 c=int(rnd(1)*6)+1:print c;"     "
290 t=0
300 if a=n then t=t+1
310 if d=n then t=t+1
320 if c=n then t=t+1
330 print "you've matched ";t;" times."
340 on t goto 380,390,400
350 print "you loose $";b
360 m=m-b:if m<= 0 then 430
370 goto 180
380 print "you've won $";b:m=m+b:goto 180
390 print "you've won $";b*2:m=m+2*b:goto 180
400 print "you've won $";b*3:m=m+3*b:goto 180
410 print "i don't take i.o.u's !!!!":goto 180
420 print "don't get cute!!!":goto 180
430 print
440 print
450 end
