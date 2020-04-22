	area sort ,code ,readonly
	export sort
start
	sub r1,r1,#1    ;比较次数为N-1
	mov r7, #-1  	;第一层计数,i
	
loopl
	cmp r7,r1       ;r1 = N-1,i与N-1比较
	beq endh		;相等时跳转
	add r7,r7,#1    ;i=0
	mov r8, #-1		;第二层循环计数,j
loop
	add r8,r8,#1    ;j=0
	add r10,r8,#1   ;r10=j+1
	sub r9,r1,r7    ;r9 = N-i-1
	cmp r8,r9       ;j与N-i-1比较
	beq loopl
	
	ldrb r5,[r0,r8]
	ldrb r6,[r0,r10]
	cmp r5,r6
	blt loop          ;r5>r6,交换
	;b loop         ;不交换
jh 
	strb r5,[r0,r10]
	strb r6,[r0,r8]
	b loop
	
endh
	end