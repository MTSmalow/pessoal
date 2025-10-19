#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
    setlocale(LC_ALL, "Portuguese");
    
    int num1,i = 0,total;

    while(i < 5){
        printf("digite um numero \n");
        scanf("%d", &num1);
        i++;

        if(num1 >= 0){
            total = total + num1;
        }
        
        
    }
    
    printf("o total é: %d\n", total);
    system("pause");
	return 0;
}
