2 print tab(33);"synonym"
4 print tab(15);"creative computing  morristown, new jersey"
6 print: print: print
10 dim r$(5),w$(10),l(30),r(30)
20 r$(1)="right": r$(2)="correct": r$(3)="fine": r$(4)="good!"
30 r$(5)="check"
70 c=0
90 print "a synonym of a word means another word in the english"
100 print "language which has the same or very nearly the same";
110 print " meaning."
130 print "i choose a word -- you type a synonym."
140 print "if you can't think of a synonym, type the word 'help'"
145 print "and i will tell you a synonym.": print
150 restore: c=c+1: read n
160 if c>n then 420
170 n1=int(rnd(1)*n+1)
174 if r(n1)=1 then 170
176 r(n1)=1
180 for i=1 to n1
190 read n2
200 for j=1 to n2
210 read w$(j)
220 next j
230 next i
232 for j=1 to n2: l(j)=j: next j
235 l(0)=n2: g=1: print
237 l(g)=l(l(0)): l(0)=n2-1: print
240 print "     what is a synonym of ";w$(g);: input a$
250 if a$="help" then 340
260 for k=1 to n2
270 if g=k then 290
280 if a$=w$(k) then 320
290 next k
300 print "     try again.": goto 240
320 print r$(int(rnd(1)*5+1)): goto 150
340 g1=int(rnd(1)*l(0)+1)
360 print "**** a synonym of ";w$(g);" is ";w$(l(g1));".": print
370 l(g1)=l(l(0)): l(0)=l(0)-1: goto 240
420 print: print "synonym drill completed.": goto 999
500 data 10
510 data 5,"first","start","beginning","onset","initial"
520 data 5,"similar","alike","same","like","resembling"
530 data 5,"model","pattern","prototype","standard","criterion"
540 data 5,"small","insignificant","little","tiny","minute"
550 data 6,"stop","halt","stay","arrest","check","standstill"
560 data 6,"house","dwelling","residence","domicile","lodging"
565 data "habitation"
570 data 7,"pit","hole","hollow","well","gulf","chasm","abyss"
580 data 7,"push","shove","thrust","prod","poke","butt","press"
590 data 6,"red","rouge","scarlet","crimson","flame","ruby"
600 data 7,"pain","suffering","hurt","misery","distress","ache"
605 data "discomfort"
999 end
