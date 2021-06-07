10 print tab(26);"joust"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
40 print:print:print
100 input"what is your name, please";a$
120 print"sir ";a$;", you are a medieval knight in a jousting tournament."
121 print"the prize to the winner is the princess' hand in marriage."
122 print "to win, you must beat four other knights."
125 print "to joust, you pick an aiming point for the lance,"
128 print "and then one of from 3 to 6 different possible defense positions."
130 print "the aiming points are:"
150 print "1- helm"
200 print "2- upper left (of shield)"
250 print "3- upper middle"
300 print "4- upper right"
350 print "5- lower left"
400 print "6- lower middle"
450 print "7- lower right"
500 print "8- base of shield"
520 print
530 print "if you break a lance or lose a helm, you will be given another."
550 print "good luck, sir!"
555 print
600 for a = 1 to 4
650 on a goto 800, 950, 1100, 1250
700 rem off you go to the four jousts.
750 rem ------------------------------
800 print "this is your first joust. you are up against the gold knight."
850 goto 1400
950 print "this is your second joust. your opponent is the silver knight."
1000 goto 1400
1100 print "you are doing well! your third joust is against the red knight."
1150 goto 1400
1250 print "this is your final test!! if you win this one the princess"
1270 print "is yours!!! this fight is against the fierce black knight!!!!"
1400 input "your aiming point(1-8)";b
1450 if b <1 or b>8 then 1400
1470 print "you may use one of these defenses:"
1500 on b goto 1550, 1650, 1750, 1850, 1550, 1750, 1550, 1950
1550 print " 4-steady seat, 5-shield high, 6-shield low."
1600 goto 2000
1650 print " 3-left lean, 4-steady seat, 5-shield high, 6-shield low."
1700 goto 2000
1750 print " 1-lower helm, 2-right lean, 3-left lean, 4-steady seat, "
1755 print " 5-shield high, 6-shield low."
1800 goto 2000
1850 print " 2-right lean, 4-steady seat, 5-shield high, 6-shield low."
1900 goto 2000
1950 print " 1-lower helm, 4-steady seat, 5-shield high, 6-shield low."
2000 input "what is your choice"; c
2050 d = int(rnd(1)*8) + 1
2100 on d goto 2150, 2200, 2250, 2300, 2350, 2400, 2450, 2500
2150 on c goto 2600, 2600, 2600, 2700, 2800, 2600
2200 on c goto 2800, 2750, 2600, 2750, 2750, 2600
2250 on c goto 2850, 2800, 2650, 2750, 2950, 2900
2300 on c goto 2650, 2600, 2750, 2650, 2650, 2800
2350 on c goto 2750, 2950, 2600, 2750, 2600, 2750
2400 on c goto 2950, 2650, 2750, 2950, 2850, 2750
2450 on c goto 2650, 2600, 2950, 2650, 2650, 2650
2500 on c goto 2750, 2650, 2850, 2750, 2850, 2750
2600 print "he missed you!":s=0:goto 3000
2650 print "he hit your shield but it glanced off.":s=0:goto 3000
2700 print "he knocked off your helm!":s=0:goto 3000
2750 print "he broke his lance.":s=0:goto 3000
2800 print "he has unseated you(thud!)":s=5:goto 3000
2850 print "he has broken his lance, injured and unseated you (ouch!)"
2855 s=5:goto 3000
2900 print "he has injured and unseated you (crash!)":s=5:goto 3000
2950 print "he has broken his lance and unseated you (clang! )":s=5
3000 e = int(rnd(1)*6) + 1
3050 on d goto 3100,3150,3200,3250,3100,3200,3100,3300
3100 if e<4 then 3000 else 3350
3150 if e<3 then 3000 else 3350
3200 goto 3350
3250 if e=1 or e=3 then 3000 else 3350
3300 if e = 2 or e = 3 then 3000
3350 on e goto 3400, 3450, 3500, 3550, 3600, 3650
3400 on b goto 3700, 3900, 3950, 3750, 3850, 4050, 3750, 3850
3450 on b goto 3700, 3850, 3900, 3700, 4050, 3750, 3700, 3750
3500 on b goto 3700, 3700, 3750, 3850, 3700, 3850, 4050, 3900
3550 on b goto 3800, 3850, 3850, 3750, 3850, 4050, 3750, 3850
3600 on b goto 3900, 3850, 4050, 3750, 3700, 3950, 3750, 3950
3650 on b goto 3700, 3700, 4000, 3900, 3850, 3850, 3750, 3850
3700 print "you missed him (hiss!)":t=o:goto 4100
3750 print "you hit his shield but glanced off.":t=0:goto 4100
3800 print "you knocked off his helm!(cheers!)":t=0:goto 4100
3850 print "you broke your lance(crack...)":t=0:goto 4100
3900 print "you unseated him (loud cheers and huzzahs!!)":t=5:goto 4100
3950 print "you broke your lance, but unseated and injured your foe."
3955 t=5:goto 4100
4000 print "you injured and unseated your opponent.":t=5:goto 4100
4050 print "you broke your lance but unseated your opponent.":t=5:goto 4100
4100 if s = t and s = 0 then 4450
4150 if s = t goto 4400
4200 if s<t goto 4300
4250 if s>t goto 4350
4300 print "you have won this joust.":print:goto 4320
4320 next a
4330 goto 4550
4350 print "too bad, you lost. hope your insurance was paid up.":goto 4500
4400 print "too bad, you both lost. at least your honor is intact.":goto 4500
4450 print "you are now ready to try again.":goto 1400
4500 print "sorry, better luck next joust.":goto 9999
4550 print "hooray! you are the winner. here comes the bride!"
9999 end
