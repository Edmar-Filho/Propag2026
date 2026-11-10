programa {
  funcao inicio() {
    
    cadeia descricao[3]
    real valor[3], sub_total[3], total=0.0
    inteiro quantidade[3]

      para(inteiro i=0; i<3; i++){
        escreva("Escreva a descrição do produto: ")
        leia(descricao[i])
        escreva("Escreva o valor do produto: R$")
        leia(valor[i])
        escreva("Escreva a quantidade do produto: ")
        leia(quantidade[i])
        escreva("\n")

        sub_total[i] = valor[i] * quantidade[i]
        escreva("O sub total é: R$",sub_total[i])
        escreva("\n")
        total += sub_total[i]     
        escreva("O total geral é: R$",total)
        escreva("\n")
        escreva("\n")
        }

  }
}
