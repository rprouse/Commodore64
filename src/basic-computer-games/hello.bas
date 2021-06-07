2 print tab(33);"hello"
4 print tab(15);"creative computing  morristown, new jersey"
6 print: print: print
10 print "hello.  my name is creative computer."
20 print: print: input "what's your name";n$: print
30 print "hi there, ";n$;", are you enjoying yourself here";
40 input b$: print
50 if b$="yes" then 70
55 if b$="no" then 80
60 print n$;", i don't understand your answer of '";b$;"'."
65 print "please answer 'yes' or 'no'.  do you like it here";: goto 40
70 print "i'm glad to hear that, ";n$;".": print
75 goto 100
80 print "oh, i'm sorry to hear that, ";n$;". maybe we can"
85 print "brighten up your visit a bit."
100 print
105 print "say, ";n$;", i can solve all kinds of problems except"
110 print "those dealing with greece.  what kind of problems do"
120 print "you have (answer sex, health, money, or job)";
125 input c$
126 print
130 if c$="sex" then 200
132 if c$="health" then 180
134 if c$="money" then 160
136 if c$="job" then 145
138 print "oh, ";n$;", your answer of ";c$;" is greek to me."
140 goto 250
145 print "i can sympathize with you ";n$;".  i have to work"
148 print "very long hours for no pay -- and some of my bosses"
150 print "really beat on my keyboard.  my advice to you, ";n$;","
153 print "is to open a retail computer store.  it's great fun."
155 goto 250
160 print "sorry, ";n$;", i'm broke too.  why don't you sell"
162 print "encyclopeadias or marry someone rich or stop eating"
164 print "so you won't need so much money?"
170 goto 250
180 print "my advice to you ";n$;" is:"
185 print "     1.  take two asprin"
188 print "     2.  drink plenty of fluids (orange juice, not beer!)"
190 print "     3.  go to bed (alone)"
195 goto 250
200 input "is your problem too much or too little";d$: print
210 if d$="too much" then 220
212 if d$="too little" then 230
215 print "don't get all shook, ";n$;", just answer the question"
217 input "with 'too much' or 'too little'.  which is it";d$:goto 210
220 print "you call that a problem?!!  i should have such problems!"
225 print "if it bothers you, ";n$;", take a cold shower."
228 goto 250
230 print "why are you here in suffern, ";n$;"?  you should be"
235 print "in tokyo or new york or amsterdam or someplace with some"
240 print "real action."
250 print
255 print "any more problems you want solved, ";n$;
260 input e$: print
270 if e$="yes" then 280
273 if e$="no" then 300
275 print "just a simple 'yes' or 'no' please, ";n$;"."
277 goto 255
280 print "what kind (sex, money, health, job)";
282 goto 125
300 print
302 print "that will be $5.00 for the advice, ";n$;"."
305 print "please leave the money on the terminal."
307 for i=1 to 2000: next i
310 print: print: print
315 print "did you leave the money";
320 input g$: print
325 if g$="yes" then 350
330 if g$="no" then 370
335 print "your answer of '";g$;"' confuses me, ";n$;"."
340 print "please respond with 'yes' or 'no'.": goto 315
350 print "hey, ";n$;"??? you left no money at all!"
355 print "you are cheating me out of my hard-earned living."
360 print:print "what a rip off, ";n$;"!!!":print
365 goto 385
370 print "that's honest, ";n$;", but how do you expect"
375 print "me to go on with my psychology studies if my patients"
380 print "don't pay their bills?"
385 print:print "take a walk, ";n$;".":print:print:goto 999
390 print "nice meeting you, ";n$;", have a nice day."
400 rem
999 end
