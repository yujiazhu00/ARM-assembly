		; Result of multiplication is written to R0
   		; this code is needed because the VisUAL instruction set does not include multiply
    		; code multiplies numbers in R0 and R1
    		MOV		R0, #70
		MOV		R1, #20
		MOV		R2, #0 ; i
		MOV		R3, #0 
MULNUM
		CMP		R2, R1
		BGE		loop2
		ADD		R3, R3, R0
		ADD		R2, R2, #1
		B		MULNUM
		
loop2
		MOV		R0, R3
		END
