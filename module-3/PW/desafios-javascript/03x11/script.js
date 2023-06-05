function mult(a, b) {
    return a * b;
}
function aplicarDesconto(valor, desconto) {
    return valor - (valor * (desconto/100));
}
function verificarPossibilidadeAuxilio(salario, limite, auxilio) {
    return salario < limite ? salario + auxilio : salario;
}
function calcularSalarioLiquido(salarioBruto, valorMinImposto) {
    return salarioBruto > valorMinImposto ? aplicarDesconto(salarioBruto, 5) : verificarPossibilidadeAuxilio(salarioBruto, 500, 60);
}