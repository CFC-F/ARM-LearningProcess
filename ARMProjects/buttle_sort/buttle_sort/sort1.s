	area sort ,code ,readonly
	export sort
start
	mov r3,r0
	mov r7,r1  		;第一层计数,i=N
loop0
	sub r7,r7,#1   ;r7=i=N-1,倒计数
	cmp r7,#0
	beq endh		;相等时跳转
	mov r2,#0 		;第二层循环计数,j=0
loop
	add r4,r2,#1
	ldrb r5,[r3,r2]
	ldrb r6,[r3,r4]
	cmp r5,r6
	bgt jh          ;r5>r6,交换
	b judge         ;不交换
jh 
	strb r5,[r3,r4]
	strb r6,[r3,r2]
	b judge
	
judge	
	;add r3,r3,#1
	add r2,r2,#1    ;j=j+1
	cmp r2,r7       ;内循环次数, i与j
	bne loop       ;不相等，跳转
	b loop0

endh
	end
	
	
;使用add r3,r3,#1来改变取一个字节的数据，或出现问题