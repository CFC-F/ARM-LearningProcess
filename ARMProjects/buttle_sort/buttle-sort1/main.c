#include <stdio.h>
#define N 6
extern void sort(char* num,int count);

int main()
{
	char a[6]={'a','b','c','d','f','e'};     //,,16,7,15,8,13,9,12,10,21
	int i;
	printf("����ǰ��\n");
	printf("%s",a);
	sort(a,6);
	printf("\n ����� \n");
	printf("%s",a);
	
	return 0;
}