10 print tab(32);"reverse"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
100 print "reverse -- a game of skill": print
130 dim a(20)
140 rem *** n=number of numbers
150 n=9
160 print "do you want the rules";
170 input a$
180 if a$="no" then 210
190 gosub 710
200 rem *** make a random list a(1) to a(n)
210 a(1)=int((n-1)*rnd(1)+2)
220 for k=2 to n
230 a(k)=int(n*rnd(1)+1)
240 for j=1 to k-1
250 if a(k)=a(j) then 230
260 next j:next k
280 rem *** print original list and start game
290 print: print "here we go ... the list is:"
310 t=0
320 gosub 610
330 print "how many shall i reverse";
340 input r
350 if r=0 then 520
360 if r<=n then 390
370 print "oops! too many! i can reverse at most";n:goto 330
390 t=t+1
400 rem *** reverse r numbers and print new list
410 for k=1 to int(r/2)
420 z=a(k)
430 a(k)=a(r-k+1)
440 a(r-k+1)=z
450 next k
460 gosub 610
470 rem *** check for a win
480 for k=1 to n
490 if a(k)<>k then 330
500 next k
510 print "you won it in";t;"moves!!!":print
520 print
530 print "try again (yes or no)";
540 input a$
550 if a$="yes" then 210
560 print: print "o.k. hope you had fun!!":goto 999
600 rem *** subroutine to print list
610 print:for k=1 to n:print a(k);:next k
650 print:print:return
700 rem *** subroutine to print the rules
710 print:print "this is the game of 'reverse'.  to win, all you have"
720 print "to do is arrange a list of numbers (1 through";n;")"
730 print "in numerical order from left to right.  to move, you"
740 print "tell me how many numbers (counting from the left) to"
750 print "reverse.  for example, if the current list is:"
760 print:print "2 3 4 5 1 6 7 8 9"
770 print:print "and you reverse 4, the result will be:"
780 print:print "5 4 3 2 1 6 7 8 9"
790 print:print "now if you reverse 5, you win!"
800 print:print "1 2 3 4 5 6 7 8 9":print
810 print "no doubt you will like this game, but"
820 print "if you want to quit, reverse 0 (zero).":print: return
999 end
