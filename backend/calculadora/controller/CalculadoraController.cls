public class CalculadoraController {
    
	@AuraEnabled
    public static String calcular(Double a, Double b, String operacao){
        OperacaoStrategy operacaoStrategy = OperacaoFactory.getOperacao(operacao);
        ResultadoDto resultado = operacaoStrategy.calcula(a, b);
        return JSON.serialize(resultado);
    }
}