10 print tab(22);"lissajous"
20 print tab(18);"creative computing"
30 print tab(16);"morristown  new jersey"
40 print:print:print
50 dim y(10)
100 rem. step-wise lissajous
110 p=3.1415926
120 print "relative freq. for x";:input f1:if int(f1) < f1 then 120
122 if f1 < 1 then 120
125 f=f1:f1=2*p*f1
130 print "relative freq. for y";:input f2:if int(f2) < f2 then 130
132 if f2 < 1 then 130
135 print "y phase, multiple of pi";:input p2:p2=p*p2
140 f2=2*p*f2
150 for x1=-18 to 18
160 x=x1/18:gosub 1970:t1=x:t2=p-x
162 for i=0 to f-1
165 t3=(t1+2*i*p)/f1:t4=(t2+2*i*p)/f1
170 y1=30*sin(f2*t3+p2):y2=30*sin(f2*t4+p2)
180 y1=sgn(y1)*int(abs(y1)+.5):y2=sgn(y2)*int(abs(y2)+.5)
190 y(2*i)=y1:y(2*i+1)=y2
200 next i
210 for j=1 to 2*f-1:i=j-1:t=y(j)
220 if t >= y(i) then 240
230 y(i+1)=y(i):i=i-1:if i >=0 then 220
240 y(i+1)=t:next j
250 for i=0 to 2*f-1
260 if i=0 then 280
270 if y(i)=y(i-1) then 290
280 print tab(36+y(i));"*";
290 next i
300 print
310 next x1
1890 stop
1960 rem:-----------------------------------
1970 if abs(x) < .1 then 2020
1980 x=x/(sqr(1+x)+sqr(1-x))
1990 gosub 1970
2000 x=2*x
2010 return
2020 x=x+x^3/6+.075*x^5+x^7/22.4
2030 return
2040 end
