		; specify the nth Fibonacci number to be computed in R3
    		; The output will be stored in R0
    		MOV		R0, #0 ; x1 = 0
		MOV		R1, #1 ; x2 = 1
		MOV		R2, #0 ; x3 = 0 - this is also the register where the results will be stored
		MOV		R3, #10 ; num2 = 10
		MOV		R4, #1 ; i = 1
		CMP		R3, #1 ; if input (num2) = 1, to return 1
		BEQ		state1
		CMP		R3, #0 ; if input (num2) < 1, to return 0
		BLT		state2
FOR
		CMP		R4, R3 ; starting for loop - to compare i with num2
		BGT		LOOP3
		ADD		R2, R1, R0 ; x3 = x2 + x1
		MOV		R0, R1 ; x1 = x2
		MOV		R1, R2 ; x2 = x3
		ADD		R4, R4, #1 ; increment counter
		B		FOR
state1
		MOV		R2, #1
state2
		MOV		R2, #0
LOOP3
    MOV		R0, R2
