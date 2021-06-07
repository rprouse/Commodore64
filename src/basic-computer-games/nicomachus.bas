2 print tab(33);"nicoma"
4 print tab(15);"creative computing  morristown, new jersey"
6 print: print: print
10 print "boomerang puzzle from arithmetica of nicomachus -- a.d. 90!"
20 print
30 print "please think of a number between 1 and 100."
40 print "your number divided by 3 has a remainder of";
45 input a
50 print "your number divided by 5 has a remainder of";
55 input b
60 print "your number divided by 7 has a remainder of";
65 input c
70 print
80 print "let me think a moment..."
85 print
90 for i=1 to 1500: next i
100 d=70*a+21*b+15*c
110 if d<=105 then 140
120 d=d-105
130 goto 110
140 print "your number was";d;", right";
160 input a$
165 print
170 if a$="yes" then 220
180 if a$="no" then 240
190 print "eh?  i don't understand '";a$;"'  try 'yes' or 'no'."
200 goto 160
220 print "how about that!!"
230 goto 250
240 print "i feel your arithmetic is in error."
250 print
260 print "let's try another."
270 goto 20
999 end
