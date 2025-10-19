#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <time.h>

int main(int argc, char *argv[]) {
    int secreto;
    int chute;
    int tentativas = 0;

    srand(time(NULL));
    secreto = rand() % 100 + 1;

    setlocale(LC_ALL, "Portuguese");
    do
    {
        printf("tente adivinhar o numero entra 1 e 100 \n");
        scanf("%d", &chute);
        
        if(secreto < chute){
            printf("chutou muito alto \n");
        }
        else if(secreto > chute){
            printf("chutou muito baixo \n");
        }
        else{
            printf("certo \n");
        }

        if(tentativas == 1){
            printf("MB \n");
        }
        else if (tentativas <= 4)
        {
            printf("B \n");
        }
        else if (tentativas <= 6)
        {
            printf("R \n");
        }
        else{
            printf("I \n");
        }
        tentativas = tentativas + 1;
    } while (secreto != chute && tentativas <= 10);
    
    system("pause");
	return 0;
}