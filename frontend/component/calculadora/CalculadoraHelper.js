({
    validaCampos : function(numero1, numero2, operacao){
        if(numero1 == null || numero2 == null){
            alert('Todos os campos são obrigatórios');
            return false;
        }
        if(operacao == 'divisao' && (numero1 == 0 || numero2 == 0)){
            alert('Não é possível dividir por zero');
            return false;
        }
        return true;
    },
    
    calcula : function(component, numero1, numero2, operacao){
        const acao = component.get('c.calcular');
        
        acao.setParams({ 
            a: numero1, 
            b: numero2,
            operacao: operacao
        });
        
        acao.setCallback(this, function(resposta) {
            let jsonResponse = JSON.parse(resposta.getReturnValue());
            this.setResultadoNaTela(component, jsonResponse.resultado);
        });
        
        $A.enqueueAction(acao);
    },
    
    setResultadoNaTela : function(component, resultado){
        component.set("v.resultado", 'Resultado da operação: '+resultado);
    }
})