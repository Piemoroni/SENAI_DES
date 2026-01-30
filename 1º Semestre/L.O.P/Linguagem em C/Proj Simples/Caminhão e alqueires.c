//Biblioteca
#include <stdio.h>
#include <locale.h>
//Inicio
int main (){
    setlocale (LC_ALL,"");
    int Caminhões, Alqueires, Viajens; 
    //Dados
    printf ("Informe a quantidade de caminhões:\n");
    scanf ("%d",&Caminhões);
    printf ("Informe a quantidade de alqueires:\n");
    scanf ("%d",&Alqueires);
    //Processamento
    Viajens = (Alqueires * 250) / (Caminhões * 18);
    printf ("A quantidade de viajens necessária é:%d", Viajens);
    //Fim
    return 0;
}