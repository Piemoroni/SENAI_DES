#include <stdio.h>
#include <stdlib.h>

struct Pizza {
    char nome[50];
    float valor;
};

struct Cliente {
    char nome[50];
    int idade;
    char endereco[100];
};

struct Pizza pizzas[50];
struct Cliente clientes[50];
int totalpizza = 0;
int totalcliente = 0;

void CadastrarPizza();
void CadastrarCliente();
void ListarPizza();
void ListarClente();
void ComprarPizza();
void FinalizarFuncao();

int main() {
    int opcao;
    do {
        printf("---- Bem vindo(a) a pizzaria 'Nostra Pizza'! ----\n");
        printf("Escolha uma opção:\n");
        printf("1-) Cadastrar pizza\n");
        printf("2-) Cadastrar cliente\n");
        printf("3-) Listar pizza\n");
        printf("4-) Listar cliente\n");
        printf("5-) Comprar pizza\n");
        printf("6-) Sair\n");
        scanf("%d", &opcao);
        
        switch (opcao) {
            case 1:
            CadastrarPizza();
            FinalizarFuncao();
            break;
                
            case 2:
            CadastrarCliente();
            FinalizarFuncao();
            break;
                
            case 3:
            ListarPizza();
            FinalizarFuncao();
            break;
                
            case 4:
            ListarClente();
            FinalizarFuncao();
            break;
                
            case 5:
            ComprarPizza();
            FinalizarFuncao();
            break;
                
            case 6:
            printf("Obrigado(a) pela preferencia!\n");
            printf("Saindo...\n");
            break;
                
            default:
            printf("Opção invalida! Tente novamente!\n");
            FinalizarFuncao();
            break;
            
        }
        
    } while (opcao != 6);
    
    return 0;
}

void CadastrarPizza() {
    printf("Digite o nome da pizza:\n");
    scanf(" %[^\n]", pizzas[totalpizza].nome);
    
    printf("Digite o valor da pizza:\n");
    scanf("%f", &pizzas[totalpizza].valor);
    
    totalpizza++;
}

void CadastrarCliente() {
    printf("Digite o nome do cliente:\n");
    scanf(" %[^\n]", clientes[totalcliente].nome);
    
    printf("Digite sua idade:\n");
    scanf("%d", &clientes[totalcliente].idade);
    
    printf("Informe seu endereço (Rua, Bairro e Número): \n");
    scanf(" %[^\n]", clientes[totalcliente].endereco);
    
    totalcliente++;
}

void ListarPizza() {
    for (int i = 0; i < totalpizza; i++) {
        
        printf("\nPizza %d: %s \nR$ %.2f\n", i + 1, pizzas[i].nome, pizzas[i].valor);
    }
}

void ListarClente() {
    for (int i = 0; i < totalcliente; i++) {
        
        printf("\nCliente %d: %s\n", i + 1, clientes[i].nome);
        printf("Idade: %d\n", clientes[i].idade);
        printf("Endereço: %s\n", clientes[i].endereco);
    }
}

void ComprarPizza() {
    int cliente;
    float total = 0;
    int qntdpizza;
    int pizza;
    
    printf("Digite o número do cliente:\n");
    scanf("%d", &cliente);
    
    if (cliente > 0 && cliente <= totalcliente) {
        
        printf("\nPizzas disponíveis:\n");
        ListarPizza();
        
        printf("\nQuantas pizzas você deseja comprar?\n");
        scanf("%d", &qntdpizza);
        
        printf("\nComprar:\n");
        
        for (int i = 0; i < qntdpizza; i++) {
            
            printf("Digite o número da pizza %d: \n", i + 1);
            scanf("%d", &pizza);
            
            if (pizza > 0 && pizza <= totalpizza) {
                printf("\n%s \nR$ %.2f\n", pizzas[pizza - 1].nome, pizzas[pizza - 1].valor);
                total += pizzas[pizza - 1].valor;
            } else {
                printf("Pizza inválida!\n");
            }
        }
        
        printf ("\n---- Notinha -----\n");
        printf("\nTotal: R$ %.2f\n", total);
    } else {
        printf("Cliente inválido!\n");
    }
}

void FinalizarFuncao() {
    
    printf("\nEnter para Continuar....\n");
    getchar();
    getchar();
    system("clear");
}
