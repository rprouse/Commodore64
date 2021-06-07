10 print tab(32);"calendar"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
100 rem     values for 1979 - see notes
110 dim m(12)
120 for i=1 to 6: print chr$(10);: next i
130 d=-1: rem 1979 starts on monday (0=sun, -1=mon, -2=tues...)
140 s=0
150 rem     read days of each month
160 for n=0 to 12: read m(n): next n
170 rem
180 for n=1 to 12
190 print: print: s=s+m(n-1)
200 print "**";s;tab(7);
210 for i=1 to 18: print "*";: next i
220 on n goto 230,240,250,260,270,280,290,300,310,320,330,340
230 print " january ";: goto 350
240 print " february";: goto 350
250 print "  march  ";: goto 350
260 print "  april  ";: goto 350
270 print "   may   ";: goto 350
280 print "   june  ";: goto 350
290 print "   july  ";: goto 350
300 print "  august ";: goto 350
310 print "september";: goto 350
320 print " october ";: goto 350
330 print " november";: goto 350
340 print " december";
350 for i=1 to 18: print "*";: next i
360 print 365-s;"**";
370 rem   366-s;     on leap years
380 print chr$(10): print "     s       m       t       w";
390 print "       t       f       s"
400 print
410 for i=1 to 59: print "*";: next i
420 rem
430 for w=1 to 6
440 print chr$(10)
450 print tab(4)
460 rem
470 for g=1 to 7
480 d=d+1
490 d2=d-s
500 if d2>m(n) then 580
510 if d2>0 then print d2;
520 print tab(4+8*g);
530 next g
540 rem
550 if d2=m(n) then 590
560 next w
570 rem
580 d=d-g
590 next n
600 rem
610 for i=1 to 6: print chr$(10);: next i
620 data 0,31,28,31,30,31,30,31,31,30,31,30,31
630 rem  0,31,29,  ..., on leap years
640 end
