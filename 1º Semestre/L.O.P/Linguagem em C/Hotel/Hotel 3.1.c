#include <stdio.h>
#include <stdlib.h>

typedef struct {
    char nome[100], cidade[100], CPF [11];
    int idade, telefone, diasdeestadia, opcao, op, opc, qntd;
    float valorhotel, valortotal, valorcomida, valormassagem, ValorPagar, valorlavanderia ;
}Cadastro;

Cadastro Cadastros[50];
int TotalCadastro= 0;

void CadastrarCliente();
void EscolherServico();
void ServicoLimpeza();
void ServicoLavanderia();
void ServicoItem();
void EscolherPedido();
void PedidoComida();
void PedidoSpa();
void FinalizarFuncao();
void ValorPagar();
void Ocupacao ();

int main (){
    int op;
     do{
        printf ("\n");
        printf ("----------------\n");
        printf ("Bem vindo(a) ao hotel SENAI EM FÉRIAS !\n");
        printf ("----------------\n");
        
        printf ("Escolha uma opção:\n");
        printf ("Opção 1 = Cadastrar\n");
        printf ("Opção 2 = Escolher serviço\n");
        printf ("Opção 3 = Fazer pedido\n");
        printf ("Opção 4 = Valor a pagar\n");
        printf ("Opção 5 = Ver ocupação\n");
        printf ("Opção 6 = Sair do programa\n");
        scanf ("%d",&op);
        switch (op){
            case 1:
            CadastrarCliente ();
            break;
            
            case 2:
            EscolherServico();
            break;
            
            case 3:
            EscolherPedido ();
            break;
            
            case 4:
            ValorPagar ();
            break;
            
            case 5:
            Ocupacao ();
            break;
            
            case 6:
            printf ("Saindo...\n");
            return 0;
            
            default:
            printf ("Opção invalida, tente novamente\n");
            break;
        }
    } while (op != 6);
   
    return 0;
}

void CadastrarCliente (){
    printf ("\n");
    printf ("----------------\n");
    printf ("Bem vindo(a) a área de cadastro!\n");
    printf ("----------------\n");
    
    printf ("Informe seu nome completo: \n");
    scanf (" %[^\n]",Cadastros[TotalCadastro].nome);
    printf ("Informe sua idade:\n");
    scanf ("%d",&Cadastros[TotalCadastro].idade); 
    printf ("Informe seu CPF:\n");
    scanf ("%s",Cadastros[TotalCadastro].CPF);
    printf ("Informe seu número telefonico:\n");
    scanf ("%d",&Cadastros[TotalCadastro].telefone);
    printf ("Informe sua cidade:\n");
    scanf (" %[^\n]",Cadastros[TotalCadastro].cidade);
    printf ("Informe os dias de estadia:\n");
    scanf ("%d",&Cadastros[TotalCadastro].diasdeestadia);
    
    Cadastros[TotalCadastro].valorhotel = Cadastros[TotalCadastro].diasdeestadia * 250.00;
    Cadastros[TotalCadastro].valorcomida = 0;
    Cadastros[TotalCadastro].valormassagem = 0;
    
    printf ("Muito Obrigada, agradecemos a preferência volte sempre!\n");
    TotalCadastro++;
    
    FinalizarFuncao ();
}

void EscolherServico () {
    printf ("\n");
    printf ("----------------\n");
    printf ("Bem vindo(a) a área de serviços disponíveis!\n");
    printf ("----------------\n");
    
    printf("Escolha uma das opções:\n");
    printf("Opção 1 = Limpeza de quarto\n");
    printf("Opção 2 = Lavanderia\n");
    printf("Opção 3 = Solicitar item\n");
    
    scanf("%d", &Cadastros[TotalCadastro-1].opcao);
    
    if (Cadastros[TotalCadastro-1].opcao == 1){
        ServicoLimpeza ();
        
    } else if (Cadastros[TotalCadastro-1].opcao == 2){
        ServicoLavanderia ();
        
    } else if (Cadastros[TotalCadastro-1].opcao == 3){
        ServicoItem ();
    }
    
    FinalizarFuncao ();
}

