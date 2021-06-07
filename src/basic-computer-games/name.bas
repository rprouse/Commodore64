1 print tab(34);"name"
2 print tab(15);"creative computing  morristown, new jersey"
3 print: print: print
5 dim b$(40)
10 print "hello.": print "my name is creative computer."
20 print "what's your name (first and last";: input a$: l=len(a$)
30 print: print "thank you, ";
40 for i=1 to l: b$(i)=mid$(a$,i,1): next i
50 for i=l to 1 step -1: print b$(i);: next i
60 print ".": print "oops!  i guess i got it backwards.  a smart"
70 print "computer like me shouldn't make a mistake like that!": print
80 print "but i just noticed your letters are out of order."
90 print "let's put them in order like this: ";
100 for j=2 to l: i=j-1: t$=b$(j)
110 if t$>b$(i) then 130
120 b$(i+1)=b$(i): i=i-1: if i>0 then 110
130 b$(i+1)=t$: next j
140 for i=1 to l: print b$(i);: next i: print: print
150 print "don't you like that better";: input d$
160 if d$="yes" then 180
170 print: print "i'm sorry you don't like it that way.": goto 200
180 print: print "i knew you'd agree!!"
200 print: print "i really enjoyed meeting you ";a$;"."
210 print "have a nice day!"
999 end
