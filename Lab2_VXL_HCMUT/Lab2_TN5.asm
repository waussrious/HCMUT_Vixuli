ORG 		2000H
MAIN:
	MOV R0,#0    
	MOV A,R0
	MOV DPTR,#COT
	MOVC A,@A+DPTR  	
	MOV DPTR,#08000H
	MOVX @DPTR,A
	
	
	MOV DPTR,#0A000H
	MOV A,#10101010b
	MOVX @DPTR,A
COT:	DB 10000000B, 01000000B, 00100000B, 00010000B, 00001000B,  00000100B, 00000010B, 00000001B
END