10 print tab(25);"concentration"
20 print tab(15);"creative computing  morristown new jersey"
30 print
40 print
50 print
200 dim c$(52)
210 for x=1 to 52
220 read e$
230 c$(x)=e$
240 next x
250 rem --   shuffle and deal
260 for z=1 to 51
270 k$=c$(z)
275 l=int((53-z)*rnd(1)+1)
280 c$(z)=c$(l+z-1)
290 c$(l)=k$
300 next z
340 rem --   start to play
350 for n=1 to 26
360 print "first card";
370 input u
372 if u > 0 and u < 52 then 380
374 print "there are only 52 cards in the deck, not ";u
376 goto 360
380 let g=1
390 if c$(u)=" " then 840
400 print "second card";
410 input w
412 if w > 0 and w < 52 then 420
414 print "there are only 52 cards in the deck, not ";w
416 goto 400
420 let g=2
430 if c$(w)=" " then 840
440 if u <> w then 470
450 print "you can't pick the same card twice!"
460 goto 400
470 if mid$(c$(u),1,1)=mid$(c$(w),1,1) then 580
480 print "#";u;"is ";c$(u),"#";w;"is ";c$(w),
490 for i=1 to 50
500 print;
510 next i
520 print chr$(13);"hhhhhhhhhhhhhhhhhhhhhhhhhhhhhh";
530 print chr$(13);"iiiiiiiiiiiiiiiiiiiiiiiiiiiiii";
540 print chr$(13);"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
550 print
560 print
570 goto 630
580 print "that's a match --";c$(u),c$(w)
590 let c$(u)=" "
600 let c$(w)=" "
610 let s=s+1
620 print "your score is now";s;" you have had ";n;"picks."
630 next n
640 rem --   the results
650 let s1=s/(n/4)
660 print "you scored";s;" out of ";n;"that is ";
670 on s1+1.5 goto 680,700,720,760
680 print "poor."
690 goto 770
700 print "fair."
710 goto 770
720 print "good."
730 goto 770
740 print "excellent ! ! !"
750 goto 770
760 print ". . . aaah . . . uh....you must have cheated!"
770 print
780 print "do you want to play again";
790 input z$
800 if z$ = "yes" then 260
810 print
820 print "come back again!!"
830 end
840 print "you have already matched that card."
850 if g=1 then 360
860 goto 400
870 data "as","2s","3s","4s","5s","6s","7s","8s","9s","10s","js","qs"
875 data "ks"
880 data "ah","2h","3h","4h","5h","6h","7h","8h","9h","10h","jh","qh"
885 data "kh"
890 data "ad","2d","3d","4d","5d","6d","7d","8d","9d","10d","jd","qd"
895 data "kd"
900 data "ac","2c","3c","4c","5c","6c","7c","8c","9c","10c","jc","qc"
905 data "kc"
910 end
