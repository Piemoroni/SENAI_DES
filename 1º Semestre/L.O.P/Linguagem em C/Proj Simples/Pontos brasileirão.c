//Biblioteca
#include <stdio.h>
#include <locale.h>
//Inicio
int main (){
    setlocale (LC_ALL,""); //Passar a localização
    char Time[20];
    int Vitória, Empate, Pontos;
    //Solicitar os dados
    printf ("Informe o time:\n");
    scanf ("%s", Time);
    printf ("Informe a quantidade de vitórias:\n");
    scanf ("%d",&Vitória);
    printf ("Informe a quantidade de empates:\n");
    scanf ("%d",&Empate);
    //Processamento
    Pontos = ( Vitória * 3) + ( Empate * 1 );
    //Imprimir
    printf ("A quantidade é:%d", Pontos);
    //Fim
    return 0;
}