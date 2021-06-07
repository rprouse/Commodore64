1 print tab(33);"guess"
2 print tab(15);"creative computing  morristown, new jersey"
3 print:print:print
4 print "this is a number guessing game. i'll think"
5 print "of a number between 1 and any limit you want."
6 print "then you have to guess what it is."
7 print
8 print "what limit do you want";
9 input l
10 print
11 l1=int(log(l)/log(2))+1
12 print "i'm thinking of a number between 1 and";l
13 g=1
14 print "now you try to guess what it is."
15 m=int(l*rnd(1)+1)
20 input n
21 if n>0 then 25
22 gosub 70
23 goto 1
25 if n=m then 50
30 g=g+1
31 if n>m then 40
32 print "too low. try a bigger answer."
33 goto 20
40 print "too high. try a smaller answer."
42 goto 20
50 print "that's it! you got it in";g;"tries."
52 if g<l1 then 58
54 if g=l1 then 60
56 print "you should have been able to get it in only";l1
57 goto 65
58 print "very ";
60 print "good."
65 gosub 70
66 goto 12
70 for h=1 to 5
71 print
72 next h
73 return
99 end
