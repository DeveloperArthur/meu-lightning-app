public class ParqueSoapAdapter implements Parque {
    ParkService.ParksImplPort parkService = new ParkService.ParksImplPort();
    
    public List<String> getParquesByPais(String pais){
        return parkService.byCountry(pais);
    }
}