	area sort ,code ,readonly
	export sort
start
	sub r1,r1,#1    ;�Ƚϴ���ΪN-1
	mov r7, #-1  	;��һ�����,i
	
loopl
	cmp r7,r1       ;r1 = N-1,i��N-1�Ƚ�
	beq endh		;���ʱ��ת
	add r7,r7,#1    ;i=0
	mov r8, #-1		;�ڶ���ѭ������,j
loop
	add r8,r8,#1    ;j=0
	add r10,r8,#1   ;r10=j+1
	sub r9,r1,r7    ;r9 = N-i-1
	cmp r8,r9       ;j��N-i-1�Ƚ�
	beq loopl
	
	ldrb r5,[r0,r8]
	ldrb r6,[r0,r10]
	cmp r5,r6
	blt loop          ;r5>r6,����
	;b loop         ;������
jh 
	strb r5,[r0,r10]
	strb r6,[r0,r8]
	b loop
	
endh
	end