//Biblioteca
#include <stdio.h>
#include <locale.h>
int main(){
    setlocale (LC_ALL,"");//Passar a localização
    char nome[20];
    float sal, reajuste, novoSal;
    //Solicitar os dados
    printf("Digite seu nome:\n");
    scanf("%s", nome);
    printf("Digite o seu salário:\n");
    scanf("%f",&sal);
    printf("Digite o percentual de reajuste:\n");
    scanf("%f",&reajuste);
    //Processamento
    novoSal   = sal + sal * (reajuste/ 100);
    //Imprimir
    printf("%s seu salário reajustado é de: %.2f", nome, novoSal);
    //Fim
    return 0;
    
    
}