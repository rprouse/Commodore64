1 print tab(32);"3d plot"
2 print tab(15);"creative computing  morristown, new jersey"
3 print:print:print
5 def fna(z)=30*exp(-z*z/100)
100 print
110 for x=-30 to 30 step 1.5
120 l=0
130 y1=5*int(sqr(900-x*x)/5)
140 for y=y1 to -y1 step -5
150 z=int(25+fna(sqr(x*x+y*y))-.7*y)
160 if z<=l then 190
170 l=z
180 print tab(z);"*";
190 next y
200 print
210 next x
300 end
