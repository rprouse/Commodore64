3 print tab(33);"chemist"
6 print tab(15);"creative computing  morristown, new jersey"
8 print:print:print
10 print "the fictitious chemical kryptocyanic acid can only be"
20 print "diluted by the ratio of 7 parts water to 3 parts acid."
30 print "if any other ratio is attempted, the acid becomes unstable"
40 print "and soon explodes.  given the amount of acid, you must"
50 print "decide who much water to add for dilution.  if you miss"
60 print "you face the consequences."
100 a=int(rnd(1)*50)
110 w=7*a/3
120 print a;"liters of kryptocyanic acid.  how much water";
130 input r
140 d=abs(w-r)
150 if d>w/20 then 200
160 print " good job! you may breathe now, but don't inhale the fumes!"
170 print
180 goto 100
200 print " sizzle!  you have just been desalinated into a blob"
210 print " of quivering protoplasm!"
220 t=t+1
230 if t=9 then 260
240 print " however, you may try again with another life."
250 goto 100
260 print " your 9 lives are used, but you will be long remembered for"
270 print " your contributions to the field of comic book chemistry."
280 end
