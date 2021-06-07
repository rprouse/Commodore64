2 print tab(33);"love"
4 print tab(15);"creative computing  morristown, new jersey"
6 print: print: print
20 print "a tribute to the great american artist, robert indiana."
30 print "his greatest work will be reproduced with a message of"
40 print "your choice up to 60 characters.  if you can't think of"
50 print "a message, simple type the word 'love'": print
60 input "your message, please";a$: l=len(a$)
70 dim t$(120): for i=1 to 10: print: next i
100 for j=0 to int(60/l)
110 for i=1 to l
120 t$(j*l+i)=mid$(a$,i,1)
130 next i: next j
140 c=0
200 a1=1: p=1: c=c+1: if c=37 then 999
205 print
210 read a: a1=a1+a: if p=1 then 300
240 for i=1 to a: print " ";: next i: p=1: goto 400
300 for i=a1-a to a1-1: print t$(i);: next i: p=0
400 if a1>60 then 200
410 goto 210
600 data 60,1,12,26,9,12,3,8,24,17,8,4,6,23,21,6,4,6,22,12,5,6,5
610 data 4,6,21,11,8,6,4,4,6,21,10,10,5,4,4,6,21,9,11,5,4
620 data 4,6,21,8,11,6,4,4,6,21,7,11,7,4,4,6,21,6,11,8,4
630 data 4,6,19,1,1,5,11,9,4,4,6,19,1,1,5,10,10,4,4,6,18,2,1,6,8,11,4
640 data 4,6,17,3,1,7,5,13,4,4,6,15,5,2,23,5,1,29,5,17,8
650 data 1,29,9,9,12,1,13,5,40,1,1,13,5,40,1,4,6,13,3,10,6,12,5,1
660 data 5,6,11,3,11,6,14,3,1,5,6,11,3,11,6,15,2,1
670 data 6,6,9,3,12,6,16,1,1,6,6,9,3,12,6,7,1,10
680 data 7,6,7,3,13,6,6,2,10,7,6,7,3,13,14,10,8,6,5,3,14,6,6,2,10
690 data 8,6,5,3,14,6,7,1,10,9,6,3,3,15,6,16,1,1
700 data 9,6,3,3,15,6,15,2,1,10,6,1,3,16,6,14,3,1,10,10,16,6,12,5,1
710 data 11,8,13,27,1,11,8,13,27,1,60
999 for i=1 to 10: print: next i: end
