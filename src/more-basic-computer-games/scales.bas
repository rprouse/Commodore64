10 print tab(26);"scales"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
40 print:print:print
100 a=0:b=0:c=0:d=0:e=0:h=0:k=0:l=0:h=0:n=0:o=0
200 w=4
210 print "eleven scale types -- major, minor, modal, and whole tone"
215 print
220 print "this program prints in letter names one octave upward, ";
225 print "the major,"
227 print "the natural, harmonic, melodic, and hungarian minors, the"
228 print "dorian, phrygian, lydian, mixolydian, and locrian modes, and"
229 print "the whole tone scales.":print
230 print "use a 3- or 4-character input: the first 2 char's are the scale"
232 print "type, and the 3rd char'r is the single letter tonic, or the"
234 print "last two char's are the tonic degree or the key signature."
240 print "scale types-- ma na ha me do ph ly mi lo hu and wh"
250 print "input either a tonic or a signature."
260 print "examples: macb lydb mieb whgb naf# hag# mea# loc# doc phd hue"
270 b$="scale asked --------"
280 c$="answer (in letter names) ----------"
290 o$="structure---- "
300 k$=" tetrachords"
310 u=1
320 print:print:print tab(8);"which type of scale is wanted";
330 input a$
340 n=len(a$)
350 if a$="stop" then 1290
360 e$="manahamedophlymilohuwh"
370 for x=1 to 22 step 2
380 if left$(a$,2)=mid$(e$,x,2) then 400
390 next x
400 q=(x+1)/2
410 a0$=a$
420 x=asc(left$(a0$,1))-32
425 a0$=chr$(x)+mid$(a0$,2,n)
430 read d$
440 a0$=a$
450 x=asc(left$(a0$,1))-32
455 a0$=chr$(x)+mid$(a0$,2,n)
460 if left$(d$,2)=left$(a0$,2) then 480
470 goto 430
480 j$=d$
490 restore
500 if n<>3 then 530
520 a$=left$(a$,3)+" "
530 if q=1 or q=7 or q=11 then 550
540 if q>=2 and q<=6 or q=9 or q=10 then 570
550 y=1
560 goto 580
570 y=2
580 f$="bxexaxdxgxcxfxb#e#a#d#g#c#f#b e a d g c f "
585 f$=f$+"bbebabdbgbcbfbbdedadddgdcd"
590 g$="bxexaxdxgxcxfxb#e#a#d#g#c#f#b e a d g c f "
595 g$=g$+"bbebabdbgbcbfbbdedaddd6dcd"
600 on y goto 610,630
610 h$="5t4t3t2t1t7x6x5x4x3x2x1x7#6#5#4#3#2#1#0#1b2b3b4b5b6b7b1d2d3d4d"
615 h$=h$+"5d6d7d"
620 goto 640
630 h$="2t1t7x6x5x4x3x2x1x7#6#5#4#3#2#1#0#1b2b3b4b5b6b7b1d2d3d4d"
635 h$=h$+"5d6d7d8d9d  "
640 for v=1 to 68 step 2
650 if mid$(a$,3,2)=mid$(f$,v,2) then 680
660 if mid$(a$,3,2)=mid$(h$,v,2) then 680
670 next v
680 c1$=mid$(g$,v,2)
690 t=t+1
700 if t=9 then 1160
710 on t goto 720,740,790,840,890,940,990,1040
720 r=0
730 goto 1060
740 if q=6 or q=9 then 770
750 r=-4
760 goto 1060
770 r=10
780 goto 1060
790 if q=1 or q=7 or q=8 or q=11 then 820
800 r=6
810 goto 1060
820 r=-8
830 goto 1060
840 if q=7 or q=10 or q=11 then 870
850 r=2
860 goto 1060
870 r=-12
880 goto 1060
890 if q=9 or q=11 then 920
900 r=-2
910 goto 1060
920 r=12
930 goto 1060
940 if q=1 or q=4 or q=5 or q=7 or q=8 then 970
950 r=8
960 goto 1060
970 r=-6
980 goto 1060
990 if q=1 or q=3 or q=4 or q=7 or q=10 then 1020
1000 r=4
1010 goto 1060
1020 r=-10
1030 goto 1060
1040 r=0
1060 if q=11 and t=5 then 1090
1070 if u=1 then i$=mid$(g$,v+r,2):goto 1100
1075 i$=left$(i$,u-1)+mid$(g$,v+r,2)
1080 goto 1100
1090 goto 690
1100 i$=left$(i$,u+1)+"  "
1110 if mid$(i$,u+1,1)="d" then 1130
1120 goto 1140
1130 i$=left$(i$,u)+"bb"
1140 u=u+4
1150 goto 690
1160 print:print tab(3),b$;j$;c1$:print
1170 print tab(3);c$:print
1180 print:print tab(8);i$
1190 c1$="":i$="":g$=""
1220 q=0:t=0:r=0
1230 print
1240 goto 310
1250 data "major scale on ","nat'l minor scale on "
1255 data "harm'c minor scale on ","mel'c minor scale on "
1260 data "dorian mode on ","phrygian mode on "
1270 data "lydian mode on ","mixolydian node on ","locrian mode on "
1280 data "hung'n minor scale on ","whole tone scale on "
1290 end
