programa {
  funcao inicio() {
    cadeia time[8], campeao=" ", lanterna=" "
    inteiro pontuacao[8], maior=0, menor=200

    para(inteiro i=0; i<8; i++){
      escreva("Nome do time: ")
      leia(time[i])
      escreva("Pontuação: ")
      leia(pontuacao[i])

      se(pontuacao[i] < menor){
      menor = pontuacao[i]
      lanterna = time[i]
      
      
    }

    se (pontuacao[i] > maior){
     maior = pontuacao[i]
     campeao = time[i]
         
     }
      escreva("\n")
      escreva("O lanterna é o: ", lanterna, " com um total de: ", menor,"\n")
      escreva("\n")

      escreva("\n")
      escreva("O campeão é o: ", campeao, " com um total de: ", maior, "\n")
      escreva("\n")
    }

    escreva("As posições foram foram: ")
      para(inteiro i=7; i>=0; i--){
        escreva(time[i], ", ")
      }
  }
}
