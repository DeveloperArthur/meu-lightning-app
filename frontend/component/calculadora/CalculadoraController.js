({
    calcula : function(component, event, helper) {
        let numero1 = component.get('v.numero1');
        let numero2 = component.get('v.numero2');
        let operacao = component.find('operacao').get("v.value");
        
        let camposValidos = helper.validaCampos(numero1, numero2, operacao);
        if(camposValidos) helper.calcula(component, numero1, numero2, operacao);
    }
})