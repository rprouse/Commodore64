1 print tab(25);"literature quiz"
2 print tab(15);"creative computing  morristown, new jersey"
3 print:print:print
5 r=0
10 print "test your knowledge of children's literature."
12 print: print "this is a multiple-choice quiz."
13 print "type a 1, 2, 3, or 4 after the question mark."
15 print: print "good luck!": print: print
40 print "in pinocchio, what was the name of the cat"
42 print "1)tigger, 2)cicero, 3)figaro, 4)guipetto";
43 input a: if a=3 then 46
44 print "sorry...figaro was his name.": goto 50
46 print "very good!  here's another."
47 r=r+1
50 print: print
51 print "from whose garden did bugs bunny steal the carrots?"
52 print "1)mr. nixon's, 2)elmer fudd's, 3)clem judd's, 4)stromboli's";
53 input a: if a=2 then 56
54 print "too bad...it was elmer fudd's garden.": goto 60
56 print "pretty good!"
57 r=r+1
60 print: print
61 print "in the wizard of os, dorothy's dog was named"
62 print "1)cicero, 2)trixia, 3)king, 4)toto";
63 input a: if a=4 then 66
64 print "back to the books,...toto was his name.": goto 70
66 print "yea!  you're a real literature giant."
67 r=r+1
70 print:print
71 print "who was the fair maiden who ate the poison apple"
72 print "1)sleeping beauty, 2)cinderella, 3)snow white, 4)wendy";
73 input a: if a=3 then 76
74 print "oh, come on now...it was snow white."
75 goto 80
76 print "good memory!"
77 r=r+1
80 print:print
85 if r=4 then 100
90 if r<2 then 200
92 print "not bad, but you might spend a little more time"
94 print "reading the nursery greats."
96 stop
100 print "wow!  that's super!  you really know your nursery"
110 print "your next quiz will be on 2nd century chinese"
120 print "literature (ha, ha, ha)"
130 stop
200 print "ugh.  that was definitely not too swift.  back to"
205 print "nursery school for you, my friend."
999 end
