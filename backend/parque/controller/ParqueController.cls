public class ParqueController {
    
	@AuraEnabled
    public static String listarParques(String pais){
        Parque parque = new ParqueSoapAdapter();
        List<String> parques = parque.getParquesByPais(pais);
        return JSON.serialize(parques);
    }
}