void ServicoLimpeza (){
    printf("---- Você escolheu limpeza! ----\n");
    printf("Escolha a hora desejada para sua limpeza:\n");
    printf("Opção 1 = 03:45\n");
    printf("Opção 2 = 12:30\n");
    printf("Opção 3 = 14:55\n");
    printf("Opção 4 = 18:29\n");
    
    scanf("%d", &Cadastros[TotalCadastro-1].opc);
    switch (Cadastros[TotalCadastro-1].opc) {
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
        break;
    }
}

void ServicoLavanderia (){
    printf("---- Você escolheu lavanderia! ----\n");
    printf("Escolha a hora desejada para a coleta:\n");
    printf("Opção 1 = 03:45\n");
    printf("Opção 2 = 12:30\n");
    printf("Opção 3 = 14:55\n");
    printf("Opção 4 = 18:29\n");
    
    scanf("%d", &Cadastros[TotalCadastro-1].opc);
    switch (Cadastros[TotalCadastro-1].opc) {
        case 1:
        printf("Seu horário será às 03:45 da manhã\n");
        printf("Mandaremos um funcionário, neste horário, para buscar suas roupas\n");
        printf ("O valor será de 25 reais a meia limpeza e 30 a inteira,\n");
        printf ("insira a que mais te agrada:\n");
        Cadastros[TotalCadastro-1].valorlavanderia += 150.00 * Cadastros[TotalCadastro-1].qntd;
        break;
        
        case 2:
        printf("Seu horário será às 12:30 da tarde\n");
        printf("Mandaremos um funcionário, neste horário, para buscar suas roupas\n");
        printf ("O valor será de 25 reais a meia limpeza e 30 a inteira,\n");
        printf ("insira a que mais te agrada:\n");
        Cadastros[TotalCadastro-1].valorlavanderia += 150.00 * Cadastros[TotalCadastro-1].qntd;
        break;
        
        case 3:
        printf("Seu horário será às 14:55 da tarde\n");
        printf("Mandaremos um funcionário, neste horário, para buscar suas roupas\n");
        printf ("O valor será de 25 reais a meia limpeza e 30 a inteira,\n");
        printf ("insira a que mais te agrada:\n");
        Cadastros[TotalCadastro-1].valorlavanderia += 150.00 * Cadastros[TotalCadastro-1].qntd;
        break;
        
        case 4:
        printf("Seu horário será às 18:29 da tarde\n");
        printf("Mandaremos um funcionário, neste horário, para buscar suas roupas\n");
        printf ("O valor será de 25 reais a meia limpeza e 30 a inteira,\n");
        printf ("insira a que mais te agrada:\n");
        Cadastros[TotalCadastro-1].valorlavanderia += 150.00 * Cadastros[TotalCadastro-1].qntd;
        break;
        
        default:
        printf("Opção inválida, tente novamente =(\n");
        break;
    }
}

void ServicoItem (){
    int qnt;
    printf("---- Você escolheu solicitar item! ----\n");
    printf("Escolha seu item desejado:\n");
    printf("Opção 1 = Travesseiro\n");
    printf("Opção 2 = Colcha de cama\n");
    printf("Opção 3 = Cobertor\n");
    printf("Opção 4 = Pilha para controle remoto\n");
    printf("Opção 5 = Pilha controle do ar\n");
    printf("Opção 6 = Toalha de banho\n");
    scanf("%d", &Cadastros[TotalCadastro-1].opc);
    switch (Cadastros[TotalCadastro-1].opc) {
        case 1:
        printf ("Informe a quantidade de travisseiros:\n");
        scanf ("%d",&qnt);
        printf("Em instantes levaremos %d travesseiro novinho!\n",qnt);
        break;
        
        case 2:
        printf ("Informe a quantidade de colchas:\n");
        scanf ("%d",&qnt);
        printf("Em instantes levaremos %d colcha(s)!\n",qnt);
        break;
        
        case 3:
        printf ("Informe a quantidade de cobertores:\n");
        scanf ("%d",&qnt);
        printf("Em instantes levaremos %d cobertor(es)!\n",qnt);
        break;
        
        case 4:
        printf ("Informe a quantidade de pilhas para controle remoto:\n");
        scanf ("%d",&qnt);
        printf("Em instantes levaremos %d pilha(s)!\n",qnt);
        break;
        
        case 5:
        printf ("Informe a quantidade de pilhas para controle do ar:\n");
        scanf ("%d",&qnt);
        printf("Em instantes levaremos %d pilha(s)!\n",qnt);
        break;
        
        case 6:
        printf ("Informe a quantidade de toalhas:\n");
        scanf ("%d",&qnt);
        printf("Em instantes levaremos %d toalha(s)!\n",qnt);
        break;
        
        default:
        printf("Opção inválida, tente novamente =(\n");
        break;
    }
}

