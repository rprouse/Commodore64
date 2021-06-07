10 print tab(20);"word search puzzle"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
40 print:print:print
50 print "  this program is a word search puzzle generator!!"
60 print "the program takes a set of input strings, purges all"
70 print "non-alphabetic characters out of them, and incorporates"
80 print "them into a word search puzzle."
90 print
100 print "  in the course of making the puzzle, the machine may"
110 print "find that it can't put a particular word anywhere, and"
120 print "so will ask you if it should start the whole puzzle"
130 print "over. if you don't want it to start over, typing 'no'"
140  print "will throw away that particular word.  if this persists,"
150 print "try either giving less words or bigger puzzle dimensions!"
160 print:print
280 clear 3000
300 def fna(z)=int(rnd(1)*z+1)
310 input "how many columns does your printer have";tw
320 input "do you want a solution printout";x$
330 input "what is to be the width of the puzzle";w:md=w
340 if w*2<=tw then 345
343 print "that will not fit in";tw;" columns.":goto 330
345 if w<1 then 330
350 input "the length";l:if l>w then hd=l
355 if l<1 then 350
360 input "what is the maximum number of words in the puzzle";m
370 if m>=2 then 380
375 print "sorry; there must be at least 2 words.":goto 360
390 dim a$(l,w),w$(m)
400 dim w(m,3),dxy(8,2),dd(28)
380 print
410 print "now enter a heading that will be printed over the puzzle:"
420 print "(";tw;"characters maximum! )"
430 input xy$
440 print "ok . . . enter a word at each question mark."
450 print "to redo the previous word, type a hyphen (-)."
460 print "when you run out of words, type a period (.)."
470 for i=1 to m
480 input t$:if t$="-" theni=i-1:print "redo ";w$(i);". . .":goto 480
490 if t$="." then m=i-1:goto 660
500 if len(t$)=0 then print "input error; redo:":goto 480
510 j=1
520 te$=mid$(t$,j,1):if te$>="a" and te$<="z" then   570
525 if te$<"a" or te$>"z" then 530
527 t$=left$(t$,j-1)+chr$(asc(mid$(t$,j,1))+32)+right$(t$,len(t$)-j):goto570
530 if te$=t$ then t$="": goto 500
540 if j=len(t$) then t$=left$(t$,j-1):goto 580
550 if j=1 then t$=right$(t$,len(t$)-1):j=j-1:goto 570
560 t$=left$(t$,j-1)+right$(t$,len(t$)-j):j=j-1
570 j=j+1:if j<=len(t$) then 520
580 print "-";t$;"-"
600 if len(t$)<=md then 610
605 print "that's too long, i'm afraid.";
607 print " try another one:":goto 480
610 for iz=1 to i-1: if w$(iz)<>t$ then next:goto 630
620 print "you entered that one already. try another:":goto 480
630 w$(i)=t$
640 next i
650 print "that's it...";m;"words."
660 print "now let me ponder this......"
680 for i=1 to m-1
685 for j=i+1 to m
690 if len(w$(i)) < len(w$(j)) then hz$=w$(i):w$(i)=w$(j):w$(j)=hz$
700 next:next
710 for i=1 to 8:read dxy(i,1),dxy(i,2):next
720 for i=1 to 28:read dd(i):next
730 data 0,1,1,1,1,0,1,-1,0,-1,-1,-1,-1,0,-1,1
740 data 2,4,6,8,2,4,6,8,2,4,6,8,2,4,6,8,2,4,6,8,2,4,6,8,1,3,5,7
750 for i=1 to m
760 ln=len(w$(i))
770 nt=0
790 sd=dd(fna(28))
800 sx=fna(w):x1=sx+(ln-1)*dxy(sd,1):if x1<1 or x1>w then 790
810 sy=fna(l):x1=sy+(ln-1)*dxy(sd,2):if x1<1 or x1>l then 790
820 nt=nt+1:if nt<>w*l*2 then 850
830 print "couldn't fit  '";w$(i);"'  in the puzzle."
832 input "do you want me to start over";a$
834 if left$(a$,1)="y" then 750
836 w$(i)="":goto 950
850 j=sy:k=sx
860 for p=1 to ln
870 if len(a$(j,k)) and a$(j,k)<>mid$(w$(i),p,1) then 790
880 j=j+dxy(sd,2):k=k+dxy(sd,1):next p
900 j=sy:k=sx
910 for p=1 to ln:a$(j,k)=mid$(w$(i),p,1)
920 j=j+dxy(sd,2):k=k+dxy(sd,1):next
940 w(i,1)=sx:w(i,2)=sy:w(i,3)=sd
950 next i
970 for i=1 to l
975 for j=1 to w
980 if a$(i,j)="" then a$(i,j)=chr$(fna(26)+96)
990 next:next
1010 for i=1 to m-1:for j=i+1 to m
1020 if w$(i)<=w$(j) then 1030
1021 hz$=w$(i):w$(i)=w$(j):w$(j)=hz$
1025 for k=1 to 3:hz=w(i,k):w(i,k)=w(j,k):w(j,k)=hz:next k
1030 nextj:next i
1040 input "how many copies of this puzzle do you want";n
1050 print "for each copy, hit return to begin printing..."
1060 for c=1 to n:gosub 1070:next:goto 1230
1070 input a$:print
1080 t=(tw-2*w)/2:print
1090 print
1100 print tab((tw-len(xy$))/2);xy$
1110 print:print
1120 for j=1 to l:print tab(t);
1130 for k=1 to w:if a$(j,k)="." then print ". ";:goto 1140
1135 print chr$(asc(a$(j,k))-32);" ";
1140 next:print:next
1150 print:print
1160 print "find these hidden words in the above puzzle:"
1170 print
1180 for j=1 to m:if len(w$(j))=0 then 1210
1190 if pos(0) + len(w$(j)) > tw-2 then print
1200 print w$(j),
1210 next:print:print:print:print
1220 return
1230 if left$(x$,1)="y" or left$(x$,1)="y" then 1250
1240 end
1250 rem
1260 for i=1 to l:for j=1 to w:a$(i,j)=".":nextj:nexti
1270 for i=1 to m
1280 ln=len(w$(i)):j=w(i,2):k=w(i,1)
1290 for p=1 to ln
1300 a$(j,k)=mid$(w$(i),p,1)
1310 j=j+dxy(w(i,3),2):k=k+dxy(w(i,3),1):next p
1320 next i
1330 xy$="here is the answer key:"
1340 gosub 1070
1350 print:print
1360 end
