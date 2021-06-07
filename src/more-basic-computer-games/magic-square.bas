5 print tab(28);"magic square"
10 print tab(15);"creative computing  morristown new jersey"
12 dim a(9),b(9)
15 print
16 print
17 print
20 print "game of magic square"
21 print
25 print "players alternatley choose an integer (1 to 9)"
30 print "that has not been previously used and place it"
35 print "in any unfilled cell of a tic-tac-toe board."
40 print "the goal is to make the sum of each row, column,"
45 print "and diagonal equal to 15."
47 print
50 print "that player loses who first makes the sum of the"
55 print "three figures in any row, column, or diagonal"
60 print "something other than 15."
62 print
65 print "a tie game draws a magic square!!"
67 print
70 print "the computer will ask you on each move which"
75 print "cell you wish to occupy, and the number you wish"
80 print "like '3,7' if you wished to put a 7 in cell 3."
85 print
90 print "here are the cell numbers:"
92 print
93 print "1 2 3"
94 print "4 5 6"
95 print "7 8 9"
96 for i = 1 to 9
97 a(i)=0
98 b(i)=0
99 next i
100 m=0:w=0
103 print
104 print "input your move -- cell and number";
105 input i,n
110 if i<1 or i > 9 or n < 1 or n > 9 then 130
120 if a(i)=0 and b(n)=0 then 150
130 print "illegal move ... again"
135 goto 103
150 a(i)=n:b(n)=1:m=m+1
170 gosub 960
180 gosub 800
200 if w=0 then 230
210 print "sorry, you lose -- nice try."
211 goto 560
230 if m < 5 then 400
240 print "a tie game -- but we've drawn a magic square!"
250 goto 560
400 for q=1 to 9
410 if a(q)> 0 then 480
420 for r=1 to 9
430 if b(r)>0 then 470
435 a(q)=r
440 gosub 800
450 if w=0 then 500
460 q1=q:r1=r:w=0:a(q)=0
470 next r
480 next q
490 w=1:r=r1:q=q1:a(q)=r
500 b(r)=1
520 print "i move to cell ";q;" with a ";r
530 gosub 960
540 if w=0 then 103
550 print "i lose -- you win!!"
560 print
561 for i=1 to 15
562 print chr$(7);
564 next i
570 print "let's play again. . ."
575 goto 96
800 for x=1 to 8
810 on x goto 820,830,840,850,860,870,880,890
820 j=1:k=2:l=3:goto 900
830 k=4:l=7:goto 900
840 k=5:l=9:goto 900
850 j=4:l=6:goto 900
860 j=2:l=8:goto 900
870 j=3:l=7:goto 900
880 j=7:l=9:goto 900
890 j=7:k=8
900 if a(j)=0 or a(k)=0 or a(l)=0 then 930
920 if a(j)+a(k)+a(l) <> 15 then 940
930 next x
935 goto 950
940 w=1
950 return
960 print
965 print a(1),a(2),a(3)
970 print a(4),a(5),a(6)
975 print a(7),a(8),a(9)
980 print
990 return
999 end