void EscolherPedido (){
    printf ("Escolha as opções:\n");
    printf ("Opção 1 = Pedido de comida\n");
    printf ("Opção 2 = Pedido de SPA\n");
    scanf ("%d",&Cadastros[TotalCadastro-1].opc);
    switch (Cadastros[TotalCadastro-1].opc) {
        case 1:
            PedidoComida ();
            break;
        case 2:
            PedidoSpa ();
            break;
        default:
            printf ("Opção inválida, tente novamente!\n");
            break;
    }
    
    FinalizarFuncao ();
}

void PedidoComida (){
    printf ("Escolha apenas 1 opção\n");
    printf ("Opção 1 - X-Burguer\n");
    printf ("Opção 2 = X-Salada\n");
    printf ("Opção 3 = X-Bacon\n");
    printf ("Opção 4 = Hot Dog\n");
    printf ("Opção 5 = Refrigerante\n");
    scanf ("%d", &Cadastros[TotalCadastro-1].opc);
    switch (Cadastros[TotalCadastro-1].opc) {
        case 1:
            printf ("Você escolheu X-Burguer!\n");
            printf ("O valor é de: 10.00 reais\n");
            printf ("Quantas unidades deseja?\n");
            scanf ("%d",&Cadastros[TotalCadastro-1].qntd);
            Cadastros[TotalCadastro-1].valorcomida += 10.00 * Cadastros[TotalCadastro-1].qntd;
            printf("Valor total do pedido: %.2f\n", Cadastros[TotalCadastro-1].valorcomida);
            break;
        case 2:
            printf ("Você escolheu X-Salada!\n");
            printf ("O valor é de: 12.00 reais\n");
            printf ("Quantas unidades deseja?\n");
            scanf ("%d",&Cadastros[TotalCadastro-1].qntd);
            Cadastros[TotalCadastro-1].valorcomida += 12.00 * Cadastros[TotalCadastro-1].qntd;
            printf("Valor total do pedido: %.2f\n", Cadastros[TotalCadastro-1].valorcomida);
            break;
        case 3:
            printf ("Você escolheu X-Bacon!\n");
            printf ("O valor é de: 15.00 reais\n");
            printf ("Quantas unidades deseja?\n");
            scanf ("%d",&Cadastros[TotalCadastro-1].qntd);
            Cadastros[TotalCadastro-1].valorcomida += 15.00 * Cadastros[TotalCadastro-1].qntd;
            printf("Valor total do pedido: %.2f\n", Cadastros[TotalCadastro-1].valorcomida);
            break;
        case 4:
            printf ("Você escolheu Hot Dog!\n");
            printf ("O valor é de: 8.00 reais\n");
            printf ("Quantas unidades deseja?\n");
            scanf ("%d",&Cadastros[TotalCadastro-1].qntd);
            Cadastros[TotalCadastro-1].valorcomida += 8.00 * Cadastros[TotalCadastro-1].qntd;
            printf("Valor total do pedido: %.2f\n", Cadastros[TotalCadastro-1].valorcomida);
            break;
        case 5:
            printf ("Você escolheu Refrigerante!\n");
            printf ("O valor é de: 5.00 reais\n");
            printf ("Quantas unidades deseja?\n");
            scanf ("%d",&Cadastros[TotalCadastro-1].qntd);
            Cadastros[TotalCadastro-1].valorcomida += 5.00 * Cadastros[TotalCadastro-1].qntd;
            printf("Valor total do pedido: %.2f\n", Cadastros[TotalCadastro-1].valorcomida);
            break;
        default:
            printf("Opção inválida, tente novamente =(\n");
            break;
    }
}

