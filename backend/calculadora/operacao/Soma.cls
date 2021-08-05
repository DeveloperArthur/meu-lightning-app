public class Soma implements OperacaoStrategy {
    private Calculadora calculadora = new CalculatorSoapAdapter();
    
    public ResultadoDto calcula(Double a, Double b){
        ResultadoDto resultadoDto = new ResultadoDto();
        resultadoDto.resultado = calculadora.soma(a, b);
        return resultadoDto;
    }
}