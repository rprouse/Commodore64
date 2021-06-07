5 print tab(24);"bible quiz"
6 print tab(20);"creative computing"
7 print tab(18);"morristown, new jersey"
9 print:print:print
10 print "this game is a quiz which tests "
20 print "your knowledge of biblical events, places, "
30 print "and persons."
40 print
50 print "i will ask you a question and then wait "
60  print "for your answer.  if your answer is correct "
70  print "i will proceed to the next question.  if your "
80  print "answer is incorrect i will give you the "
90  print "correct answer and then proceed to the "
100 print "next question."
110 print
118  print "all answers are one word."
119  print "all answers must be correctly spelled."
120  print "there is a total of 25 questions."
122  print "how many questions do you wish to try";
124 input n
130 print
135 dim s(25)
140 c=0
142 n1=0
145 restore
150 if c=n then 290
160 c=c+1
162 print
170 print "question #";c
180 print
183 x=int(rnd(1)*25+1)
184 if s(x)=1 then 183
185 s(x)=1
186 for q=1 to x:read q$,a$,v$:next q
210 print q$;
220 input r$
230 if r$=a$ then 270
240 print "incorrect answer"
250 print "the correct answer is ";a$;". ";v$
260 goto 145
270 print "correct answer--very good! ";v$
272 n1=n1+1
280 goto 145
290 print
292 print "out of ";n;" questions you answered";n1;" correctly."
294 p=int((n1/n)*100+.5)
296 print "your percentage for correct answers is";p;"%"
301 data "who set fire to three hundred foxes tails","samson"
302 data "1 judges 15:4,5"
303 data "what hebrew served a quick lunch under a tree"
304 data "abraham"," gen. 18:6-8"
305 data "what hungry man cursed a fruitless fig tree","jesus"
306 data " mark 11:12-14"
307 data "who killed his brother for humbling his sister"
308 data "absalom","2 sam. 13"
309 data "who had three hundred concubines","solomon","1 kings 11:1-3"
310 data "what boy had a variegated coat","joseph"," gen. 37:3"
311 data "who had a seamless coat","jesus"," john 19:23"
312 data "who took off his shoe to bind a contract","boaz","ruth 4:7-9"
313 data "who slept on an iron bedstead over thirteen feet long"
314 data "og"," duet. 3:11"
315 data "who was the first city-builder","cain"," gen. 4:17"
316 data "what physician was an author","luke"," col. 4:14"
317 data "what song-composer is credited with 1005 songs","solomon"
318 data "1 kings 4:32"
319 data "who was the first person killed","abel"," gen. 4:8"
320 data "who was buried in a cave with his wife","abraham"
321 data " gen. 25:9-10"
322 data "who accidently hanged himself in a tree","absalom"
323 data "2 sam. 18:9"
324 data "what blind han killed three thousand at a religous feast"
325 data "samson"," judges 16:23-30"
326 data "what was the name of the first city ever built"
327 data "enoch"," gen. 4:17"
328 data "who was a mighty hunter","nimrod"," gen. 10:9-12"
329 data "who drove furiously","jehu","2 kings 9:20"
330 data "who was the first christian martyr","stephen"," acts 7"
331 data "who fell asleep during a long sermon","eutychus"
332 data " acts 20:9"
333 data "what city is called the city of palm trees","jericho"
334 data " duet. 34:3"
335 data "who climbed a tree to see jesus","zacchaeus"," luke 19:4"
336 data "who killed goliath","david","1 sam. 17:49"
337 data "who was cast into a den of lions","daniel"," dan. 6:16"
400 end
