#include <stdio.h>
#include <locale.h>
#include <stdlib.h>
//Inicio
int main(){
    int opcao, qnt, i;
    float preco, t = 0, subtotal;
    char continuar;
     do{
         printf("Seja bem-vindo a loja Byte Aqui! Aqui estão nossos produtos disponíveis:\n");
         printf("1 - Teclado - R$100,00\n");
         printf("2 - Mouse - R$50,00\n");
         printf("3 - Monitor - R$800,00\n");
         printf("4 - Placa de video - R$2000,00\n");
         printf("5 - Sair\n");
         scanf("%d", &opcao);
         
         if (opcao == 5) {
            printf("Total final da compra: R$ %.2f\n", t);
            printf("Obrigado por comprar conosco! A loja Byte Aqui agradece a preferência.\n");
            break;
        }
        
        switch(opcao){
            case 1: 
                preco = 100.00;
                printf("Você escolheu o teclado! Qual quantidade deseja comprar?\n");
                scanf("%d", &qnt);
                break;
            case 2:
                preco = 50.00;
                printf("Você escolheu o Mouse! Qual quantidade deseja comprar?\n");
                scanf("%d", &qnt);
                break;
            case 3:
                preco = 800.00;
                printf("Você escolheu o Monitor! Qual quantidade deseja comprar?\n");
                scanf("%d", &qnt);
                break;
            case 4: 
                preco = 2000.00;
                printf("Você escolheu a Placa de Vídeo! Qual quantidade deseja comprar?\n");
                scanf("%d", &qnt);
                break;
            default:
                printf("Opção inválida =( tente novamente!\n");
                continue;
        }
        
        subtotal = 0;  
        for (i = 0; i < qnt; i++){
            subtotal += preco;
        }
        
        t += subtotal;
        printf("Item adicionado ao seu carrinho! Total Parcial: R$ %.2f\n", t);
        
        getchar(); 
        printf("Deseja comprar mais produtos? ('s' para sim ou 'n' para não)\n");
        scanf("%c", &continuar);
    } while (continuar == 's' || continuar == 'S');

    printf("\n---Nota Fiscal---\n");
    printf("Total da compra: R$ %.2f\n", t);
    printf("Obrigado pela preferência! A loja Byte Aqui agradece.\n");
    
    return 0;
}
