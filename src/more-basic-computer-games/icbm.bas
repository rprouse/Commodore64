10 print tab(26);"icbm"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
40 print:print:print
110 x1=0:y1=0
120 x=int(rnd(1)*800)+200:y=int(rnd(1)*800)+200
130 s=int(rnd(1)*20+50):s1=int(rnd(1)*20+50)
170 print "-------missile-----         ";
175 print "--------sam--------         ------"
180 print "miles","miles","miles","miles","heading"
190 print "north","east","north","east","?"
200 print "----------------------------------";
205 print "---------------------------"
210 for n=1 to 50
220 print y,x,y1,x1,
230 if x=0 then 550
240 input t1
250 t1=t1/57.296
260 h=int(rnd(1)*200+1)
270 if h>4 then 290
280 on h goto 470,490,510,530
290 x1=int(x1+s1*sin(t1)):y1=int(y1+s1*cos(t1))
310 if sqr(x^2+y^2)>s then 350
320 x=0:y=0
340 goto 430
350 b=sqr(x^2+y^2)/1000
360 t=atn(y/x)
370 x=int(x-s*cos(t)+rnd(1)*20+r)
380 y=int(y-s*sin(t)+rnd(1)*20+r)
390 d=sqr((x-x1)^2+(y-y1)^2)
400 if d<=5 then 440
410 d=int(d)
420 print "icbm & sam now"; d; "miles apart"
430 next n
440 print "congratulations!  your sam came within";d;"miles of"
450 print "the icbm and destroyed it!"
460 goto 560
470 print "too bad.  your sam fell to the ground!"
480 goto 560
490 print "your sam exploded in midair!"
500 goto 560
510 print "good luck-the icbm exploded harmlessly in midair!"
520 goto 560
530 print "good luck-the icbm turned out to be a friendly aircraft!"
540 goto 560
550 print "too bad!"
555 print "the icbm just hit your location!!"
560 print "do you want to play more? (y or n)";
570 input a$
580 if a$="y" then 130
590 end
