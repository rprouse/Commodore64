10 print tab(29);"rabbit chase"
20 print tab(15);"creative computing  morristown new jersey"
30 print
40 print
50 print
100 rem ('t' is the square of the capture distance)
105 let t=400
115 rem --   initalize velocities and positions
125 let v1=int(rnb(1)*10+.5)*10+50
130 let v2=(int(rnd(1)*2+.5)+1)*v1
135 let x1=(int(rnd(1)*400)+100)*sgn(rnd(1)-.5)
140 let y1=(int(rnd(1)*400)+100)*sgn(rnd(1)-.5)
145 if y1=0 or x1=0 then 135
150 let x2=0
155 let y2=0
160 print "speeds (units/hop):"
165 print "rabbit -";v1,"you -";v2
170 print
175 print
180 print
185 let c=(x2-x1)^2+(y2-y1)^2
190 let p1=3.141592653589/180
195 let h=1
200 rem --   print out
215 let d1=int(rnd(1)*359)
220 print "hop#: ";
225 let z=h
230 gosub 510
235 print " distance to rabbit: ";
240 let z=sqr((x2-x1)^2+(y2-y1)^2)
245 gosub 510
250 print "   closest approach: ";
255 let z=sqr(c)
260 gosub 510
265 print
270 print "rabbit ---     position: (";
275 let z=x1
280 gosub 520
285 print ",";
290 let z=y1
295 gosub 520
300 print ")   and direction:";
305 let z=d1
310 gosub 510
315 print
320 print "you ------     position: (";
325 let z=x2
330 gosub 520
335 print ",";
340 let z=y2
345 gosub 520
350 print ")   and direction:";
355 input d2
360 if d2 < 0 or d2 >=360 then 355
365 print
370 print
380 rem --   compute paths and see if they intersect
390 let x3=v1*cos(d1*p1)/100
395 let y3=v1*sin(d1*p1)/100
400 let x4=v2*cos(d2*p1)/100
405 let y4=v2*sin(d2*p1)/100
410 let c=(x2-x1)^2+(y2-y1)^2
415 for i=1 to 100
420 let x1=x1+x3
425 let y1=y1+y3
430 let x2=x2+x4
435 let y2=y2+y4
440 if c < (x2-x1)^2+(y2-y1)^2 then 445
443 c=(x2-x1)^2+(y2-y1)^2
445 next i
450 let h=h+1
455 if c > t then 215
460 print
465 print
470 print "**********"
475 print "* got ya *"
480 print "**********"
485 print
490 print
500 end
510 rem --   converts numbers to strings for cleaner output
520 z=int(z+.5)
525 print right$("     "+str$(z),5);
585 return
590 end
