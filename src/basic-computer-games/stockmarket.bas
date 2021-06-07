10 print tab(30);"stock market"
20 print tab(15);"creative computing  morristown, new jersey"
30 print: print: print
100 rem stock market simulation     -stock-
101 rem revised 8/18/70 (d. pessel, l. braun, c. losik)  
102 rem imp vrbls: a-mrkt trnd slp; b5-brkrge fee; c-ttl csh assts;    
103 rem c5-ttl csh assts (temp); c(i)-chng in stk val; d-ttl assts;
104 rem e1,e2-lrg chng misc; i-stck #; i1,i2-stcks w lrg chng; 
105 rem n1,n2-lrg chng day cnts; p5-ttl days prchss; p(i)-prtfl cntnts;
106 rem q9-new cycl?; s4-sgn of a; s5-ttl dys sls; s(i)-value/shr; 
107 rem t-ttl stck assts; t5-ttl val of trnsctns;
108 rem w3-lrg chng; x1-smll chng(<$1); z4,z5,z6-nyse ave.; z(i)-trnsct
110 dim s(5),p(5),z(5),c(5) 
112 rem slope of market trend:a  (same for all stocks) 
113 let x=1
114 let a=int((rnd(x)/10)*100+.5)/100 
115 let t5=0
116 let x9=0
117 let n1=0
118 let n2=0
119 let e1=0
120 let e2=0
121 rem introduction 
122 print "do you want the instructions (yes-type 1, no-type 0)"; 
123 input z9
124 print 
125 print 
126 if z9<1 then 200
130 print "this program plays the stock market.  you will be given" 
132 print "$10,000 and may buy or sell stocks.  the stock prices will"
134 print "be generated randomly and therefore this model does not" 
135 print "represent exactly what happens on the exchange.  a table"
136 print "of available stocks, their prices, and the number of shares"
137 print "in your portfolio will be printed.  following this, the" 
138 print "initials of each stock will be printed with a question"
139 print "mark.  here you indicate a transaction.  to buy a stock" 
140 print "type +nnn, to sell a stock type -nnn, where nnn is the"  
141 print "number of shares.  a brokerage fee of 1% will be charged"
142 print "on all transactions.  note that if a stock's value drops"
143 print "to zero it may rebound to a positive value again.  you"
144 print "have $10,000 to invest.  use integers for all your inputs."
145 print "(note:  to get a 'feel' for the market run for at least" 
146 print "10 days)"
147 print "-----good luck!-----"
200 rem generation of stock table; input requests  
210 rem initial stock values 
220 let s(1)=100
230 let s(2)=85 
240 let s(3)=150
250 let s(4)=140
260 let s(5)=110
265 rem initial t8 - # days for first trend slope (a)
266 let t8=int(4.99*rnd(x)+1) 
267 rem randomize sign of first trend slope (a)
268 if rnd(x)>.5 then 270 
269 let a=-a
270 rem randomize initial values 
280 gosub 830 
285 rem initial portfolio contents 
290 for i=1 to 5
300 let p(i)=0
305 let z(i)=0
310 next i
320 print 
330 print 
333 rem initialize cash assets:c 
335 let c=10000 
338 rem print initial portfolio
340 print "stock"," ","initials","price/share"
350 print "int. ballistic missiles","  ibm",s(1)
352 print "red cross of america","  rca",s(2) 
354 print "lichtenstein, bumrap & joke","  lbj",s(3)
356 print "american bankrupt co.","  abc",s(4)
358 print "censured books store","  cbs",s(5) 
360 print 
361 rem nyse average:z5; temp. value:z4; net change:z6 
363 let z4=z5 
364 let z5=0
365 let t=0 
370 for i=1 to 5
375 let z5=z5+s(i)
380 let t=t+s(i)*p(i) 
390 next i
391 let z5=int(100*(z5/5)+.5)/100 
392 let z6=int((z5-z4)*100+.5)/100
393 rem total assets:d 
394 let d=t+c 
395 if x9>0 then 398
396 print "new york stock exchange average: "z5 
397 goto 399 
398 print "new york stock exchange average: "z5"net change"z6
399 print 
400 let t=int(100*t+.5)/100 
401 print "total stock assets are   $";t
403 let c=int(100*c+.5)/100 
405 print "total cash assets are    $";c
407 let d=int(100*d+.5)/100 
408 print "total assets are         $";d
410 print 
411 if x9=0 then 416
412 print "do you wish to continue (yes-type 1, no-type 0)";
413 input q9
414 if q9<1 then 998
416 rem input transactions 
420 print "what is your transaction in" 
430 print "ibm";
440 input z(1)
450 print "rca";
460 input z(2)
470 print "lbj";
480 input z(3)
490 print "abc";
500 input z(4)
510 print "cbs";
520 input z(5)
525 print 
530 rem total day's purchases in $:p5
540 let p5=0
550 rem total day's sales in $:s5
560 let s5=0
570 for i=1 to 5
575 let z(i)=int(z(i)+.5) 
580 if z(i)<=0 then 610 
590 let p5=p5+z(i)*s(i) 
600 goto 620 
610 let s5=s5-z(i)*s(i) 
612 if -z(i)<=p(i) then 620 
614 print "you have oversold a stock; try again." 
616 goto 420 
620 next i
622 rem total value of transactions:t5 
625 let t5=p5+s5
630 rem brokerage fee:b5 
640 let b5=int(.01*t5*100+.5)/100 
650 rem cash assets=old cash assets-total purchases
652 rem -brokerage fees+total sales:c5 
654 let c5=c-p5-b5+s5 
656 if c5>=0 then 674 
658 print "you have used $"-c5" more than you have." 
660 goto 420
674 let c=c5
675 rem calculate new portfolio  
680 for i=1 to 5
690 let p(i)=p(i)+z(i)
700 next i
710 rem calculate new stock values 
720 gosub 830 
750 rem print portfolio
751 rem bell ringing-different on many computers 
755 print 
756 print "**********     end of day's trading     **********"
757 print 
758 print 
759 if x9<1 then 769
769 print "stock","price/share","holdings", "value", "net price change"
770 print "ibm", s(1), p(1), s(1)*p(1), c(1)
771 print "rca", s(2), p(2), s(2)*p(2), c(2)
772 print "lbj", s(3), p(3), s(3)*p(3), c(3)
773 print "abc", s(4), p(4), s(4)*p(4), c(4)
774 print "cbs", s(5), p(5), s(5)*p(5), c(5)
775 let x9=1
780 print 
790 print 
810 goto 360 
829 rem new stock values - subroutine
830 rem randomly produce new stock values based on previous
831 rem day's values 
832 rem n1,n2 are random numbers of days which respectively
833 rem determine when stock i1 will increase 10 pts. and stock
834 rem i2 will decrease 10 pts. 
840 rem if n1 days have passed, pick an i1, set e1, determine new n1 
841 if n1>0 then 850
845 let i1=int(4.99*rnd(x)+1) 
846 let n1=int(4.99*rnd(x)+1) 
847 let e1=1
850 rem if n2 days have passed, pick an i2, set e2, determine new n2 
851 if n2>0 then 860
855 let i2=int(4.99*rnd(x)+1) 
856 let n2=int(4.99*rnd(x)+1) 
857 let e2=1
860 rem deduct one day from n1 and n2
861 let n1=n1-1 
862 let n2=n2-1 
890 rem loop through all stocks
900 for i=1 to 5
910 let x1=rnd(x) 
915 if x1>.25 then 920
916 let x1=.25
917 goto 935 
920 if x1>.5 then 925
921 let x1=.5
922 goto 935 
925 if x1>.75 then 930
926 let x1=.75  
927 goto 935 
930 let x1=0.0
931 rem big change constant:w3  (set to zero initially)
935 let w3=0
936 if e1<1 then 945
937 if int(i1+.5)<>int(i+.5) then 945 
938 rem add 10 pts. to this stock;  reset e1 
939 let w3=10 
943 let e1=0
945 if e2<1 then 955
947 if int(i2+.5)<>int(i+.5) then 955 
948 rem subtract 10 pts. from this stock;  reset e2
949 let w3=w3-10
953 let e2=0
954 rem c(i) is change in stock value
955 let c(i)=int(a*s(i))+x1+int(3-6*rnd(x)+.5)+w3 
956 let c(i)=int(100*c(i)+.5)/100 
957 let s(i)=s(i)+c(i)
960 if s(i)>0 then 967
964 let c(i)=0
965 let s(i)=0
966 goto 970 
967 let s(i)=int(100*s(i)+.5)/100 
970 next i
972 rem after t8 days randomly change trend sign and slope 
973 let t8=t8-1 
974 if t8<1 then 985
980 return
985 rem randomly change trend sign and slope (a), and duration 
986 rem of trend (t8)
990 let t8=int(4.99*rnd(x)+1) 
992 let a=int((rnd(x)/10)*100+.5)/100 
993 let s4=rnd(x) 
994 if s4<=.5 then 997
995 let a=-a
997 return
998 print "hope you had fun!!"
999 end
