2 print tab(33);"word"
3 print tab(15);"creative computing  morristown, new jersey"
4 print: print: print
5 dim s(7),a(7),l(7),d(7),p(7)
10 print "i am thinking of a word -- you guess it.  i will give you"
15 print "clues to help you get it.  good luck!!": print: print
20 rem
30 print: print: print "you are starting a new game..."
35 restore
40 read n
50 c=int(rnd(1)*n+1)
60 for i=1 to c
70 read s$
80 next i
90 g=0
95 s(0)=len(s$)
100 for i=1 to len(s$): s(i)=asc(mid$(s$,i,1)): next i
110 for i=1 to 5
120 a(i)=45
130 next i
140 for j=1 to 5
144 p(j)=0
146 next j
150 print "guess a five letter word";
160 input l$
170 g=g+1
172 if s$=l$ then 500
173 for i=1 to 7: p(i)=0: next i
175 l(0)=len(l$)
180 for i=1 to len(l$): l(i)=asc(mid$(l$,i,1)): next i
190 if l(1)=63 then 300
200 if l(0)<>5 then 400
205 m=0: q=1
210 for i=1 to 5
220 for j=1 to 5
230 if s(i)<>l(j) then 260
231 p(q)=l(j)
232 q=q+1
233 if i<>j then 250
240 a(j)=l(j)
250 m=m+1
260 next j
265 next i
270 a(0)=5
272 p(0)=m
275 a$="": for i=1 to a(0): a$=a$+chr$(a(i)): next i
277 p$="": for i=1 to p(0): p$=p$+chr$(p(i)): next i
280 print "there were";m;"matches and the common letters were...";p$
285 print "from the exact letter matches, you know................";a$
286 if a$=s$ then 500
287 if m>1 then 289
288 print: print "if you give up, type '?' for your next guess."
289 print
290 goto 150
300 s$="": for i=1 to 7: s$=s$+chr$(s(i)): next i
310 print "the secret word is ";s$: print
320 goto 30
400 print "you must guess a 5 letter word.  start again."
410 print: g=g-1: goto 150
500 print "you have guessed the word.  it took";g;"guesses!": print
510 input "want to play again";q$
520 if q$="yes" then 30
530 data 12,"dinky","smoke","water","grass","train","might","first"
540 data "candy","champ","would","clump","dopey"
999 end
