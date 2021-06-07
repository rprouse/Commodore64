1 print tab(26);"eliza"
2 print tab(20);"creative computing"
3 print tab(18);"morristown, new jersey"
4 print:print:print
80 rem     -----initialization-----
100 dim s(36),r(36),n(36)
110 n1=36:n2=14:n3=112
120 for x = 1 to n1+n2+n3:read z$:next x:rem same as restore
130 for x=1 to n1
140 read s(x),l:r(x)=s(x):n(x)=s(x)+l-1
150 next x
160 print "hi!  i'm eliza.  what's your problem?"
170 rem
180 rem     -----user input section-----
190 rem
200 input i$
201 i$="  "+i$+"  "
210 rem  get rid of apostrophes
220 for l=1 to len(i$)
230 if mid$(i$,l,1)="'" then i$=left$(i$,l-1)+right$(i$,len(i$)-l):goto 230
240 if l+4<=len(i$) then if mid$(i$,l,4) = "shut" then print "shut up...":end
250 next l
255 if i$=p$ then print "please don't repeat yourself!":goto 170
260 rem
270 rem     -----find keyword in i$-----
280 rem
290 restore
295 s=0
300 for k=1 to n1
310 read k$
315 if s>0 then 360
320 for l=1 to len(i$)-len(k$)+1
340 if mid$(i$,l,len(k$))=k$ then s=k:t=l:f$=k$
350 next l
360 next k
365 if s>0 then k=s:l=t:goto 390
370 k=36: goto 570:rem  we didn't find any keywords
380 rem
390 rem      take right part of string and conjugate it
400 rem      using the list of strings to be swapped
410 rem
420 restore:for x=1 to n1:read z$:next x:rem skip over keywords
430 c$=" "+right$(i$,len(i$)-len(f$)-l+1)+" "
440 for x=1 to n2/2
450 read s$,r$
460 for l=1 to len(c$)
470 if l+len(s$)>len(c$) then 510
480 if mid$(c$,l,len(s$))<>s$ then 510
490 c$=left$(c$,l-1)+r$+right$(c$,len(c$)-l-len(s$)+1)
495 l=l+len(r$)
500 goto 540
510 if l+len(r$)>len(c$)then 540
520 if mid$(c$,l,len(r$))<>r$ then 540
530 c$=left$(c$,l-1)+s$+right$(c$,len(c$)-l-len(r$)+1)
535 l=l+len(r$)
540 next l
550 next x
555 if mid$(c$,2,1)=" "then c$=right$(c$,len(c$)-1):rem only 1 space
556 for l=1 to len(c$)
557 if mid$(c$,l,1)="!" then c$=left$(c$,l-1)+right$(c$,len(c$)-l):goto 557
558 next l
560 rem
570 rem    now using the keyword number (k) get reply
580 rem
590 restore:for x= 1 to n1+n2:read z$:next x
600 for x=1 to r(k):read f$:next x:rem read right reply
610 r(k)=r(k)+1:if r(k)>n(k) then r(k)=s(k)
620 if right$(f$,1)<>"*" then print f$:p$=i$:goto 170
630 print left$(f$,len(f$)-1);c$
640 p$=i$:goto 170
1000 rem
1010 rem     -----program data follows-----
1020 rem
1030 rem     keywords
1049 rem
1050 data "can you ","can i ","you are ","youre ","i dont ","i feel "
1060 data "why dont you ","why cant i ","are you ","i cant ","i am ","im "
1070 data "you ","i want ","what ","how ","who ","where ","when ","why"
1080 data "name","cause","sorry","dream","hello","hi ","maybe"
1090 data " no","your","always","think","alike","yes","friend"
1100 data "computer", "nokeyfound"
1200 rem
1210 rem     string data for conjugations
1220 rem
1230 data " are "," am "," were "," was "," you "," i ","your "," my "
1235 data " ive "," youve "," im "," youre "
1240 data " me "," !you "
1300 rem
1310 rem     replies
1320 rem
1330 data "don't you believe that i can*"
1340 data "perhaps you would like to be like me*"
1350 data "you want me to be able to*"
1360 data "perhaps you don't want to*"
1365 data "do you want to be able to*"
1370 data "what makes you think i am*"
1380 data "does it please you to believe i am*"
1390 data "perhaps you would like to be*"
1400 data "do you sometimes wish you were*"
1410 data "don't you really*"
1420 data "why don't you*"
1430 data "do you wish to be able to*"
1440 data "does that trouble you*"
1450 data "do you often feel*"
1460 data "do you often feel*"
1470 data "do you enjoy feeling*"
1480 data "do you really believe i don't*"
1490 data "perhaps in good time i will*"
1500 data "do you want me to*"
1510 data "do you think you should be able to*"
1520 data "why can't you*"
1530 data "why are you interested in whether or not i am*"
1540 data "would you prefer if i were not*"
1550 data "perhaps in your fantasies i am*"
1560 data "how do you know you can't*"
1570 data "have you tried?"
1580 data "perhaps you can now*"
1590 data "did you come to me because you are*"
1600 data "how long have you been*"
1610 data "do you believe it is normal to be*"
1620 data "do you enjoy being*"
1630 data "we were discussing you--not me."
1640 data "oh, i*"
1650 data "you're not really talking about me, are you?"
1660 data "what would it mean to you if you got*"
1670 data "why do you want*"
1680 data "suppose you soon got*"
1690 data "what if you never got*"
1700 data "i sometimes also want*"
1710 data "why do you ask?"
1720 data "does that question interest you?"
1730 data "what answer would please you the most?"
1740 data "what do you think?"
1750 data "are such questions on your mind often?"
1760 data "what is it that you really want to know?"
1770 data "have you asked anyone else?"
1780 data "have you asked such questions before?"
1790 data "what else comes to mind when you ask that?"
1800 data "names don't interest me."
1810 data "i don't care about names --please go on."
1820 data "is that the real reason?"
1830 data "don't any other reasons come to mind?"
1840 data "does that reason explain anything else?"
1850 data "what other reasons might there be?"
1860 data "please don't apologize!"
1870 data "apologies are not necessary."
1880 data "what feelings do you have when you apologize?"
1890 data "don't be so defensive!"
1900 data "what does that dream suggest to you?"
1910 data "do you dream often?"
1920 data "what persons appear in your dreams?"
1930 data "are you disturbed by your dreams?"
1940 data "how do you do ...please state your problem."
1950 data "you don't seem quite certain."
1960 data "why the uncertain tone?"
1970 data "can't you be more positive?"
1980 data "you aren't sure?"
1990 data "don't you know?"
2000 data "are you saying no just to be negative?"
2010 data "you are being a bit negative."
2020 data "why not?"
2030 data "are you sure?"
2040 data "why no?"
2050 data "why are you concerned about my*"
2060 data "what about your own*"
2070 data "can you think of a specific example?"
2080 data "when?"
2090 data "what are you thinking of?"
2100 data "really, always?"
2110 data "do you really think so?"
2120 data "but you are not sure you*"
2130 data "do you doubt you*"
2140 data "in what way?"
2150 data "what resemblance do you see?"
2160 data "what does the similarity suggest to you?"
2170 data "what other connections do you see?"
2180 data "could there really be some connection?"
2190 data "how?"
2200 data "you seem quite positive."
2210 data "are you sure?"
2220 data "i see."
2230 data "i understand."
2240 data "why do you bring up the topic of friends?"
2250 data "do your friends worry you?"
2260 data "do your friends pick on you?"
2270 data "are you sure you have any friends?"
2280 data "do you impose on your friends?"
2290 data "perhaps your love for friends worries you."
2300 data "do computers worry you?"
2310 data "are you talking about me in particular?"
2320 data "are you frightened by machines?"
2330 data "why do you mention computers?"
2340 data "what do you think machines have to do with your problem?"
2350 data "don't you think computers can help people?"
2360 data "what is it about machines that worries you?"
2370 data "say, do you have any psychological problems?"
2380 data "what does that suggest to you?"
2390 data "i see."
2400 data "i'm not sure i understand you fully."
2410 data "come come elucidate your thoughts."
2420 data "can you elaborate on that?"
2430 data "that is quite interesting."
2500 rem
2510 rem     data for finding right replies
2520 rem
2530 data 1,3,4,2,6,4,6,4,10,4,14,3,17,3,20,2,22,3,25,3
2540 data 28,4,28,4,32,3,35,5,40,9,40,9,40,9,40,9,40,9,40,9
2550 data 49,2,51,4,55,4,59,4,63,1,63,1,64,5,69,5,74,2,76,4
2560 data 80,3,83,7,90,3,93,6,99,7,106,6
