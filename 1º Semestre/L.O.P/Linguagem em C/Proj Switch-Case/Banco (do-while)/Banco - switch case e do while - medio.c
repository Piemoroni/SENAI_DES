//Biblioteca
#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

int main () {
    int opcao;
    float n,conta;
    do{
       printf ("Bem-vindo(a) ao Banco!\n");
       printf ("Escolha as opçãoes\n");
       printf ("Opção 1 = Depositar dinheiro\n");
       printf ("Opção 2 = Sacar dinheiro\n");
       printf ("Opção 3 = Consultar saldo\n");
       printf ("Opção 4 = Sair\n");
       scanf ("%d",&opcao);
       
       switch (opcao) {
           case 1:
                printf ("Você escolheu ''Depositar dinheiro''!\n");
                printf ("Informe a quantidade de deposito:\n");
                scanf ("%f",&n);
                conta = 1000 + n;
                printf ("Seu saldo agora é de: %.2f reais\n",conta);
                break;
            
            case 2:
                printf ("Você esclheu ''Sacar dinheiro''!\n");
                printf ("Informe a quantidade de saque:\n");
                scanf ("%f",&n);
                conta = 1000 - n;
                printf ("Seu saldo é de: %.2f reais após o saque de %.2f \n",conta,n);
                break;
            
            case 3: 
                printf ("Você escolheu ''Consultar saldo''!\n");
                printf ("Seu slado é de: 1000 reais\n");
                break;
            
            
            case 4: 
                printf ("Saindo...");
                break;
            
            default: 
                printf ("Opção inválida, tente novamente!\n");
        }
        printf ("Pressione Enter para continuar...");
        getchar ();
        getchar ();
        
        system ("clear");
        
    } while (opcao != 4);
     return 0;
}