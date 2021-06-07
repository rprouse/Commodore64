10 print tab(33);"bounce"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
90 dim t(20)
100 print "this simulation lets you specify the initial velocity"
110 print "of a ball thrown straight up, and the coefficient of"
120 print "elasticity of the ball.  please use a decimal fraction"
130 print "coefficiency (less than 1)."
131 print
132 print "you also specify the time increment to be used in"
133 print "'strobing' the ball's flight (try .1 initially)."
134 print
135 input "time increment (sec)";s2
140 print
150 input "velocity (fps)";v
160 print
170 input "coefficient";c
180 print
182 print "feet"
184 print
186 s1=int(70/(v/(16*s2)))
190 for i=1 to s1
200 t(i)=v*c^(i-1)/16
210 next i
220 for h=int(-16*(v/32)^2+v^2/32+.5) to 0 step -.5
221 if int(h)<>h then 225
222 print h;
225 l=0
230 for i=1 to s1
240 for t=0 to t(i) step s2
245 l=l+s2
250 if abs(h-(.5*(-32)*t^2+v*c^(i-1)*t))>.25 then 270
260 print tab(l/s2);"0";
270 next t
275 t=t(i+1)/2
276 if -16*t^2+v*c^(i-1)*t<h then 290
280 next i
290 print
300 next h
310 print tab(1);
320 for i=1 to int(l+1)/s2+1
330 print ".";
340 next i
350 print
355 print " 0";
360 for i=1 to int(l+.9995)
380 print tab(int(i/s2));i;
390 next i
400 print
410 print tab(int(l+1)/(2*s2)-2);"seconds"
420 print
430 goto 135
440 end
