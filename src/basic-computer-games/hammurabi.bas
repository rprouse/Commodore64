10 print tab(32);"hamurabi"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
80 print "try your hand at governing ancient sumeria"
90 print "for a ten-year term of office.":print
95 d1=0: p1=0
100 z=0: p=95:s=2800: h=3000: e=h-s
110 y=3: a=h/y: i=5: q=1
210 d=0
215 print:print:print "hamurabi:  i beg to report to you,": z=z+1
217 print "in year";z;",";d;"people starved,";i;"came to the city,"
218 p=p+i
227 if q>0 then 230
228 p=int(p/2)
229 print "a horrible plague struck!  half the people died."
230 print "population is now";p
232 print "the city now owns ";a;"acres."
235 print "you harvested";y;"bushels per acre."
250 print "the rats ate";e;"bushels."
260 print "you now have ";s;"bushels in store.": print
270 if z=11 then 860
310 c=int(10*rnd(1)): y=c+17
312 print "land is trading at";y;"bushels per acre."
320 print "how many acres do you wish to buy";
321 input q: if q<0 then 850
322 if y*q<=s then 330
323 gosub 710
324 goto 320
330 if q=0 then 340
331 a=a+q: s=s-y*q: c=0
334 goto 400
340 print "how many acres do you wish to sell";
341 input q: if q<0 then 850
342 if q<a then 350
343 gosub 720
344 goto 340
350 a=a-q: s=s+y*q: c=0
400 print
410 print "how many bushels do you wish to feed your people";
411 input q
412 if q<0 then 850
418 rem *** trying to use more grain than is in silos?
420 if q<=s then 430
421 gosub 710
422 goto 410
430 s=s-q: c=1: print
440 print "how many acres do you wish to plant with seed";
441 input d: if d=0 then 511
442 if d<0 then 850
444 rem *** trying to plant more acres than you own?
445 if d<=a then 450
446 gosub 720
447 goto 440
449 rem *** enough grain for seed?
450 if int(d/2)<=s then 455
452 gosub 710
453 goto 440
454 rem *** enough people to tend the crops?
455 if d<10*p then 510
460 print "but you have only";p;"people to tend the fields!  now then,"
470 goto 440
510 s=s-int(d/2)
511 gosub 800
512 rem *** a bountiful harvest!
515 y=c: h=d*y: e=0
521 gosub 800
522 if int(c/2)<>c/2 then 530
523 rem *** rats are running wild!!
525 e=int(s/c)
530 s=s-e+h
531 gosub 800
532 rem *** let's have some babies
533 i=int(c*(20*a+s)/p/100+1)
539 rem *** how many people had full tummies?
540 c=int(q/20)
541 rem *** horros, a 15% chance of plague
542 q=int(10*(2*rnd(1)-.3))
550 if p<c then 210
551 rem *** starve enough for impeachment?
552 d=p-c: if d>.45*p then 560
553 p1=((z-1)*p1+d*100/p)/z
555 p=c: d1=d1+d: goto 215
560 print: print "you starved";d;"people in one year!!!"
565 print "due to this extreme mismanagement you have not only"
566 print "been impeached and thrown out of office but you have"
567 print "also been declared national fink!!!!": goto 990
710 print "hamurabi:  think again.  you have only"
711 print s;"bushels of grain.  now then,"
712 return
720 print "hamurabi:  think again.  you own only";a;"acres.  now then,"
730 return
800 c=int(rnd(1)*5)+1
801 return
850 print: print "hamurabi:  i cannot do what you wish."
855 print "get yourself another steward!!!!!"
857 goto 990
860 print "in your 10-year term of office,";p1;"percent of the"
862 print "population starved per year on the average, i.e. a total of"
865 print d1;"people died!!": l=a/p
870 print "you started with 10 acres per person and ended with"
875 print l;"acres per person.": print
880 if p1>33 then 565
885 if l<7 then 565
890 if p1>10 then 940
892 if l<9 then 940
895 if p1>3 then 960
896 if l<10 then 960
900 print "a fantastic performance!!!  charlemange, disraeli, and"
905 print "jefferson combined could not have done better!":goto 990
940 print "your heavy-handed performance smacks of nero and ivan iv."
945 print "the people (remianing) find you an unpleasant ruler, and,"
950 print "frankly, hate your guts!!":goto 990
960 print "your performance could have been somewhat better, but"
965 print "really wasn't too bad at all. ";int(p*.8*rnd(1));"people"
970 print "would dearly like to see you assassinated but we all have our"
975 print "trivial problems."
990 print: for n=1 to 10: print chr$(7);: next n
995 print "so long for now.": print
999 end
