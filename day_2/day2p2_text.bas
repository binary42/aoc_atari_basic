10 REM *** AOC 2022 DAY2 ***
15 REM *********************
20 REM * (C) BINARY42, 2022
25 REM *********************
35 R=1:P=2:S=3:REM SCORES
36 TOT=0
40 WIN=6:DRW=3:LS=0
42 DIM K$(1):DIM J$(1)
45 REM *** WIN,LOSE,DRAW ***
50 ROW=3:COLM=3:LNGTH=1
58 DIM A$(1):DIM B$(1):DIM C$(1):DIM X
$(1):DIM Y$(1):DIM Z$(1)
59 DIM TB(3,3):TB(1,1)=DRW:TB(2,2)=DRW
:TB(3,3)=DRW
60 TB(1,2)=WIN:TB(1,3)=LS:TB(2,1)=LS:T
B(2,3)=WIN:TB(3,1)=WIN:TB(3,2)=LS
61 FOR K=1 TO 2500
65 READ K$
70 IF K$="A" THEN ID=1
75 IF K$="B" THEN ID=2
80 IF K$="C" THEN ID=3
82 READ J$
85 IF J$="X" THEN GOSUB 400
90 IF J$="Y" THEN GOSUB 450
95 IF J$="Z" THEN GOSUB 500
100 V=TB(ID,IC)
114 TOT=TOT+V+VAL
115 NEXT K
118 PRINT TOT
200 END
400 REM *** SUBROUTINES ***
405 IF ID=1 THEN IC=3:VAL=3:GOTO 440
410 IF ID=2 THEN IC=1:VAL=1:GOTO 440
415 IF ID=3 THEN IC=2:VAL=2:GOTO 440
440 RETURN
450 IF ID=1 THEN IC=1:VAL=1:GOTO 490
455 IF ID=2 THEN IC=2:VAL=2:GOTO 490
460 IF ID=3 THEN IC=3:VAL=3:GOTO 490
490 RETURN
500 IF ID=1 THEN IC=2:VAL=2:GOTO 540
505 IF ID=2 THEN IC=3:VAL=3:GOTO 540
510 IF ID=3 THEN IC=1:VAL=1:GOTO 540
540 RETURN
999 REM *** DATA ***
