#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {

    int i = 0;

    // Exemplos de laço de repetição

    printf("Laço while\n");

    while(i < 5){
        printf("valor de i: %d \n", i);
        i++; // i = i + 1;
    }

    printf("Laço Do-While\n");

    int j = 0;

    do{

            print("valor de j: %d\n", j);
            j++;
    } while(j< 5);

    system("pause");


    int k;

    for(k = 0; k < 5; k++){
        printf("valor k: %d\n", k);
    }





	return 0;
}
