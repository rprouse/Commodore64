10 print tab(26);"buzzword generator"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
40 print "this program prints highly acceptable phrases in"
50 print "'educator-speak' that you can work into reports"
60 print "and speeches.  whenever a question mark is printed,"
70 print "type a 'y' for another phrase or 'n' to quit."
80 print:print:print "here's the first phrase:"
90 dim a$(40)
100 for i=1 to 39 : read a$(i) : next i
110 print a$(int(13*rnd(1)+1));" ";
120 print a$(int(13*rnd(1)+14));" ";
130 print a$(int(13*rnd(1)+27)) : print
150 input y$ : if y$="y" then 110
160 goto 999
200 data "ability","basal","behavioral","child-centered"
210 data "differentiated","discovery","flexible","heterogeneous"
220 data "homogeneous","manipulative","modular","tavistock"
230 data "individualized","learning","evaluative","objective"
240 data "cognitive","enrichment","scheduling","humanistic"
250 data "integrated","non-graded","training","vertical age"
260 data "motivational","creative","grouping","modification"
270 data "accountability","process","core curriculum","algorithm"
280 data "performance","reinforcement","open classroom","resource"
290 data "structure","facility","environment"
999 print "come back when you need help with another report!":end
