1 print tab(34)"keno"
2 print tab(15)" creative computing,morristown, new jersey"
3 dim n(21),m(23),a(8)
9 print:print:print
10 print"keno is played in many casinos in las vegas."
13 print "play keno by computer.  one variation of the game, utilizes"
16 print"the random number generator."
19 print
20 print"the player chooses 8 different numbers from 1 to 80"
23 print"inclusive, and bets $1.20.  the computer will select"
26 print"20 numbers at random and will eliminate duplicates which"
29 print"may occur .  another number  will be inserted in its place"
32 print"so that the computer will output 20 different numbers."
35 print:print
38 print:print:print "here we go!!!"
40 print"the computer will output a ? mark.  type a number from "
43 print"1 to 80, inclusive, and press the return key. repeat this"
46 print"process until the ? mark is no longer shown."
48 for i=1 to 8
50 input a(i)
51 if a(i)>80 then 56
53 if a(i)=0 then 56
54 if a(i)<0 then 56
55 goto 57
56 print"type a number from 1 to 80 , inclusive, please.": goto 50
57 next i
58 c=0:for k=1 to7
59 for j=k to 7
60 x=a(k):y=a(j+1)
61 if x<>y then 72
62 c=c+1
63 print"a duplicate number has been detected in your input."
64 print"type another number, please.":input y
65 if y=0 then 70
66 if y>80 then 70
67 if y<0 then 70
68 a(j+1)=y
69 goto 61
70 print "type a number from 1 to 80, inclusive, please."
71 goto 64
72 next j
73 next k :print:print
75 if c=0 then 88
76 goto 58
88 print" the computer will select 20 numbers at random.  the bell "
91 print"tone indicates it is in the process of selecting the numbers."
100 for l=1 to 20
103 n(l)=int(80*rnd(80)+1)
106 m(l)=n(l)
109 next l
110 l=21
112 for k=1 to 20
115 for j=k to l-1
118 x=m(k)
121 y=m(j+1)
124 if x<>y then 139
130 m(j+1)=int(80+rnd(1)+1)
133 y=m(j+1)
136 goto 124
139 print chr$(7);
142 next j
145 next k
147 print:print
148 print "your numbers are:"
151 for i=1 to 8
154 print a(i);
157 next i: print:print:print
160 print" the computer has selected the following  numbers:"
163 for l=1 to 20
167 print m(l);
170 next l:print:print
173 print"the program will compare your numbers with the "
176 print"numbers the computer has selected."
179 print:print
182 print"listen for the bell tone--- each ring indicates another"
185 print "correct guess by you.":
188 print "you have guessed the followed numbers:"
191 g=0
194 i=1
197 for j=1 to 20
200 x=a(i)
203 y=m(j)
206 if x=y then 213
209 next j
210 goto 225
213 print chr$(7);
216 for v1=1 to 3976:next v1
219 print a(i);
222 g=g+1
225 i=i+1:print:if i<>8 then 197
228 if g<5 then 242
231 if g=5 then 261
234 if g=6 then 267
237 if g=7 then 273
240 if g=8 then 279
242 print "you caught";g;"numbers out of 8--"
243 print "not enough correct guesses-- 'so solly', no payoff."
245 print:print
246 print "do you want to play keno again?"
249 print "type 'yes' or 'no'"
250 c=0
251 input x$
252 if x$="yes" then 38
253 if x$="no" then 299
254 c=c+1
255 if c=3 then 299
256 print "type 'yes' or 'no'"
257 goto 251
258 if x$="no" then 299
259 print "type yes or no please!!"
261 print "you  caught";g;"numbers out of 8--you win $10.00"
264 print:print:goto 246
267 print "you caught";g;"numbers out of 8--you win $100.00"
270 print:print:goto 246
273 print "you caught ";g;"numbers out of 8--you win $2200.00"
276 print:print:goto246
279 print "you caught ";g;"numbers out of 8--you win $25000.00"
282 print "8 out of 8 does not occur too often, lucky."
285 print:print:goto 246
299 print "that's all for now.  play keno again, be seeing you."
300 end
