#include <stdio.h>
//extern int coeg(int,int);
extern long long int coeg(long long int,long long int);
int main()
{
	long long int x=42949672971;    //A 0000 000B
	long long int y=42949672991;    //A 0000 001F
	
	long long int sum=coeg(x,y);
	printf("两个数的结果为:%lld\n",sum);
	return 0;
}