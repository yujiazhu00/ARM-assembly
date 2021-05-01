		; takes the factorial of the number in R0
    ; results written to R0
		MOV		R0, #5
		MOV		R1, #1
		MOV		R12, #1
		STMFD	SP!, {R4, R5, R6, R7}
		MOV		R3, SP
		
factorial
		
		CMP		R0, #1
		BLE		return1
		STMFD	SP!, {R0}
		SUB		R0, R0, #1
		B		factorial
		
return1
		
		CMP		SP, R3
		BGE		return2
		LDR		R12, [SP]
		MOV		R4, R1
		MOV		R5, R12
		MOV		R6, #0
		MOV		R7, #0
		BL		MULNUM
		ADD		SP, SP, #4
		B		return1
		
MULNUM
		CMP		R6, R5
		BGE		loop2
		ADD		R7, R7, R4
		ADD		R6, R6, #1
		B		MULNUM
		
loop2
		MOV		R1, R7
		MOV		PC, LR
return2
		
		MOV		R0, R1
		LDMFD	SP!, {R4, R5, R6, R7}
		END
