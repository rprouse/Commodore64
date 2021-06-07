5 print tab(33);"craps"
10 print tab(15);"creative computing  morristown, new jersey"
12 print:print:print
15 let r=0
20 print"2,3,12 are losers; 4,5,6,8,9,10 are points; 7,11 are natural winners."
21 let t=1
22 print "pick a number and input to roll dice";
23 input z
24 let x=(rnd(0))
25 let t =t+1
26 if t<=z then 24
27 print"input the amount of your wager.";
28 input f
30 print "i will now throw the dice"
40 let e=int(7*rnd(1))
41 let s=int(7*rnd(1))
42 let x=e+s
50 if x=7 then 180 
55 if x=11 then 180
60 if x=1 then 40
62 if x=2 then 195
65 if x=0 then 40
70 if x=2 then 200
80 if x=3 then 200
90 if x=12 then 200
125 if x=5 then 220
130 if x =6 then 220
140 if x=8 then 220
150 if x=9 then 220
160 if x =10 then 220
170 if x=4 then 220
180 print x "- natural....a winner!!!!"
185 print x"pays even money, you win"f"dollars"
190 goto 210
195 print x"- snake eyes....you lose."
196 print "you lose"f "dollars."
197 let f=0-f
198 goto 210
200 print x " - craps...you lose."
205 print "you lose"f"dollars."
206 let f=0-f
210 let r= r+f
211 goto 320
220 print x "is the point. i will roll again"
230 let h=int(7*rnd(1))
231 let q=int(7*rnd(1))
232 let o=h+q
240 if o=1 then 230
250 if o=7 then 290
255 if o=0 then 230
260 if o=x then 310
270 print o " - no point. i will roll again"
280 goto 230
290 print o "- craps. you lose."
291 print "you lose $"f
292 f=0-f
293 goto 210
300 goto 320
310 print x"- a winner.........congrats!!!!!!!!"
311 print x "at 2 to 1 odds pays you...let me see..."2*f"dollars"
312 let f=2*f
313 goto 210
320 print " if you want to play again print 5 if not print 2";
330 input m
331 if r<0 then 334
332 if r>0 then 336
333 if r=0 then 338
334 print "you are now under $";-r
335 goto 340
336 print "you are now ahead $";r
337 goto 340
338 print "you are now even at 0"
340 if m=5 then 27
341 if r<0 then 350
342 if r>0 then 353
343 if r=0 then 355
350 print"too bad, you are in the hole. come again."
351 goto 360
353 print"congratulations---you came out a winner. come again!"
354 goto 360
355 print"congratulations---you came out even, not bad for an amateur"
360 end
