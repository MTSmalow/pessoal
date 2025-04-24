#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	setlocale(LC_ALL,"portuguese");
	
	int idade;
	
	printf("digite sua idade: ");
	scanf("%d", &idade);
	
	if (idade >= 18){
		printf("voce é maior de idade\n");
	}
	else if (idade >=12 && idade <=17){
		printf("voce é adolecente\n");
	}
    else if (idade >= 65)
    {
        printf("voce é velho");
    }
	else{
		printf("voce é uma criaça");
	}
	return 0;
}