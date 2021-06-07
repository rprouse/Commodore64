1 print tab(30)"tennis match"
2 print tab(15)"creative computing, morristown, new jersey"
10 print:print:print
21 print "there are several options available to you as to position,"
22 print "placement of shot, and speed (type) of shot. the key that "
23 print "you will use is..."
24 print tab(5)"position(placement, too): l.backcourt(1);r.back-"
25 print "court(2); l. forecourt(3); r. forecourt(4)."
26 print tab(5)"speed (type) of shot: fast-slam(s);slowlob(l)."
27 print tab(3)"backhands and forehands will merely be assumed as you "
28 print "shoot from a certain section of the court."
29 print tab(5) "on serves, you cannot have placement options, but you"
30 print "will be able to alter the speed of it.  by the way, you"
31 print "will be allowed to serve first in all games."
32 print tab(10);"are you ready?... here we go!!!"
35 y=0
36 z=0
38 print
39 print
40 print "     serve!   type";
41 input a$: if a$<>"l" and a$<>"s" then print "'l' or 's'": goto 40
42 a=100*rnd (1)
43 if a$="l" then 52
44 c=6
45 d=51
46 if a<c then 50
47 if a<d then 70
48 print tab(10);" serve is bad"
49 goto 55
50 print tab(10);"let serve...take 2"
51 goto 40
52 c=4
53 d=66
54 goto 46
55 print tab(10);"serve again!!    type";
56 input b$: if b$<>"l" and b$<>"s" then print "'l' or 's'": goto 55
57 e=100*rnd(1)
58 if b$="l" then 67
59 g=5
60 h=41
61 if e<g then 65
62 if e<h then 70
63 print tab(10);"serve is bad... double fault!"
64 goto 130
65 print tab(10);"let serve... take 1"
66 goto 55
67 g=3
68 h=76
69 goto61
70 i=100 * rnd(1)
71 if i>6 then 74
72 print tab(10);"serve is good... ace!!"
73 goto 128
74 k=100*rnd (1)
75 if a$="l" then 81
76 if b$="l" then 81
77 n=61
78 if k<n then 85
79 print tab(10); " serve is good... can't return it!!"
80 goto 128
81 n=76
82 goto 78
85 print tab(10);"serve has been returned..."
86 print
87 o=int (4*rnd(1))+1
88 print tab(20);"what is your position?";
89 input q
90 if o+q=5 then 124
91 print tab(20);"what type of shot are you making";
92 input c$
93 print tab(20);"what part of the court are you aiming for";
94 input r
95 s=100*rnd(1)
96 if c$="l" then 99
97 if s<81 then 107
98 goto 100
99 if s<91 then 107
100 u=4*rnd(1)
101 print tab(30);"your return is bad..."
102 if u<2 then 105
103 print tab(33);"hit out-of-bounds"
104 goto 130
105 print tab(33);"hit into net"
106 goto 130
107 print tab(30);"your return is good!"
108 a1=int(4*rnd(1))
109 if r+a1=5 then 127
110 w=100*rnd(1)
111 if c$="l" then 112
112 if w<84 then 122
113 goto 115
114 if w<84 then 122
115 c1=4*rnd(1)
116 print tab(30);"computer's return is bad"
117 if b<2 then 120
118 print tab(33);"hit out-of-bounds"
119 goto 128
120 print tab(33);"hit into net"
121 goto 128
122 print tab(30);"computer's return is good!"
123 goto 86
124 print "    nice try-you were unable to reach that shot-court #"o
125 goto 130
127 print "    nice shot- the computer couldn't reach it"
128 y=y+1
129 goto 131
130 z=z+1
131 print:gosub 200
132 print tab(15);"score    "s$
134 if y>=4 and y>z+1 then 137
135 if z>=4 and z>y+1 then 139
136 goto 38
137 y1=y1+1
138 goto 140
139 z1=z1+1
140 print"--------------- game over ----------------"
141 print tab(15);"score-games      you...me"
142  print tab(32);y1;"   ";z1
143 if y1>=6 and y1>z1+1 then 146
144 if z1>=6 and z1>y1+1 then 149
145 goto 35
146 print
147 print "*****congratulations...you won*****"
148 goto 151
149 print
150 print "*****as predicted, the computer is again triumphant!*****"
151 print
152 print"   i'd like to play you again sometime, but right now, i"
153 print "have to rest.........bye!!!"
154 print
200 if y>=2 and z>=2 then 300
210 if y=4 or z=4 then s$="game": goto 400
220 if y=0 then y$="love"
230 if y=1 then y$="15 - "
240 if y=2 then y$="30 - "
245 if y=3 then y$="40 - "
250 if z=0 then z$="love"
255 if z=1 then z$="15"
260 if z=2 then zi="30"
265 if z=3 then z$="40"
270 s$=y$+z$:goto 400
300 if y=z then s$="duce":goto 400
310 if y=z+1 then s$="add in ": goto 400
320 if y=z-1 then si="add out": goto 400
330 if y=z+2 or z=y+2 then s$="game"
400 return
500 end
