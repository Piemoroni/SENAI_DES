#include <stdio.h>
#include <locale.h>

int main() {
    setlocale(LC_ALL, "");
    int datae, datas, qntd, telefone, opção, op; // data de entrada, data de saída
    char nome[20], sobrenome[20], cidade[30], servico[3], cpf[15], pedido [3], confirmar [3];
    float valor, hora, vmassagem;
    printf("Bem vindo a nosso hotel!\n");
    printf("Insira seu nome:\n");
    scanf("%s", nome);
    printf("Insira seu sobrenome:\n");
    scanf("%s", sobrenome);
    printf("Insira a cidade onde você mora:\n");
    scanf("%s", cidade);
    printf("Insira seu número telefonico:\n");
    scanf("%d", &telefone);
    printf("Informe seu CPF:\n");
    scanf("%s", cpf);
    printf("Insira a data de entrada:\n");
    scanf("%d", &datae);
    printf("Insira a data de saída:\n");
    scanf("%d", &datas);
    qntd = datas - datae; 
    valor = qntd * 300.00;
    printf("O valor da sua estadia será de: %.2f reais",valor);
    scanf("%d",&op);
    
    if (op == 1 ) { 
        printf("Escolha uma das opções:\n");
        printf("Opção 1 = Limpeza de quarto\n");
        printf("Opção 2 = Lavanderia\n");
        printf("Opção 3 = Solicitar item\n");
        scanf("%d", &opção);
        switch (opção) {
            case 1:
                printf("Você escolheu Limpeza!\n");
                printf("Escolha a hora da sua limpeza:\n");
                printf("Opção 1 = 03:45\n");
                printf("Opção 2 = 12:30\n");
                printf("Opção 3 = 14:55\n");
                printf("Opção 4 = 18:29\n");
                scanf("%d", &opção);
                switch (opção) {
                    case 1:
                        printf("Seu horário será às 03:45 da manhã\n");
                        printf("Mandaremos um funcionário!\n");
                        break;
                    case 2:
                        printf("Seu horário será às 12:30 da tarde\n");
                        printf("Mandaremos um funcionário!\n");
                        break;
                    case 3:
                        printf("Seu horário será às 14:55 da tarde\n");
                        printf("Mandaremos um funcionário!\n");
                        break;
                    case 4:
                        printf("Seu horário será às 18:29 da tarde\n");
                        printf("Mandaremos um funcionário!\n");
                        break;
                    default:
                        printf("Opção inválida, tente novamente =(\n");
                        return 1;
                }
                break;
            case 2:
                printf("Você escolheu Lavanderia!\n");
                printf("Escolha a hora da sua limpeza:\n");
                printf("Opção 1 = 03:45\n");
                printf("Opção 2 = 12:30\n");
                printf("Opção 3 = 14:55\n");
                printf("Opção 4 = 18:29\n");
                scanf("%d", &opção);
                switch (opção) {
                    case 1:
                        printf("Seu horário será às 03:45 da manhã\n");
                        printf("Mandaremos um funcionário, neste horário, para buscar suas roupas\n");
                        break;
                    case 2:
                        printf("Seu horário será às 12:30 da tarde\n");
                        printf("Mandaremos um funcionário, neste horário, para buscar suas roupas\n");
                        break;
                    case 3:
                        printf("Seu horário será às 14:55 da tarde\n");
                        printf("Mandaremos um funcionário, neste horário, para buscar suas roupas\n");
                        break;
                    case 4:
                        printf("Seu horário será às 18:29 da tarde\n");
                        printf("Mandaremos um funcionário, neste horário, para buscar suas roupas\n");
                        break;
                    default:
                        printf("Opção inválida, tente novamente =(\n");
                        return 1;
                }
                break;
            case 3:
                printf("Você escolheu Solicitar item!\n");
                printf("Escolha seu item:\n");
                printf("Opção 1 = Travesseiro\n");
                printf("Opção 2 = Colcha de cama\n");
                printf("Opção 3 = Cobertor\n");
                printf("Opção 4 = Pilha para controle remoto\n");
                printf("Opção 5 = Pilha controle do ar\n");
                printf("Opção 6 = Toalha de banho\n");
                scanf("%d", &opção);
                switch (opção) {
                    case 1:
                        printf("Em instantes levaremos um travesseiro novinho!\n");
                        break;
                    case 2:
                        printf("Em instantes levaremos sua colcha!\n");
                        break;
                    case 3:
                        printf("Em instantes levaremos seu cobertor!\n");
                        break;
                    case 4:
                        printf("Em instantes levaremos suas pilhas!\n");
                        break;
                    case 5:
                        printf("Em instantes levaremos suas pilhas!\n");
                        break;
                    case 6:
                        printf("Em instantes levaremos sua toalha!\n");
                        break;
                    default:
                        printf("Opção inválida, tente novamente =(\n");
                        return 1;
                }
                break;
                
                
                default:
                printf("Opção inválida, tente novamente =(\n");
                return 1;
        }
    }
    else if (op == 2) { 
        printf ("Escolha as opções:\n");
        printf ("Opção 1 = Pedido de comida\n");
        printf ("Opção 2 = Pedido de SPA\n");
        scanf ("%d",&opção);
        switch (opção) {
            case 1:
            printf ("Opção 1 - X-Burguer\n");
            printf ("Opção 2 - X-Salada\n");
            printf ("Opção 3 - X-Bacon\n");
            printf ("Opção 4 - Hot Dog\n");
            printf ("Opção 5 - Refrigerante\n");
            scanf ("%d", &opção);
            switch (opção) {
                case 1:
                printf ("Você escolheu X-Burguer!\n");
                printf ("O valor é de: 10.00 reais");
                break;
                
                case 2:
                printf ("Você escolheu X-Salada!\n");
                printf ("O valor é de: 12.00 reais");
                break;
                
                case 3:
                printf ("Você escolheu X-Bacon!\n");
                printf ("O valor é de: 15.00 reais");
                break;
                
                case 4:
                printf ("Você escolheu Hot Dog!\n");
                printf ("O valor é de: 08.00 reais");
                break;
                
                case 5:
                printf ("Você escolheu Refrigerante!\n");
                printf ("O valor é de: 05.00 reais");
                break;
                
                default:
                printf("Opção inválida, tente novamente =(\n");
                return 1;
            }
            break;
            
            case 2:
            printf ("Você escolheu SPA!\n");
            printf ("Selecione as opções de massagem:\n");
            printf ("Opção 1 = Relaxante\n");
            printf ("Opção 2 = Aromática\n");
            printf ("Opção 3 = Sais minerais\n");
            printf ("Opção 4 = Pedras quentes\n");
            scanf ("%d",&opção);
            switch (opção) {
                case 1:
                printf ("Você escolheu massagem relaxante!\n");
                printf ("Ela adicionara 150.00 reais a sua estadia,\n");
                break;
                
                case 2:
                printf ("Você escolheu massagem aromática!\n");
                printf ("Ela adicionara 170.00 reais a sua estadia,\n");
                printf ("Podemos confirmar? (sim ou não");
                break;
                
                case 3:
                printf ("Você escolheu de sais minerais!\n");
                printf ("Ela adicionara 200.00 reais a sua estadia,\n");
                break;
                
                case 4:
                printf ("Você escolheu massagem com pedras quentes!\n");
                printf ("Ela adicionara 210.00 reais a sua estadia,\n");
                break;
                
                default:
                printf("Opção inválida, tente novamente =(\n");
                return 1;
            }
            break;
            
            default:
            printf("Opção inválida, tente novamente =(\n");
            return 1;
        }
    }
    else {
        printf ("Muito obrigado pela preferência!");
    }
return 0;
}
