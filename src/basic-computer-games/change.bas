2 print tab(33);"change"
4 print tab(15);"creative computing  morristown, new jersey"
5 print:print:print
6 print "i, your friendly microcomputer, will determine"
8 print "the correct change for items costing up to $100."
9 print:print
10 print "cost of item";:input a:print "amount of payment";:input p
20 c=p-a:m=c:if c<>0 then 90
25 print "correct amount, thank you."
30 goto 400
90 if c>0 then 120
95 print "sorry, you have short-changed me $";a-p
100 goto 10
120 print "your change, $";c
130 d=int(c/10)
140 if d=0 then 155
150 print d;"ten dollar bill(s)"
155 c=m-(d*10)
160 e=int(c/5)
170 if e=0 then 185
180 print e;"five dollars bill(s)"
185 c=m-(d*10+e*5)
190 f=int(c)
200 if f=0 then 215
210 print f;"one dollar bill(s)"
215 c=m-(d*10+e*5+f)
220 c=c*100
225 n=c
230 g=int(c/50)
240 if g=0 then 255
250 print g;"one half dollar(s)"
255 c=n-(g*50)
260 h=int(c/25)
270 if h=0 then 285
280 print h;"quarter(s)"
285 c=n-(g*50+h*25)
290 i=int(c/10)
300 if i=0 then 315
310 print i;"dime(s)"
315 c=n-(g*50+h*25+i*10)
320 j=int(c/5)
330 if j=0 then 345
340 print j;"nickel(s)"
345 c=n-(g*50+h*25+i*10+j*5)
350 k=int(c+.5)
360 if k=0 then 380
370 print k;"penny(s)"
380 print "thank you, come again."
390 print:print
400 goto 10
410 end
