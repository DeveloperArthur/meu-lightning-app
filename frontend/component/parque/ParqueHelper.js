({
	getParques : function(component, pais) {
		const acao = component.get('c.listarParques');
        
        acao.setParams({ 
            pais: pais
        });
        
        acao.setCallback(this, function(resposta) {
            let jsonResponse = JSON.parse(resposta.getReturnValue());
            this.setParques(component, jsonResponse);
        });
        
        $A.enqueueAction(acao);
	},
    
    setParques : function(component, parques){
    	component.set("v.parques", parques);
	}
})