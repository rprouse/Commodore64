2 print tab(30);"depth charge"
4 print tab(15);"creative computing  morristown, new jersey"
6 print: print: print
20 input "dimension of search area";g: print
30 n=int(log(g)/log(2))+1
40 print "you are the captain of the destroyer uss computer"
50 print "an enemy sub has been causing you trouble.  your"
60 print "mission is to destroy it.  you have";n;"shots."
70 print "specify depth charge explosion point with a"
80 print "trio of numbers -- the first two are the"
90 print "surface coordinates; the third is the depth."
100 print : print "good luck !": print
110 a=int(g*rnd(1)) : b=int(g*rnd(1)) : c=int(g*rnd(1))
120 for d=1 to n : print : print "trial #";d; : input x,y,z
130 if abs(x-a)+abs(y-b)+abs(z-c)=0 then 300
140 gosub 500 : print : next d
200 print : print "you have been torpedoed!  abandon ship!"
210 print "the submarine was at";a;",";b;",";c : goto 400
300 print : print "b o o m ! ! you found it in";d;"tries!"
400 print : print: input "another game (y or n)";a$
410 if a$="y" then 100
420 print "ok.  hope you enjoyed yourself." : goto 600
500 print "sonar reports shot was ";
510 if y>b then print "north";
520 if y<b then print "south";
530 if x>a then print "east";
540 if x<a then print "west";
550 if y<>b or x<>a then print " and";
560 if z>c then print " too low."
570 if z<c then print " too high."
580 if z=c then print " depth ok."
590 return
600 end
