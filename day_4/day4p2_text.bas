10 REM *** AOC 2022 DAYp2 4 ***
15 REM *********************
20 REM * (C) BINARY42, 2022
25 REM *********************
28 TRAP 135
30 DIM A$(5):DIM B$(5)
35 DIM LL$(2):DIM LR$(2):DIM DSH(1):DI
M RR$(2):DIM RL$(2)
37 COUNT=0
80 PRINT "RUNNING"
99 REM *** MAIN LOOP ***
100 FOR X=1 TO 1000
110 READ A$:READ B$
125 GOSUB 200
127 GOSUB 300
128 GOSUB 400
129 A$="":B$="":LR$="":LL$="":RR$="":R
L$=""
130 NEXT X
135 PRINT "TOTAL CONTAINS: ";COUNT
137 PRINT X
140 END
200 REM *** DELIM SUB ***
210 FOR L=1 TO LEN(A$)
215 IF A$(L,L)="-" THEN GOTO 250
220 LL$(L,L)=A$(L,L)
225 NEXT L
250 L=L+1:M=1
252 FOR T=L TO LEN(A$)
255 LR$(M,M)=A$(T,T)
256 M=M+1
260 NEXT T
270 RETURN
300 REM *** RIGHT SIDT SUB
310 FOR L=1 TO LEN(B$)
315 IF B$(L,L)="-" THEN GOTO 350
320 RL$(L,L)=B$(L,L)
325 NEXT L
350 L=L+1:M=1
352 FOR T=L TO LEN(B$)
355 RR$(M,M)=B$(T,T)
356 M=M+1
360 NEXT T
370 RETURN
400 REM *** COMPARE SUB ***
430 IF VAL(LL$)<=VAL(RL$) AND VAL(LR$)
>=VAL(RR$) THEN COUNT=COUNT+1:GOTO 450

440 IF VAL(RL$)<=VAL(LL$) AND VAL(RR$)
>=VAL(LR$) THEN COUNT=COUNT+1:GOTO 450

442 IF VAL(LL$)=VAL(RL$) THEN COUNT=CO
UNT+1:GOTO 450
444 IF VAL(LR$)=VAL(RR$) THEN COUNT=CO
UNT+1:GOTO 450
446 IF VAL(LR$)>VAL(RL$) THEN COUNT=CO
UNT+1:GOTO 450
447 IF VAL(LR$)=VAL(RL$) THEN COUNT=CO
UNT+1:GOTO 450
450 RETURN
999 REM *** DATA ***