void PedidoSpa (){
    printf ("Você escolheu SPA!\n");
    printf ("Selecione apenas uma das opções de massagens:\n");
    printf ("Opção 1 = Relaxante\n");
    printf ("Opção 2 = Aromática\n");
    printf ("Opção 3 = Sais minerais\n");
    printf ("Opção 4 = Pedras quentes\n");
    scanf ("%d",&Cadastros[TotalCadastro-1].opc);
    switch (Cadastros[TotalCadastro-1].opc) {
        case 1:
            printf ("Você escolheu massagem relaxante!\n");
            printf ("Ela adicionara 150.00 reais a sua estadia,\n");
            printf ("Quantas unidades deseja?\n");
            scanf ("%d",&Cadastros[TotalCadastro-1].qntd);
            Cadastros[TotalCadastro-1].valormassagem += 150.00 * Cadastros[TotalCadastro-1].qntd;
            printf("Valor total do SPA: %.2f\n", Cadastros[TotalCadastro-1].valormassagem);
            break;
        
        case 2:
            printf ("Você escolheu massagem aromática!\n");
            printf ("Ela adicionara 170.00 reais a sua estadia,\n");
            printf ("Quantas unidades deseja?\n");
            scanf ("%d",&Cadastros[TotalCadastro-1].qntd);
            Cadastros[TotalCadastro-1].valormassagem += 170.00 * Cadastros[TotalCadastro-1].qntd;
            printf("Valor total do SPA: %.2f\n", Cadastros[TotalCadastro-1].valormassagem);
            break;
        case 3:
            printf ("Você escolheu massagem de sais minerais!\n");
            printf ("Ela adicionara 200.00 reais a sua estadia,\n");
            printf ("Quantas unidades deseja?\n");
            scanf ("%d",&Cadastros[TotalCadastro-1].qntd);
            Cadastros[TotalCadastro-1].valormassagem += 200.00 * Cadastros[TotalCadastro-1].qntd;
            printf("Valor total do SPA: %.2f\n", Cadastros[TotalCadastro-1].valormassagem);
            break;
        case 4:
            printf ("Você escolheu massagem com pedras quentes!\n");
            printf ("Ela adicionara 210.00 reais a sua estadia,\n");
            printf ("Quantas unidades deseja?\n");
            scanf ("%d",&Cadastros[TotalCadastro-1].qntd);
            Cadastros[TotalCadastro-1].valormassagem += 210.00 * Cadastros[TotalCadastro-1].qntd;
            printf("Valor total do SPA: %.2f\n", Cadastros[TotalCadastro-1].valormassagem);
            break;
        default:
            printf("Opção inválida, tente novamente =(\n");
            break;
    }
    
}

void ValorPagar (){
    Cadastros[TotalCadastro-1].ValorPagar = Cadastros[TotalCadastro-1].valorhotel + Cadastros[TotalCadastro-1].valorcomida + Cadastros[TotalCadastro-1].valormassagem + Cadastros[TotalCadastro-1].valorlavanderia;
    printf ("O valor total da estadia será de: %.2f\n", Cadastros[TotalCadastro-1].ValorPagar);
    
    printf("\n--- Custo por hóspede ---\n");
    for (int i = 0; i < TotalCadastro; i++) {
        float total = Cadastros[i].valorhotel + Cadastros[i].valorcomida + Cadastros[i].valormassagem + Cadastros[i].valorlavanderia;
        printf("Hóspede: %s | Total a pagar: R$ %.2f\n", Cadastros[i].nome, total);
    }

    FinalizarFuncao ();
}

void Ocupacao() {
    int i, ocupados = 0, disponiveis = 0;

    printf("Relatório de Ocupação\n");
    printf("---------------------\n");

    for (i = 0; i < TotalCadastro; i++) {
        printf("Cliente %d: %s\n", i + 1, Cadastros[i].nome);
        ocupados++;
    }

    disponiveis = 50 - ocupados; 
    
    printf("---------------------\n");
    printf("Quartos ocupados: %d\n", ocupados);
    printf("Quartos disponíveis: %d\n", disponiveis);
    
    if(ocupados > 0){
        printf("Taxa de ocupação: %.2f%%\n", (float)ocupados / 100 * 100);
    } else {
        printf("Taxa de ocupação: 0.00%%\n");
    }

    FinalizarFuncao();
}

void FinalizarFuncao (){
    printf ("\nPressione Enter para continuar...\n");
    getchar();
    getchar();
    system("clear");
}