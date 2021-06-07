10 print tab(33);"letter"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
100 print "letter guessing game": print
210 print "i'll think of a letter of the alphabet, a to z."
220 print "try to guess my letter and i'll give you clues"
230 print "as to how close you're getting to my letter."
310 l=65+int(rnd(1)*26)
320 g=0
340 print: print "o.k., i have a letter.  start guessing."
410 print: print "what is your guess";
420 g=g+1
430 input a$: a=asc(a$): print
440 if a=l then 500
450 if a>l then 480
460 print "too low.  try a higher letter.": goto 410
480 print "too high.  try a lower letter.": goto 410
500 print: print "you got it in";g;"guesses!!"
504 if g<=5 then 508
506 print "but it shouldn't take more than 5 guesses!": goto 515
508 print "good job !!!!!"
510 for n=1 to 15: print chr$(7);: next n
515 print
520 print "let's play again....."
530 goto 310
999 end
