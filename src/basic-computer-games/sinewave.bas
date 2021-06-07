10 print tab(30);"sine wave"
20 print tab(15);"creative computing  morristown, new jersey"
30 print: print: print: print: print
40 remarkable program by david ahl
50 b=0
100 rem  start long loop
110 for t=0 to 40 step .25
120 a=int(26+25*sin(t))
130 print tab(a);
140 if b=1 then 180
150 print "creative"
160 b=1
170 goto 200
180 print "computing"
190 b=0
200 next t
999 end
