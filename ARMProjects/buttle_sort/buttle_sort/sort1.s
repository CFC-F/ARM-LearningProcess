	area sort ,code ,readonly
	export sort
start
	mov r3,r0
	mov r7,r1  		;��һ�����,i=N
loop0
	sub r7,r7,#1   ;r7=i=N-1,������
	cmp r7,#0
	beq endh		;���ʱ��ת
	mov r2,#0 		;�ڶ���ѭ������,j=0
loop
	add r4,r2,#1
	ldrb r5,[r3,r2]
	ldrb r6,[r3,r4]
	cmp r5,r6
	bgt jh          ;r5>r6,����
	b judge         ;������
jh 
	strb r5,[r3,r4]
	strb r6,[r3,r2]
	b judge
	
judge	
	;add r3,r3,#1
	add r2,r2,#1    ;j=j+1
	cmp r2,r7       ;��ѭ������, i��j
	bne loop       ;����ȣ���ת
	b loop0

endh
	end
	
	
;ʹ��add r3,r3,#1���ı�ȡһ���ֽڵ����ݣ����������