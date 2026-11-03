programa {
  funcao inicio() {
      real notas[5], media, maior, menor
      menor=10.0
      maior=0.0
      para (inteiro i=0; i<5; i++){
      escreva("Digite o valor da nota: ")
      leia(notas[i])
      escreva("\n")
      escreva("\n")

      enquanto (notas[i] < 0 ou notas[i] > 10){
        escreva("Digite o valor correto da nota: ")
      leia(notas[i])
      escreva("\n")
      }
      
    se(notas[i] < menor){
      menor = notas[i]
      
    }
     se (notas[i] > maior){
     maior = notas[i]
    
     }
  }

      escreva("As notas foram: ")
      para(inteiro i=4; i>=0; i--){
        escreva(notas[i], ", ")
      }

    

     escreva("\n", "\n", "A maior nota é: ", maior, "\n")
     escreva("\n")

     escreva("A menor nota é: ", menor, "\n")
      escreva("\n")

      media = (notas[0] + notas[1] + notas[2] + notas[3] + notas[4] )/ 5
    escreva ("A Média foi: ", media, "\n")
    escreva("\n")

    se (media > 7){
     escreva("Parabéns! Você foi aprovado!!")
    
     }

     se (media < 7){
     escreva("Você foi reprovado! Nos vemos ano que vem.")
    
     }
  }
 }
