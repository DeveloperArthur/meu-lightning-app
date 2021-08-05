public class OperacaoFactory {
    
    public static OperacaoStrategy getOperacao(String operacao){
        if(operacao.equals('soma')) return new Soma();
        if(operacao.equals('subtracao')) return new Subtracao();
        if(operacao.equals('multiplicacao')) return new Multiplicacao();
        if(operacao.equals('divisao')) return new Divisao();
        return null;
    }
}