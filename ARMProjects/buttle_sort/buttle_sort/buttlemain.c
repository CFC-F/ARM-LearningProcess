#include <stdio.h>

#define N 6
extern void sort(char * ,int);

int main()
{
	char  a[6]={'a','b','c','q','w','e'};     //,,16,7,15,8,13,9,12,10,21
	int i;
	printf("≈≈–Ú«∞£∫\n");
	for(i=0;i<N;i++)
		printf("%c\t",a[i]);
	sort(a,6);
	printf("\n ≈≈–Ú∫Û£∫ \n");
	for(i=0;i<N;i++)
		printf("%c\t",a[i]);
	
	return 0;
}