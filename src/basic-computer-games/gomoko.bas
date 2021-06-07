2 print tab(33);"gomoko"
4 print tab(15);"creative computing  morristown, new jersey"
6 print:print:print
8 dim a(19,19)
10 print "welcome to the oriental game of gomoko."
20 print: print "the game is played on an n by n grid of a size"
30 print "that you specify.  during your play, you may cover one grid"
40 print "intersection with a marker. the object of the game is to get"
50 print "5 adjacent markers in a row -- horizontally, vertically, or"
60 print "diagonally.  on the board diagram, your moves are marked"
70 print "with a '1' and the computer moves with a '2'."
80 print: print "the computer does not keep track of who has won."
90 print "to end the game, type -1,-1 for your move.": print
110 print "what is your board size (min 7/ max 19)";: input n
115 if n>6 then 117
116 goto 120
117 if n<20 then 210
120 print "i said, the minimum is 7, the maximum is 19.": goto 110
210 for i=1 to n:for j=1 to n: a(i,j)=0: next j: next i
300 print: print "we alternate moves.  you go first...": print
310 print "your play (i,j)";: input i,j
315 print
320 if i=-1 then 980
330 x=i: y=j: gosub 910: if l=1 then 410
340 print "illegal move.  try again...": goto 310
410 if a(i,j)=0 then 440
420 print "square occupied.  try again...": goto 310
440 a(i,j)=1
500 rem *** computer tries an intelligent move ***
510 for e=-1 to 1: for f=-1 to 1: if e+f-e*f=0 then 590
540 x=i+f: y=j+f: gosub 910
570 if l=0 then 590
580 if a(x,y)=1 then 710
590 next f: next e
600 rem *** computer tries a random move ***
610 x=int(n*rnd(1)+1): y=int(n*rnd(1)+1): gosub 910: if l=0 then 610
650 if a(x,y)<>0 then 610
660 a(x,y)=2: gosub 810: goto 310
710 x=i-e: y=j-f: gosub 910
750 if l=0 then 610
760 goto 650
800 rem *** print the board ***
810 for i=1 to n: for j=1 to n: print a(i,j);
840 next j: print: next i: print: return
910 l=1: if x<1 then 970
920 if x>n then 970
930 if y<1 then 970
940 if y>n then 970
950 return
970 l=0: return
980 print: print "thanks for the game!!"
985 print "play again (1 for yes, 0 for no)";: input q
990 if q=1 then 110
999 end
