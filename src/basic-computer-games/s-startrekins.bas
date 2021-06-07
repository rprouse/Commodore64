10 rem instructions for "super startrek"  mar 5, 1978
20 for i=1 to 12:print:next i
21 print tab(10);"*************************************"
22 print tab(10);"*                                   *"
23 print tab(10);"*                                   *"
30 print tab(10);"*      * * super star trek * *      *"
31 print tab(10);"*                                   *"
32 print tab(10);"*                                   *"
35 print tab(10);"*************************************"
36 for i=1 to 8:print:next i
40 input "do you need instructions (y/n)";k$:if k$="n" then 2000
44 print
45 rem print "turn the tty on-line and hit any key except return"
46 rem if inp(1)=13 then 46
50 rem poke 1229,2:poke 1237,3:null 1
90 print"      instructions for 'super star trek'"
100 print
110 print"1. when you see \command ?\ printed, enter one of the legal"
120 print"     commands (nav,srs,lrs,pha,tor,she,dam,com, or xxx)."
130 print"2. if you should type in an illegal command, you'll get a short"
140 print"     list of the legal commands printed out."
150 print"3. some commands require you to enter data (for example, the"
160 print"     'nav' command comes back with 'course (1-9) ?'.)  if you"
170 print"     type in illegal data (like negative numbers), than command"
180 print"     will be aborted"
190 print
270 print"     the galaxy is divided into an 8 x 8 quadrant grid,"
280 print"and each quadrant is further divided into an 8 x 8 sector grid."
290 print
300 print"     you will be assigned a starting point somewhere in the"
310 print"galaxy to begin a tour of duty as comander of the starship"
320 print"\enterprise\; your mission: to seek and destroy the fleet of"
330 print"klingon warwhips which are menacing the united federation of"
340 print"planets."
360 print
370 print"     you have the following commands available to you as captain"
380 print"of the starship enterprise:"
385 print
390 print"\nav\ command = warp engine control --"
400 print"     course is in a circular numerical      4  3  2"
410 print"     vector arrangement as shown             . . ."
420 print"     integer and real values may be           ..."
430 print"     used.  (thus course 1.5 is half-     5 ---*--- 1"
440 print"     way between 1 and 2                      ..."
450 print"                                             . . ."
460 print"     values may approach 9.0, which         6  7  8"
470 print"     itself is equivalent to 1.0"         
480 print"                                            course"
490 print"     one warp factor is the size of "
500 print"     one quadtant.  therefore, to get"
510 print"     from quadrant 6,5 to 5,5, you would"
520 print"     use course 3, warp factor 1."
530 print
540 print"\srs\ command = short range sensor scan"
550 print"     shows you a scan of your present quadrant."
555 print
560 print"     symbology on your sensor screen is as follows:"
570 print"        <*> = your starship's position"
580 print"        +k+ = klingon battle cruiser"
590 print"        >!< = federation starbase (refuel/repair/re-arm here!)"
600 print"         *  = star"
605 print
610 print"     a condensed 'status report' will also be presented."
620 print
640 print"\lrs\ command = long range sensor scan"
650 print"     shows conditions in space for one quadrant on each side"
660 print"     of the enterprise (which is in the middle of the scan)"
670 print"     the scan is coded in the form \###\, where th units digit"
680 print"     is the number of stars, the tens digit is the number of"
690 print"     starbases, and the hundresds digit is the number of"
700 print"     klingons."
705 print
706 print"     example - 207 = 2 klingons, no starbases, & 7 stars."
710 print
720 print"\pha\ command = phaser control."
730 print"     allows you to destroy the klingon battle cruisers by "
740 print"     zapping them with suitably large units of energy to"
750 print"     deplete their shield power.  (remember, klingons have"
760 print"     phasers too!)"
770 print
780 print"\tor\ command = photon torpedo control"
790 print"     torpedo course is the same as used in warp engine control"
800 print"     if you hit the klingon vessel, he is destroyed and"
810 print"     cannot fire back at you.  if you miss, you are subject to"
820 print"     his phaser fire.  in either case, you are also subject to "
825 print"     the phaser fire of all other klingons in the quadrant."
830 print
835 print"     the library-computer (\com\ command) has an option to "
840 print"     compute torpedo trajectory for you (option 2)"
850 print
860 print"\she\ command = shield control"
870 print"     defines the number of energy units to be assigned to the"
880 print"     shields.  energy is taken from total ship's energy.  note"
890 print"     than the status display total energy includes shield energy"
900 print
910 print"\dam\ command = dammage control report"
920 print"     gives the state of repair of all devices.  where a negative"
930 print"     'state of repair' shows that the device is temporarily"
940 print"     damaged."
950 print
960 print"\com\ command = library-computer"
970 print"     the library-computer contains six options:"
980 print"     option 0 = cumulative galactic record"
990 print"        this option showes computer memory of the results of all"
1000 print"        previous short and long range sensor scans"
1010 print"     option 1 = status report"
1020 print"        this option shows the number of klingons, stardates,"
1030 print"        and starbases remaining in the game."
1040 print"     option 2 = photon torpedo data"
1050 print"        which gives directions and distance from the enterprise"
1060 print"        to all klingons in your quadrant"
1070 print"     option 3 = starbase nav data"
1080 print"        this option gives direction and distance to any "
1090 print"        starbase within your quadrant"
1100 print"     option 4 = direction/distance calculator"
1110 print"        this option allows you to enter coordinates for"
1120 print"        direction/distance calculations"
1130 print"     option 5 = galactic /region name/ map"
1140 print"        this option prints the names of the sixteen major "
1150 print"        galactic regions referred to in the game."
1990 rem poke 1229,0:poke 1237,1:null 0
2000 rem print:print:print
2010 rem print "turn cassette player on and hit any key except return"
2020 rem if inp(1)=13 then 2020
2030 rem print
2040 rem print "turn cassette player off and "
2050 rem print "type 'run' when computer prints 'ok'"
