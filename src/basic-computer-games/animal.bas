10 print tab(32);"animal"
20 print tab(15);"creative computing  morristown, new jersey"
30 print: print: print
40 print "play 'guess the animal'"
45 print
50 print "think of an animal and the computer will try to guess it."
60 print
70 dim a$(200)
80 for i=0 to 3
90 read a$(i)
100 next i
110 n=val(a$(0))
120 rem          main control section
130 input "are you thinking of an animal";a$
140 if a$="list" then 600
150 if left$(a$,1)<>"y" then 120
160 k=1
170 gosub 390
180 if len(a$(k))=0 then 999
190 if left$(a$(k),2)="\q" then 170
200 print "is it a ";right$(a$(k),len(a$(k))-2);
210 input a$
220 a$=left$(a$,1)
230 if left$(a$,1)="y" then print "why not try another animal?": goto 120
240 input "the animal you were thinking of was a ";v$
250 print "please type in a question that would distinguish a"
260 print v$;" from a ";right$(a$(k),len(a$(k))-2)
270 input x$
280 print "for a ";v$;" the answer would be ";
290 input a$
300 a$=left$(a$,1): if a$<>"y" and a$<>"n" then 280
310 if a$="y" then b$="n"
320 if a$="n" then b$="y"
330 z1=val(a$(0))
340 a$(0)=str$(z1+2)
350 a$(z1)=a$(k)
360 a$(z1+1)="\a"+v$
370 a$(k)="\q"+x$+"\"+a$+str$(z1+1)+"\"+b$+str$(z1)+"\"
380 goto 120
390 rem     subroutine to print questions
400 q$=a$(k)
410 for z=3 to len(q$)
415 if mid$(q$,z,1)<>"\" then print mid$(q$,z,1);: next z
420 input c$
430 c$=left$(c$,1)
440 if c$<>"y" and c$<>"n" then 410
450 t$="\"+c$
455 for x=3 to len(q$)-1
460 if mid$(q$,x,2)=t$ then 480
470 next x
475 stop
480 for y=x+1 to len(q$)
490 if mid$(q$,y,1)="\" then 510
500 next y
505 stop
510 k=val(mid$(q$,x+2,y-x-2))
520 return
530 data "4","\qdoes it swim\y2\n3\","\afish","\abird"
600 print:print "animals i already know are:"
605 x=0
610 for i=1 to 200
620 if left$(a$(i),2)<>"\a" then 650
624 print tab(15*x);
630 for z=3 to len(a$(i))
640 if mid$(a$(i),z,1)<>"\" then print mid$(a$(i),z,1);: next z
645 x=x+1: if x=4 then x=0: print
650 next i
660 print
670 print
680 goto 120
999 end
