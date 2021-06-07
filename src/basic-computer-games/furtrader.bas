1 dim f(4) 
2 print tab(31);"fur trader"
4 print tab(15);"creative computing  morristown, new jersey"
6 print: print: print
15 gosub 1091 
16 let i=600
17 print "do you wish to trade furs?"
18 gosub 1402 
19 if b$="yes" then 100
20 if b$="yes " then 100
21 stop
100 print
101 print "you have $";i " savings."
102 print "and 190 furs to begin the expedition."
261 let e1=int((.15*rnd(1)+.95)*10^2+.5)/10^2
262 let b1=int((.25*rnd(1)+1.00)*10^2+.5)/10^2
300 print
301 print "your 190 furs are distributed among the following"
302 print "kinds of pelts: mink, beaver, ermine and fox."
310 gosub 1430 
315 restore
330 for j=1 to 4 
332 read b$
333 print  
335 print "how many ";b$;" pelts do you have"; 
338 input f(j) 
340 let f(0)=f(1)+f(2)+f(3)+f(4) 
342 if f(0)=190 then 1100
344 if f(0)>190 then 500 
348 next j 
350 goto 1100 
500 print
501 print "you may not have that many furs."   
502 print "do not try to cheat.  i can add." 
503 print "you must start again."
504 goto 15 
508 print
511 print "do you want to trade furs next year?"
513 goto 18 
1091 print "you are the leader of a french fur trading expedition in "
1092 print "1776 leaving the lake ontario area to sell furs and get"  
1093 print "supplies for the next year.  you have a choice of three"
1094 print "forts at which you may trade.  the cost of supplies"
1095 print "and the amount you receive for your furs will depend" 
1096 print "on the fort that you choose." 
1099 return 
1100 print "you may trade your furs at fort 1, fort 2,"
1102 print "or fort 3.  fort 1 is fort hochelaga (montreal)"
1103 print "and is under the protection of the french army."  
1104 print "fort 2 is fort stadacona (quebec) and is under the" 
1105 print "protection of the french army.  however, you must"
1106 print "make a portage and cross the lachine rapids." 
1108 print "fort 3 is fort new york and is under dutch control."  
1109 print "you must cross through iroquois land."
1110 print "answer 1, 2, or 3."
1111 input b
1112 if b=1 then 1120 
1113 if b=2 then 1135 
1115 if b=3 then 1147 
1116 goto 1110 
1120 print "you have chosen the easiest route.  however, the fort"  
1121 print "is far from any seaport.  the value"  
1122 print "you receive for your furs will be low and the cost"   
1123 print "of supplies higher than at forts stadacona or new york."
1125 gosub 1400 
1129 if b$="yes" then 1110
1130 goto 1160
1135 print "you have chosen a hard route.  it is, in comparsion," 
1136 print "harder than the route to hochelaga but easier than"   
1137 print "the route to new york.  you will receive an average value"
1138 print "for your furs and the cost of your supplies will be average."
1141 gosub 1400 
1144 if b$="yes" then 1110
1145 goto 1198
1147 print "you have chosen the most difficult route.  at"
1148 print "fort new york you will receive the highest value" 
1149 print "for your furs.  the cost of your supplies"
1150 print "will be lower than at all the other forts."   
1152 gosub 1400 
1155 if b$="yes" then 1110
1156 goto 1250
1160 let i=i-160
1169 print
1174 let m1=int((.2*rnd(1)+.7)*10^2+.5)/10^2
1175 let e1=int((.2*rnd(1)+.65)*10^2+.5)/10^2
1176 let b1=int((.2*rnd(1)+.75)*10^2+.5)/10^2
1177 let d1=int((.2*rnd(1)+.8)*10^2+.5)/10^2
1180 print "supplies at fort hochelaga cost $150.00."
1181 print "your travel expenses to hochelaga were $10.00."
1190 goto 1410 
1198 let i=i-140
1201 print
1205 let m1=int((.3*rnd(1)+.85)*10^2+.5)/10^2
1206 let e1=int((.15*rnd(1)+.8)*10^2+.5)/10^2
1207 let b1=int((.2*rnd(1)+.9)*10^2+.5)/10^2
1209 let p=int(10*rnd(1))+1
1210 if p<=2 then 1216
1212 if p<=6 then 1224
1213 if p<=8 then 1226
1215 if p<=10 then 1235
1216 let f(2)=0
1218 print "your beaver were too heavy to carry across" 
1219 print "the portage.  you had to leave the pelts, but found" 
1220 print "them stolen when you returned."
1221 gosub 1244 
1222 goto 1414 
1224 print "you arrived safely at fort stadacona." 
1225 goto 1239 
1226 gosub 1430 
1230 print "your canoe upset in the lachine rapids.  you"   
1231 print "lost all your furs." 
1232 gosub 1244 
1233 goto 1418 
1235 let f(4)=0 
1237 print "your fox pelts were not cured properly."
1238 print "no one will buy them."
1239 gosub 1244 
1240 goto 1410 
1244 print "supplies at fort stadacona cost $125.00."
1246 print "your travel expenses to stadacona were $15.00."
1248 return 
1250 let i=i-105
1254 print
1260 let m1=int((.15*rnd(1)+1.05)*10^2+.5)/10^2
1263 let d1=int((.25*rnd(1)+1.1)*10^2+.5)/10^2
1270 let p=int(10*rnd(1))+1
1271 if p<=2 then 1281
1272 if p<=6 then 1291
1273 if p<=8 then 1295
1274 if p<=10 then 1306
1281 print "you were attacked by a party of iroquois."
1282 print "all people in your trading group were"    
1283 print "killed.  this ends the game." 
1284 stop 
1291 print "you were lucky.  you arrived safely"
1292 print "at fort new york."
1293 goto 1311 
1295 gosub 1430 
1300 print "you narrowly escaped an iroquois raiding party."
1301 print "however, you had to leave all your furs behind."
1303 gosub 1320 
1304 goto 1418 
1306 let b1=b1/2
1307 let m1=m1/2
1308 print "your mink and beaver were damaged on your trip."
1309 print "you receive only half the current price for these furs."
1311 gosub 1320
1312 goto 1410 
1320 print "supplies at new york cost $80.00." 
1321 print "your travel expenses to new york were $25.00."
1322 return 
1400 print "do you want to trade at another fort?"
1402 print "answer yes or no",
1403 input b$
1404 return 
1410 print
1412 print "your beaver sold for $";b1*f(2);
1414 print "your fox sold for $";d1*f(4)
1416 print "your ermine sold for $";e1*f(3);
1417 print "your mink sold for $";m1*f(1)
1418 let i=m1*f(1)+b1*f(2)+e1*f(3)+d1*f(4)+i
1420 print
1422 print "you now have $";i;" including your previous savings"
1425 goto 508
1430 for j=1 to 4 
1432 let f(j)=0 
1434 next j 
1436 return 
2000 data "mink","beaver","ermine","fox"
2046 end
