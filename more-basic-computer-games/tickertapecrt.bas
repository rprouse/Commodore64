5 PRINT TAB(24);"TICKERTAPE"
6 PRINT TAB(20);"CREATIVE COMPUTING"
7 PRINT TAB(18);"MORRISTOWN, NEW JERSEY"
9 PRINT:PRINT:PRINT
10 INPUT A$:GOSUB 80
20 FOR N=1 TO LEN(A$)
25 B=ASC(MID$(A$,N,1))
30 IF B>90 THEN 47
33 IF B<65 THEN 40
35 B=B-64
37 GOTO 50
40 IF B>57 OR B<48 THEN 47
43 B=B-20
45 GOTO 50
47 B=27
50 FOR S=0 TO (B-1)*5:READ A:NEXT S
60 FOR S=1 TO 5:READ A:GOSUB 1000:NEXT S
65 A=0:GOSUB 1000:RESTORE
70 NEXT N
75 GOSUB 80:END
80 FOR N=1 TO 30:A=0:GOSUB 1000:NEXT N
90 RETURN
110 DATA 0,254,9,9,9,254,255,137,137,137,118,126,129,129,129,129
120 DATA 255,129,129,129,126,255,137,137,137,137,255,9,9,9,1
130 DATA 126,129,129,145,243,255,8,8,8,255,129,129,255,129,129
140 DATA 96,128,129,127,1,255,8,20,34,193,255,128,128,128,128
150 DATA 255,2,12,2,255,255,2,60,64,255,126,129,129,129,126
160 DATA 255,9,9,9,6,126,129,161,65,190
170 DATA 255,25,41,73,134,134,137,137,137,113,1,1,255,1,1
180 DATA 127,128,128,128,127,63,96,192,96,63,127,128,112,128,127
215 DATA 195,36,24,36,195,3,4,248,4,3,193,161,145,137,135
220 DATA 0,0,0,0,0,126,161,137,133,126,132,130,255,128,128,194,161,145
230 DATA 137,134,66,137,137,137,118,12,10,137,255,136,199,137,137,137
240 DATA 248,126,137,137,137,114,1,1,249,5,2,118,137,137,137,118
250 DATA 70,137,137,137,126
1000 FOR I = 1 TO 8
1010 IF A < 128 THEN PRINT " ";:GOTO 1030
1020 PRINT "*";:A=A-128
1030 A = A * 2
1040 NEXT I
1050 PRINT
1060 RETURN
