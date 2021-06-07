1 print tab(33);"diamond"
2 print tab(15);"creative computing  morristown, new jersey"
3 print:print:print
4 print "for a pretty diamond pattern,"
5 input "type in an odd number between 5 and 21";r:print
6 q=int(60/r):a$="cc"
8 for l=1 to q
10 x=1:y=r:z=2
20 for n=x to y step z
25 print tab((r-n)/2);
28 for m=1 to q
29 c=1
30 for a=1 to n
32 if c>len(a$) then print "!";:goto 50
34 print mid$(a$,c,1);
36 c=c+1
50 next a
53 if m=q then 60
55 print tab(r*m+(r-n)/2);
56 next m
60 print
70 next n
83 if x<>1 then 95
85 x=r-2:y=1:z=-2
90 goto 20
95 next l
99 end
