1 print tab(26);"geowar"
2 print tab(20);"creative computing"
3 print tab(18);"morristown, new jersey"
4 print:print:print
5 print "do you want a description of the game";
6 input i$
7 if i$="no" then 46
8 print
9 print "     the first quadrant of a regular coordinate graph will";
10 print " serve as"
11 print "the battlefield.  five enemy installations are located";
12 print " within a"
13 print "30 by 30 unit area.  no target is inside the 10 by 10 ";
14 print "unit area"
15 print "adjacent to the origin, as this is the location of our ";
16 print "base. when"
17 print "the machine asks for the degree of the shot, respond ";
18 print "with a number"
19 print "between 1 and 90."
20 print
21 print tab(51),"scare**********"
22 print "    1. a direct hit is a hit within 1 degree of";
23 print tab(51),"*             *"
24 print "        the target.",tab(51),"*  hit******  *"
25 print "    2. a hit must pass between the first set of";
26 print tab(51),"*  *       *  *"
27 print "         integral points nw and se of the target.";
28 print tab(51),"*  *   d   *  *"
29 print "    3. a scare must pass between the next set of";
30 print tab(51), "*  *       *  *"
31 print "         integral points nw and se of the target,";
32 print tab(51),"*  ******hit  *"
33 print "         and causes the enemy to relocate a ";
34 print tab(51),"*             *"
35 print "         maximum of 1 unit in any direction.";
36 print tab(51),"**********scare"
37 print
38 print
39 print "    missles have infinite range and may hit more than ";
40 print "one target."
41 print "a missile that nearly misses an installation (a scare) ";
42 print "will be"
43 print "immediately shot down.  any hits before this time will ";
44 print "not be counted"
45 print "unless a direct hit was made."
46 print
47 print
48 print "ready to go";
49 input r$
50 if r$="no" then 192
51 print "good luck!"
52 print
53 dim c(10),h(20),d(10),s(20),f(5)
54 def fnv(v1)=int((180/3.14159)*atn(v1)+.5)
55 x=250
56 x1=rnd(1)
57 g2=0
58 s2=0
59 d2=0
60 h2=0
61 for k=1 to 10
62 gosub 154
63 if int(k/2)<>k/2 then 70
64 if c(k-1)>10 then 70
65 if c(k)>10 then 70
66 for l=k-1 to k
67 gosub 154
68 next l
69 goto 63
70 next k
71 s=0
72 for l=1 to 5
73 d(l)=fnv(c(2*l)/c(2*l-1))
74 next l
75 a=2
76 l1=10
77 t5=5
78 d5=0
79 h5=0
80 gosub 147
81 print
82 print "enter degree of shot"
83 d1=0
84 h1=0
85 for q=1 to 5
86 f(q)=20
87 next q
88 input d
89 if d>=90 then 81
90 on sgn(d)+2 goto 177,192
91 s=s+1
92 for a=2 to 10 step 2
93 if d>s(a) then 103
94 if d<s(a-1) then 103
95 if d>h(a) then 105
96 if d<h(a-1) then 105
97 if d>d(a/2)+1 then 101
98 if d<d(a/2)-1 then 101
99 d1=d1+1
100 goto 102
101 h1=h1+1
102 f(d1+h1)=a
103 next a
104 goto 108
105 if d1>0 then 110
106 gosub 138
107 goto 81
108 if d1+h1<>0 then 112
109 if t5=1 then 159
110 print "no luck -- try again."
111 goto 81
112 if d1>0 then 118
113 if h1>1 then 116
114 print "**congratulations**  a hit."
115 goto 124
116 print "**congratulations**";h1;"hits."
117 goto 124
118 print "****bulls eye**** ";
119 if d1>1 then 123
120 if h1>0 then 123
121 print " a direct hit!"
122 goto 124
123 print d1+h1;" hits -- a direct hit on";d1;" of them!"
124 t5=t5-(d1+h1)
125 d5=d5+d1
126 h5=h5+h1
127 if t5=0 then 167
128 for j=1 to h1+d1
129 z=f(j)
130 d(z/2)=0
131 h(z)=0
132 h(z-1)=0
133 s(z)=0
134 s(z-1)=0
135 next j
136 print 5-t5;" down --";t5;" to go."
137 goto 81
138 print "a near hit.  enemy has relocated."
139 for r=1 to 2
140 x2=int(rnd(1)*100)
141 if abs(c(a-(r-1))-x2)>1 then 140
142 if c(a-(r-1))<=2 then 140
143 c(a-(r-1))=x2
144 next r
145 d(a/2)=fnv(c(a)/c(a-1))
146 l1=a
147 for i=a to l1 step 2
148 h(i-1)=fnv((c(i)-1)/(c(i-1)+1))
149 h(i)=fnv((c(i)+1)/(c(i-1)-1))
150 s(i-1)=fnv((c(i)-2)/(c(i-1)+2))
151 s(i)=fnv((c(i)+2)/(c(i-1)-2))
152 next i
153 return
154 r=int(rnd(1)*100)
155 if r>30 then 154
156 if r<3 then 154
157 c(k)=r
158 return
159 for z1=1 to 5
160 if d(z1)>1 then 162
161 next z1
162 if d<d(z1) then 165
163 print "too high -- try again."
164 goto 81
165 print "too low -- try again."
166 goto 81
167 print
168 print "game totals:";h5;" hits and";d5;" direct hits on";s;" shots."
170 print "ready for a new game";
171 g2=g2+1
172 s2=s2+s
173 d2=d2+d5
174 h2=h2+h5
175 input g$
176 if g$="no" then 184
177 print
178 print
179 print
180 print "five new installations have been built at different ";
181 print "locations."
182 print "good luck!"
183 goto 61
184 print
185 print
186 print "totals for";g2;" games:";h2;" hits and";d2
187 print " direct hits on";s2;" shots."
188 print "an average of";s2/(d2+h2);" shots per target."
192 end
