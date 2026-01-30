function bonus(){
    let salario = Number (document.getElementById('salario').value);
    let resultado = document.getElementById('resultado');
    let bonus = 0;

    if(salario > 2000){
        bonus = salario * 10/100;
    }

    let salarioComBonus = salario+bonus;

    resultado.innerHTML = `
    Bonus de R$ ${bonus.toFixed(2)} <br> 
    Salário Final R$ ${salarioComBonus.toFixed(2)}`;
};

function frete(){
    let valor = Number (document.getElementById('valor').value);
    let resultado = document.getElementById('resultado');
    let frete = 0;

    if(valor < 150){
        frete = 20;
    }

    let valorComFrete = valor+frete;

    resultado.innerHTML = `
    Frete de R$ ${frete.toFixed(2)} <br> 
    Valor Final R$ ${valorComFrete.toFixed(2)}`;
};

function desconto(){
    let preco = Number (document.getElementById('preco').value);
    let resultado = document.getElementById('resultado');
    let desconto = 0;

    if(preco >  200 ){
        desconto =  preco * 5/100;
    }

    let valorComdesconto = preco-desconto;

    resultado.innerHTML = `
    Desconto de R$ ${desconto.toFixed(2)} <br> 
    Valor Final R$ ${valorComdesconto.toFixed(2)}`;
};

function taxa(){
    let valor = Number (document.getElementById('valor').value);
    let resultado = document.getElementById('resultado');
    let taxa = 0;

    if(valor >  100 ){
        taxa =  valor * 10/100;
    }

    let valorComTaxa = valor+taxa;

    resultado.innerHTML = `
    Taxa de R$ ${taxa.toFixed(2)} <br> 
    Valor Final R$ ${valorComTaxa.toFixed(2)}`;
};

function multa(){
    let valor = Number (document.getElementById('valor').value);
    let dias = Number (document.getElementById('dias').value);
    let resultado = document.getElementById('resultado');
    let multa = 0;

    if(dias > 0 ){
        multa =  valor * 2/100;
    }

    let valorComMulta = valor+multa;

    resultado.innerHTML = `
    Multa de R$ ${multa.toFixed(2)} <br> 
    Valor Final R$ ${valorComMulta.toFixed(2)}`;
};

function cashback(){
    let valor = Number (document.getElementById('valor').value);
    let resultado = document.getElementById('resultado');
    let cash = 0;

    if(valor > 300 ){
        cash =  valor * 5/100;
    }

    let valoeComCash = valor-cash;

    resultado.innerHTML = `
    Cashback de R$ ${cash.toFixed(2)} <br> 
    Valor Líquido Final R$ ${valoeComCash.toFixed(2)}`;
};



