#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>

main()
{
	int i=0, n=0;
	
	printf("Digite um numero de 0 a 100:");
	scanf("%i", &i);
	if(i%2==0)
	{
		printf("Seu mumero � par");
	}
	else{
		printf("Seu numero � impar");
	}
}
