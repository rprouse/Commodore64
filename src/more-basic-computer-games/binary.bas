10 print tab(30);"binary"
20 print tab(15);"creative computing  morristown new jersey"
110 b$="01"
120 t0=20
130 print
140 print
150 for i=1 to 10
160 gosub 560
170 print "binary:";
180 for j=1 to 5
190 print mid$(b$,b(j)+1,1);
200 next j
210 print "     decimal:";
220 input a
230 if a=d then 260
240 print d
250 t0=t0-1
260 print
270 next i
280 print
290 print
300 for i=1 to 10
310 gosub 560
320 print "decimal:  ";d;
330 print "     binary:   ";
340 i$="00000"
350 input i$
360 if len(i$)> 10 then 420
370 i$="00000"+i$
375 i$=right$(i$,5)
380 for j=1 to 5
390 if mid$(b$,b(j)+1,1)<>mid$(i$,j,1) then 420
400 next j
410 goto 480
420 print " ";
430 for j=1 to 5
440 print mid$(b$,b(j)+1,1);
450 next j
460 print
470 t0=t0-1
480 print
490 next i
500 print
510 print
520 print "your score:";int(t0/.2+.5);"%"
530 print
540 print
550 end
560 d=0
570 for j=1 to 5
580 b(j)=int(rnd(1)+.5)
590 d=d*2+b(j)
600 next j
610 return
620 end
