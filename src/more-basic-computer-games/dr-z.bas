5 print tab(27);"dr.z"
6 print tab(20);"creative computing"
7 print tab(18);"morristown, new jersey"
8 print:print:print
20 print "hello there, i'm your computer therapist."
30 print "what is your name? and tell me something about yourself."
40 print "however, don't type more than one line. i tire easily."
50 input a$
60 print "what did you say your name was again?"
70 input b$
80 print "how do you feel today?"
90 let c=0:u=0:v=0
100 input a$
110 print
120 print
130 if c=10 then 720
140 let z=int(10*rnd(1))
150 if u=z then 140
160 if v=z then 140
170 let u=z
180 on z+1 goto 690,420,450,480,510,540,570,600,630,660
380 goto 690
390 print "that's very interesting, tell me more."
400 print
410 goto 690
420 print "have you felt this way long?"
430 print
440 goto 690
450 print "do you think this is reasonable in light of your interests?"
460 print
470 goto 690
480 print "do your friends find this acceptable?"
490 print
500 goto 690
510 print "do you feel comfortable with this feeling?"
520 print
530 goto 690
540 print "do you think that this is a normal feeling?"
550 print
560 goto 690
570 print "why do you think you feel this way?"
580 print
590 goto 690
600 print "have you talked to anyone about this?"
610 print
620 goto 690
630 print "why are you here?"
640 print
650 goto 690
660 print "are you satisfied with the way your ideas are developing?"
670 print
690 let c=c+1
700 let u=z
710 goto 100
720 print "i think you are making a great attempt to solve your"
730 print "difficulties, and i see no need to continue this"
740 print "session any further."
750 print b$;" would you make another appointment with my computer"
760 print "for sometime in the next few weeks. what date would you"
770 print "prefer?"
780 input a$
790 print "that will be fine ."
800 print "i've enjoyed communicating with you."
810 print "have a nice day."
820 for t=1 to 6
830 print
840 next t
850 end
