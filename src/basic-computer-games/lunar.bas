10 print tab(33);"lunar"
20 print tab(l5);"creative computing morristown, new jersey" 
25 print:print:print
30 print "this is a computer simulation of an apollo lunar" 
40 print "landing capsule.": print: print
50 print "the on-board computer has failed (it was made by" 
60 print "xerox) so you have to land the capsule manually."
70 print: print "set burn rate of retro rockets to any value between" 
80 print "0 (free fall) and 200 (maximum burn) pounds per second." 
90 print "set new burn rate every 10 seconds.": print 
100 print "capsule weight 32,500 lbs; fuel weight 16,500 lbs."
110 print: print: print: print "good luck"
120 l=0
130 print: print "sec","mi + ft","mph","lb fuel","burn rate":print 
140 a=120:v=1:m=33000:n=16500:g=1e-03:z=1.8
150 print l,int(a);int(5280*(a-int(a))),3600*v,m-n,:input k:t=10 
160 if m-n<1e-03 then 240
170 if t<1e-03 then 150
180 s=t: if m>=n+s*k then 200
190 s=(m-n)/k
200 gosub 420: if i<=0 then 340
210 if v<=0 then 230
220 if j<0 then 370
230 gosub 330: goto 160
240 print "fuel out at";l;"seconds":s=(-v+sqr(v*v+2*a*g))/g
250 v=v+g*s: l=l+s
260 w=3600*v: print "on moon at";l;"seconds - impact velocity";w;"mph" 
274 if w<=1.2 then print "perfect landing!": goto 440 
280 if w<=10 then print "good landing (could be better)":goto 440 
282 if w>60 then 300
284 print "craft damage... you're stranded here until a rescue" 
286 print "party arrives. hope you have enough oxygen!" 
288 goto 440
300 print "sorry there were no survivors. you blew it!"
310 print "in fact, you blasted a new lunar crater";w*.227;"feet deep!"
320 goto 440
330 l=l+s: t=t-s: m=m-s*k: a=i: v=j: return
340 if s<5e-03 then 260
350 d=v+sqr(v*v+2*a*(g-z*k/m)):s=2*a/d
360 gosub 420: gosub 330: goto 340
370 w=(1-m*g/(z*k))/2: s=m*v/(z*k*(w+sqr(w*w+v/z)))+.05:gosub 420
380 if i<=0 then 340
390 gosub 330: if j>0 then 160
400 if v>0 then 370
410 goto 160
420 q=s*k/m: j=v+g*s+z*(-q-q*q/2-q^3/3-q^4/4-q^5/5)
430 i=a-g*s*s/2-v*s+z*s*(q/2+q^2/6+q^3/12+q^4/20+q^5/30):return
440 print:print:print:print "try again??": goto 70
