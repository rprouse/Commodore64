2 print tab(34);"dice"
4 print tab(15);"creative computing  morristown, new jersey"
6 print:print:print
10 dim f(12)
20 rem  danny freidus
30 print "this program simulates the rolling of a"
40 print "pair of dice."
50 print "you enter the number of times you want the computer to"
60 print "'roll' the dice.  watch out, very large numbers take"
70 print "a long time.  in particular, numbers over 5000."
80 for q=1 to 12
90 f(q)=0
100 next q
110 print:print "how many rolls";
120 input x
130 for s=1 to x
140 a=int(6*rnd(1)+1)
150 b=int(6*rnd(1)+1)
160 r=a+b
170 f(r)=f(r)+1
180 next s
185 print
190 print "total spots","number of times"
200 for v=2 to 12
210 print v,f(v)
220 next v
221 print
222 print:print "try again";
223 input z$
224 if z$="yes" then 80
240 end
