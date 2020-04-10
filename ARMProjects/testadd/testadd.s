	area coeg,code,readonly
	export coeg
start
	;adcs r0,r0,r2
	;add r0,r0,r2
	;add r1,r1,r3
	adds r0,r0,r2
	adc r1,r1,r3 
	mov pc,lr
	end