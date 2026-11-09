//Edmar Filho
//Iara Moreira

programa {
  inclua biblioteca Util
  funcao inicio() {
    const inteiro fileira=10, assento=12
    inteiro sala[fileira][assento], assentoNum, fileiraNum
    logico cheio = falso

    zerar(fileira, assento, sala)
    checar(fileira, assento, sala, cheio)

    faca{
      imprimirLogo()
      ler(fileira, assento, sala)

      escreva("\n")
      escreva("Digite a fileira (1-10) | -1 p/Sair: ")
      leia(fileiraNum)
      se(fileiraNum == -1){
        pare
      }
      DigitacaoFileira(fileiraNum)

      escreva("Digite o assento (1-12) | -1 p/Sair: ")
      leia(assentoNum)
      se(assentoNum == -1){
        pare
      }
      DigitacaoAssento(assentoNum)

      se(sala[fileiraNum-1][assentoNum-1] == 1){
        escreva("\n\nO assento ", assentoNum, " da fileira ", fileiraNum, " já está reservado!")
        Util.aguarde(3500)
        limpa()
      }senao{
        escreva("\n\nO assento ", assentoNum, " da fileira ", fileiraNum, " foi reservado com sucesso!")
        sala[fileiraNum-1][assentoNum-1] = 1
        Util.aguarde(3500)
        limpa()
      }

    }enquanto(cheio == falso)
  }


  funcao DigitacaoFileira(inteiro fileiraNum){
    enquanto(fileiraNum < 1 ou fileiraNum > 10){
      escreva("\nVocê deve digitar um número entre 1 e 10. Você digitou ", fileiraNum)
      escreva("\nEscreva: ")
      leia(fileiraNum)
    }
  }

  funcao DigitacaoAssento(inteiro fileiraNum){
    enquanto(fileiraNum < 1 ou fileiraNum > 12){
      escreva("\nVocê deve digitar um número entre 1 e 12. Você digitou ", fileiraNum)
      escreva("\nEscreva: ")
      leia(fileiraNum)
    }
  }

  funcao imprimirLogo(){
    escreva("= = = C I N E M A   S E N A I = = =")
    escreva("\n")
  }

  funcao zerar(inteiro fileira, inteiro assento, inteiro sala[][]){
    para(inteiro i=0; i < fileira; i++){
      para(inteiro x=0; x < assento; x++){
        sala[i][x] = 0
      }
    }
  }

  funcao ler(inteiro fileira, inteiro assento, inteiro sala[][]){
    escreva("\n")
    para(inteiro i=0; i < fileira; i++){
      para(inteiro x=0; x < assento; x++){
        escreva(sala[i][x]," ")
      }
      escreva("\n")
    }
  }

  funcao logico checar(inteiro fileira, inteiro assento, inteiro sala[][], logico cheio){
    para(inteiro i=0; i < fileira; i++){
      para(inteiro x=0; x < assento; x++){
        se(sala[i][x] == 0){
          cheio = falso
          retorne cheio
        }
        escreva(sala[i][x]," ")
      }
    }
    cheio = verdadeiro
    retorne cheio
  }

}
