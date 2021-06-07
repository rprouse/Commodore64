5 print tab(33);"pizza"
10 print tab(15);"creative computing  morristown, new jersey"
15 print: print: print
20 dim s$(16),m$(4)
30 print "pizza delivery game": print
50 input "what is your first name";n$: print
80 print "hi, ";n$;".  in this game you are to take orders"
90 print "for pizzas.  then you are to tell a delivery boy"
100 print "where to deliver the ordered pizzas.": print: print
140 for i=1 to 16
150 read s$(i)
160 next i
170 for i=1 to 4
180 read m$(i)
190 next i
200 data "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o"
210 data "p","1","2","3","4"
230 print "map of the city of hyattsville": print
250 print " -----1-----2-----3-----4-----"
260 k=4
270 for i=1 to 4
280 print "-": print "-": print"-": print "-"
320 print m$(k);
330 s1=16-4*i+1
340 print "     ";s$(s1);"     ";s$(s1+1);"     ";s$(s1+2);"     ";
350 print s$(s1+3);"     ";m$(k)
380 k=k-1
390 next i
400 print "-": print "-": print "-": print "-"
440 print " -----1-----2-----3-----4-----": print
460 print "the output is a map of the homes where"
470 print "you are to send pizzas.": print
490 print "your job is to give a truck driver"
500 print "the location or coordinates of the"
510 print "home ordering the pizza.": print
520 input "do you need more directions";a$
530 if a$="yes" then 590
540 if a$="no" then 750
550 print "'yes' or 'no' please, now then,": goto 520
590 print: print "somebody will ask for a pizza to be"
600 print "delivered.  then a delivery boy will"
610 print "ask you for the location.":print "     example:"
620 print "this is j.  please send a pizza."
640 print "driver to ";n$;".  where does j live?"
650 print "your answer would be 2,3": print
660 input "understand";a$
670 if a$="yes" then 690
680 print "this job is definitely too difficult for you. thanks anyway"
685 goto 999
690 print "good.  you are now ready to start taking orders.": print
700 print "good luck!!": print
750 for i=1 to 5
760 s=int(rnd(1)*16+1): print
770 print "hello ";n$;"'s pizza.  this is ";s$(s);".";
775 print "  please send a pizza."
780 print "  driver to ";n$;":  where does ";s$(s);" live";
790 input a(1),a(2)
870 t=a(1)+(a(2)-1)*4
880 if t=s then 920
890 print "this is ";s$(t);".  i did not order a pizza."
900 print "i live at ";a(1);",";a(2)
910 goto 780
920 print "hello "n$;".  this is ";s$(s);", thanks for the pizza."
930 next i
940 print: input "do you want to deliver more pizzas";a$
960 if a$="yes" then 750
970 print: print "o.k. ";n$;", see you later!":print
999 end
