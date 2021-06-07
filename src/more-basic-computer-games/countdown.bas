1 print tab(24);"count down"
2 print tab(20);"creative computing"
3 print tab(18);"morristown, new jersey"
4 print:print:print
5 a=int(rnd(1)*10)
6 t=0
7 n=0
15 print "you have activated the self-destruct mechanism ";
20 print "in this school."
25 print "if you wish, you may stop the mechanism."
27 print "to do so, just type in the correct number,"
35 print "which will stop the count-down."
37 print "please hurry!! there is no time to waste!!!!!!!"
44 print "what'll it be";:input x:print
45 if t=4 then 98
47 goto 200
50 rem
75 print "your number does not compute!!"
80 print "please try again!!!!":t=t+1
81 if t=2 then 96
82 if t=3 then 105
83 goto 44
85 print "correct!!!!":let n=5
90 print "the countdoun has stopped."
92 print "you haved saved the school!"
93 print "(have you seen your shrink lately ?)"
94 let t=10
95 goto 1000
96 print "time grows short, please hurry!!!!!!!!"
97 goto 44
98 print:print:print:print
99 print tab(32);"too late"
100 print:print:print:print tab(32);"\ **** /"
101 print tab(31);"-- boom --"
102 print tab(32);"/ **** \"
103 print:print:print
104 goto 1000
105 print "hurry, the count-down is approaching zero!!!!!!!!!"
110 goto 44
200 if x<a then print "too small!!!!!":goto 50
210 if x>a then print "too big!!!!!":goto 50
225 if x=a then 85
1000 end
