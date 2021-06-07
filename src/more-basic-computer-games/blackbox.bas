50 dim b(9,9)
100 print tab(25);"blackbox"
110 print tab(20);"creative computing"
120 print tab(18);"morristown, new jersey"
130 print:print:print
140 def fnr(z)=int(8*rnd(1)+1)
150 print "no. of atoms";: input n
160 for j=0 to 9: for i=0 to 9: b(i,j)=0: next i,j
170 for i=1 to n
180 x=fnr(1): y=fnr(1): if b(x,y)<>0 then 180
190 b(x,y)=1: next i
200 s=0:c=0
210 print "ray";: input r: if r<1 then 480
220 on (r-1)/8+1 goto 240,250,260,270
230 print "error": goto 210
240 x=0: y=r: u=1: v=0: goto 280
250 x=r-8: y=9: u=0: v=-1: goto 280
260 x=9: y=25-r: u=-1: v=0: goto 280
270 x=33-r: y=0: u=0: v=1
280 x1=x+u: y1=y+v
290 if u=0 then x2=x1-1: x3=x1+1: y2=y1: y3=y1: goto 310
300 y2=y1-1: y3=y1+1: x2=x1: x3=x1
310 on 8*b(x1,y1)+b(x2,y2)+2*b(x3,y3)+1 goto 330,340,350,340
320 print "absorbed":s=s+1: goto 210
330 x=x1: y=y1: goto 380
340 z=1: goto 360
350 z=-1
360 if u=0 then u=z: v=0: goto 380
370 u=0: v=z
380 on (x+15)/8 goto 420,400,430
390 stop
400 on (y+15)/8 goto 440,280,450
410 stop
420 z=y: goto 460
430 z=25-y: goto 460
440 z=33-x: goto 460
450 z=8+x
460 if z=r then print "reflected":s=s+1: goto 210
470 print "to";z:s=s+2: goto 210
480 print "now tell me, where do you think the atoms are?"
490 print "(in row,column format please.)"
500 for q=1 to n
510 print "atom # ";q;
520 input i,j
530 if b(j,i)<>1 then s=s+5:goto 540
532 b(j,i)=2
535 c=c+1
540 next q
550 print: for j=1 to 8: for i=1 to 8
560 if b(i,j)=0 then print " .";: goto 580
570 print " *";
580 next i: print: next j: print:
590 print " you guessed ";c;" out of ";n;" atoms correctly!!"
600 print " your score for this round was ";s;" points."
610 input " care to try again";a$
620 if left$(a$,1)="y" then print:goto 150
