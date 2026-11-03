programa {
  funcao inicio() {

    real salarios[6]
    para (inteiro i=0; i<6; i++){
      escreva("Digite o valor do salário: ")
      leia(salarios[i])
      escreva("\n")
      se(salarios[i] < 2000){
        salarios[i] = salarios[i] * 1.1
      }
    }
    para(inteiro i=0; i<6; i++){
      escreva(salarios[i], "\n")
    }
  }
}
