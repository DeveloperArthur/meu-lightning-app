({
	consultaParques : function(component, event, helper) {
        let pais = component.find('pais').get("v.value");
		helper.getParques(component, pais);
	}
})