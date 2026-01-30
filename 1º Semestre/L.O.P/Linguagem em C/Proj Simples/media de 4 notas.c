#include <stdio.h>

int main (){
    int nota [4];
    int media;
    
    printf ("Digite a primeira nota:\n");
    scanf ("%d",&nota[0]);
    
    
    printf ("Digite a segunda nota:\n");
    scanf ("%d",&nota[1]);
    
    
    printf ("Digite a terceira nota:\n");
    scanf ("%d",&nota[2]);
    
    printf ("Digite a quarta nota:\n");
    scanf ("%d",&nota[3]);
    
    media = ((nota [0] + nota [1] + nota [2] + nota [3] )/ 4);
    
    printf ("O resultado da média é de: %d \n",media);
    
    return 0;
}