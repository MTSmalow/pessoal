#include <stdio.h>
#include <locale.h>
int main()
{
    setlocale(LC_ALL,"portuguese");

    int idade = 17;
    float altura_william =1.901;
    char sexo = "M";
    
    printf("A idade é : %d anos\n", idade);
    printf("a altura é: %.2f \n", altura_william);
    printf("seu sexo é: %C ", sexo);
    
    /*
    %d ou %i:
    imprime um numero (do tipo int)
    
    %f: imprime um numero de ponto
    flutuante(do tipo float ou double)
    
    %c: imprime um unico caracter
    */
}