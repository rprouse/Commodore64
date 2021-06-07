2 print tab(34);"life"
4 print tab(15);"creative computing  morristown, new jersey"
6 print: print: print
8 print "enter your pattern:"
9 x1=1: y1=1: x2=24: y2=70
10 dim a(24,70),b$(24)
20 c=1
30 input b$(c)
40 if b$(c)="done" then b$(c)="": goto 80
50 if left$(b$(c),1)="." then b$(c)=" "+right$(b$(c),len(b$(c))-1)
60 c=c+1
70 goto 30
80 c=c-1: l=0
90 for x=1 to c-1
100 if len(b$(x))>l then l=len(b$(x))
110 next x
120 x1=11-c/2
130 y1=33-l/2
140 for x=1 to c
150 for y=1 to len(b$(x))
160 if mid$(b$(x),y,1)<>" " then a(x1+x,y1+y)=1:p=p+1
170 next y
180 next x
200 print:print:print
210 print "generation:";g,"population:";p;: if i9 then print "invalid!";
215 x3=24:y3=70:x4=1: y4=1: p=0
220 g=g+1
225 for x=1 to x1-1: print: next x
230 for x=x1 to x2
240 print
250 for y=y1 to y2
253 if a(x,y)=2 then a(x,y)=0:goto 270
256 if a(x,y)=3 then a(x,y)=1:goto 261
260 if a(x,y)<>1 then 270
261 print tab(y);"*";
262 if x<x3 then x3=x
264 if x>x4 then x4=x
266 if y<y3 then y3=y
268 if y>y4 then y4=y
270 next y
290 next x
295 for x=x2+1 to 24: print: next x
299 x1=x3: x2=x4: y1=y3: y2=y4
301 if x1<3 then x1=3:i9=-1
303 if x2>22 then x2=22:i9=-1
305 if y1<3 then y1=3:i9=-1
307 if y2>68 then y2=68:i9=-1
309 p=0
500 for x=x1-1 to x2+1
510 for y=y1-1 to y2+1
520 c=0
530 for i=x-1 to x+1
540 for j=y-1 to y+1
550 if a(i,j)=1 or a(i,j)=2 then c=c+1
560 next j
570 next i
580 if a(x,y)=0 then 610
590 if c<3 or c>4 then a(x,y)=2: goto 600
595 p=p+1
600 goto 620
610 if c=3 then a(x,y)=3:p=p+1
620 next y
630 next x
635 x1=x1-1:y1=y1-1:x2=x2+1:y2=y2+1
640 goto 210
650 end
