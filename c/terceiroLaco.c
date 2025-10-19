#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main(int argc, char *argv[]) {
    setlocale(LC_ALL, "Portuguese");
    
    int num1;

    printf("digite um numero \n");
    scanf("%d", &num1);

    while(num1 > 1){
        if(num1 % 2 == 0){
            printf("%d \n", num1);
            num1 = num1 - 1;
        }
    }
    system("pause");
	return 0;
}
