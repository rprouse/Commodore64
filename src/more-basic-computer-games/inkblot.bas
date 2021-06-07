100 print tab(26);"inkblot"
105 print tab(20);"creative computing"
110 print tab(18);"morristown, new jersey"
115 print:print:print
120 rem *** works by plotting ellipses and their mirror images
130 dim a (12,13),b$(36),a$(36)
140 rem *** choose from 5 to 12 ellipses
150 m=int(8*rnd(1))+5
160 rem *** create size, location and angle of m ellipses
170 for l = 1 to m
180 a(l,1) = 34*rnd(1)
190 a(l,2) = 80*rnd(1)
200 a(l,3) = (15*rnd(1)+2)^2
210 a(l,4) = (15*rnd(1)+2)^2
220 t=3.14159*rnd(1)
230 a(l,5) = cos(t)
240 a(l,6) = sin(t)
250 a(l,7) = a(l,5)*a(l,6)
260 a(l,5) = a(l,5)*a(l,5)
270 a(l,6) = a(l,6)*a(l,6)
280 a(l,8) = a(l,1)*a(l,1)*a(l,6)
290 a(l,9) = a(l,1)*a(l,1)*a(l,5)
300 a(l,10) = a(l,1)*a(l,7)
310 a(l,11) = -2*a(l,1)*a(l,6)
320 a(l,12) = -2*a(l,1)*a(l,5)
330 a(l,13) = a(l,6)/a(l,4)+a(l,5)/a(l,3)
340 next l
350 rem *** print top border; b$ contains 36 dollar signs
360 b$="$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
370 print b$;b$
380 print b$;b$
390 rem *** loop y is y-coordinate of plot; each time y loop
400 rem *** is executed, a line is printed
410 for y = 79.9 to 0 step -1.6
420 a$="$$                                  "
430 rem *** loop e checks the equation of each ellipse to see
440 rem *** if it intersects the line to be printed
450 for e=1 to m
460 y1=y-a(e,2)
470 y2=y1*y1
480 y3=y1*a(e,10)
490 y4=y1*a(e,7)
500 b=(a(e,12)+y4)/a(e,3)+(-y4+a(e,11))/a(e,4)
510 c=(y2*a(e,6)+a(e,9)-y3)/a(e,3)+(y2*a(e,5)+a(e,8)+y3)/a(e,4)-1
520 rem *** r is the radical in the standard quadratic formula
530 r=b*b-4*a(e,13)*c
540 if r<0 then 690
550 r=sqr(r)
560 rem *** find where the line intersects in the ellipse
570 r1=int(-(b+r)/2/a(e,13)+1)
580 if r1>34 then 690
590 r2=int((r-b)/2/a(e,13))
600 if r2<1 then 690
610 if r2<35 then 630
620 r2=34
630 if r1>0 then 660
640 r1=1
650 rem *** fill in the line where it crosses the ellipse
660 for j=r1+2 to r2+2
670 a$=left$(a$,j-1)+"$"+right$(a$,len(a$)-j)
680 next j
690 next e
700 rem *** print line
710 print a$;
720 for k=36 to 1 step -1
730 print mid$(a$,k,1);
740 next k
745 print
750 next y
760 rem *** print bottom border
770 print b$;b$
780 print b$;b$
790 end
