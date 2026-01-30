//Biblioteca
#include <stdio.h>
#include <locale.h>
//Inicio
int main (){
    setlocale(LC_ALL,"");
    int a,b,c,d;
    printf("Informe o primeiro número:\n");
    scanf("%d",&a);
    printf("Informe o segundo número:\n");
    scanf("%d",&b);
    printf("Informe o terceiro número\n");
    scanf("%d",&c);
    //Processamento
    d = (a+b)/c;
    //Saída
    printf ("O resultado é:%d",d);
    //Encerramento
    return 0;
}