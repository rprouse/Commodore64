1 print tab(33);"train"
2 print tab(15);"creative computing  morristown, new jersey"
3 print: print: print
4 print "time - speed distance exercise": print
10 c=int(25*rnd(1))+40
15 d=int(15*rnd(1))+5
20 t=int(19*rnd(1))+20
25 print " a car traveling";c;"mph can make a certain trip in"
30 print d;"hours less than a train traveling at";t;"mph."
35 print "how long does the trip take by car";
40 input a
45 v=d*t/(c-t)
50 e=int(abs((v-a)*100/a)+.5)
55 if e>5 then 70
60 print "good! answer within";e;"percent."
65 goto 80
70 print "sorry.  you were off by";e;"percent."
80 print "correct answer is";v;"hours."
90 print
95 print "another problem (yes or no)";
100 input a$
105 print
110 if a$="yes" then 10
999 end
