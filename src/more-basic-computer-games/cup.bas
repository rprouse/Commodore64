1 print tab(27);"cup"
2 print tab(20);"creative computing"
3 print tab(18);"morristown, new jersey"
4 print:print:print
10 dim s(30,60)
30 let l=int(60*rnd(1))+1
40 if l=60 or l=1 then 30
50 let g=int(10*rnd(1))+1
60 print "the cup is 30 lines down and ";l;" spaces over."
70 print "the pull of gravity is ";g;" lines/second/secdnd."
80 print "what is the push you would like to give the ball"
90 print "across the paper (in spaces/second)";
100 input t
110 print "the results may take anywhere between 30 and 90 seconds."
120 for s1=1 to 30:for s2=1 to 60:s(s1,s2)=0:next:next
130 let s(30,l)=s(30,l-1)=s(30,l+1)=s(29,l-1)=s(29,l+1)=1
140 for z=1 to sqr(60*g)/g step .01
150 let y=t*z*2
160 let x=g/2*z^2
170 if x>30.5 or x<.5 or y>60.5 or y<.5 then 300
180 if int(x)=29 and int(y)=l then 310
190 if int(x)+1=29 and int(y)+1=l then 310
200 if int(x)=29 and int(y)=l-1 then 310
210 if int(x)+1=29 and int(y)+1=l-1 then 310
220 if int(x)=29 and int(y)=l+1 then 330
230 if int(x)+1=29 and int(y)+1=l+1 then 330
240 let s(x,y)=2
250 for d=1 to 5
260 if y<6 then 290
270 let s(x,y-d)=0
280 next d
290 next z
300 goto 340
310 let w=1
320 goto 335
330 let w=2
335 let s(29,l)=2
337 goto 345
340 let w=0
345 let p$=" *."
360 let s(30,l)=1:s(30,l-1)=1:s(30,l+1)=1:
365 let s(29,l-1)=1:s(29,l+1)=1
370 for x=1 to 30
380 for x1=1 to 60
390 if s(x,x1)<>0 then 420
400 next x1
410 goto 500
420 for y=1 to 60
430 print mid$(p$,s(x,y)+1,1);
440 if x=29 or x=30 then 490
450 if y=60 or y=1 then 490
460 if y=1 or y=59 then 500
470 if s(x,y)=2 and s(x,y+1)=0 then 500
480 if s(x,y)=1 and s(x,y+1)=0 and s(x,y+2)=0 then 500
490 next y
500 print
510 next x
520 print
530 if w=1 then 570
540 if w=2 then 590
550 print "you missed; try again."
560 goto 60
570 print "right in!!!"
580 goto 600
590 print "you almost didn't make it, but it bounced in."
600 print "do you want to play again?"
610 input a$
620 if left$(a$,1)="y" then 30
630 end
