#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
    setlocale(LC_ALL, "Portuguese");
    
    int num1,i = 0,totze=0,totposi=0,totnega=0;

    while(i < 10){
        printf("digite um numero \n");
        scanf("%d", &num1);
        i++;

        if(num1 > 0){
            totposi++;
        }
        else if(num1 == 0){
            totze++;
        }
        else{
            totnega++;
        }
        
    }
    
    printf("o total de positivos é: %d\n", totposi);
    printf("o total de negativos é: %d\n", totnega);
    printf("o total de zeros é: %d\n", totze);

    system("pause");
	return 0;
}
