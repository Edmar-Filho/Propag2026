programa {
  funcao inicio() {
    inteiro numeros[5], quant_pares=0, quant_impares=0

  para(inteiro i=0; i<5; i++){
    escreva("Insira o número:")
    leia(numeros[i])
    se(numeros[i]%2 == 0){
    quant_pares++
    }senao{
    quant_impares++
    }
    }
    escreva("\n", "Aquantidade de números pares é: ", quant_pares, "\n")
    escreva("\n", "Aquantidade de números pares é: ", quant_impares, "\n")

    }
}



