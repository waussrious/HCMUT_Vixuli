ORG 2000H
MAIN: 
MOV R7,#16
LP:
MOV TMOD,#01H
MOV TH0,#00H
MOV TL0,#00H
SETB TR0
JNB TF0,$
CLR TR0
CLR TF0
DJNZ R7, LP
CPL P1.0
SJMP  MAIN