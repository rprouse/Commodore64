10 print tab(33);"kinema"
20 print tab(15);"creative computing  morristown, new jersey"
30 print: print: print
100 print
105 print
106 q=0
110 v=5+int(35*rnd(1))
111 print "a ball is thrown upwards at";v;"meters per second."
112 print
115 a=.05*v^2
116 print "how high will it go (in meters)";
117 gosub 500
120 a=v/5
122 print "how long until it returns (in seconds)";
124 gosub 500
130 t=1+int(2*v*rnd(1))/10
132 a=v-10*t
134 print "what will its velocity be after";t;"seconds";
136 gosub 500
140 print
150 print q;"right out of 3.";
160 if q<2 then 100
170 print "  not bad."
180 goto 100
500 input g
502 if abs((g-a)/a)<.15 then 510
504 print "not even close...."
506 goto 512
510 print "close enough."
511 q=q+1
512 print "correct answer is ";a
520 print
530 return
999 end
