1 print tab(34);"trap"
2 print tab(15);"creative computing  morristown, new jersey"
3 print:print:print
10 g=6
20 n=100
30 rem-trap
40 rem-steve ullman, 8-1-72
50 print "instructions";
60 input z$
70 if left$(z$,1)<>"y" then 180
80 print "i am thinking of a number between 1 and";n
90 print "try to guess my number. on each guess,"
100 print "you are to enter 2 numbers, trying to trap"
110 print "my number between the two numbers. i will"
120 print "tell you if you have trapped my number, if my"
130 print "number is larger than your two numbers, or if"
140 print "my number is smaller than your two numbers."
150 print "if you want to guess one single number, type"
160 print "your guess for both your trap numbers."
170 print "you get";g;"guesses to get my number."
180 x=int(n*rnd(1))+1
190 for q=1 to g
200 print 
210 print "guess #";q;
220 input a,b
230 if a=b and x=a then 400
240 if a <= b then 260
250 gosub 360
260 if a <= x and x <= b then 320
270 if x<a then 300
280 print "my number is larger than your trap numbers."
290 goto 330
300 print "my number is smaller than your trap numbers."
310 goto 330
320 print "you have trapped my number."
330 next q
340 print "sorry, that's";g;"guesses. the number was";x
345 print
350 goto 410
360 r=a
370 a=b
380 b=r
390 return 
400 print "you got it!!!"
410 print 
420 print "try again."
430 print
440 goto 180
450 end
