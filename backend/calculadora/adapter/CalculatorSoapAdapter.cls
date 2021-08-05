public class CalculatorSoapAdapter implements Calculadora {
    CalculatorServices.CalculatorImplPort calculatorService = new CalculatorServices.CalculatorImplPort();
    
    public Double soma(Double a, Double b){
        return calculatorService.doAdd(a,b);
    } 
    
    public Double subtrai(Double a, Double b){
        return calculatorService.doSubtract(a,b);
    }
    
    public Double multiplica(Double a, Double b){
        return calculatorService.doMultiply(a,b);
    }
    
    public Double divide(Double a, Double b){
        return calculatorService.doDivide(a,b);
    }
}