5 rem poke hex codes into memory
10 print "input the address in 4 hex digits"
20 gosub 100:addr=num:k=0
30 print "input the hex codes, one per line"
50 gosub 100
60 if num=-1 then 300
70 poke addr+k,num:k=k+1
80 goto 50
100 input a$:if a$="" then num=-1: return
110 num=val("&h"+a$):return
300 print "done":end
