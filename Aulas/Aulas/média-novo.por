programa
{
	
	funcao inicio()
	{
		cadeia nome, situacao
		real media
		caracter confirmacao
		
		faca{
			escreva("Nome: ")
			leia(nome)
			
			escreva("Média: ")
			leia(media)
				enquanto(media<0 ou media>10){
					escreva("Digite uma nova média entre 0 e 10: ")
					leia(media)
					}

			se (media<6){
				escreva("situação: ")
				situacao="Reprovado"
				}
				senao {
					escreva("situação: ")
					situacao="Aprovado"
					
			}
			
			escreva(situacao)
			escreva("\n")
			escreva("\n")
	
			
			escreva("Deseja cadastrar outro aluno? ")
			escreva("\n")
			escreva("\n")

			
			escreva("Digite 'S' ou 's' para continuar: ")
			leia (confirmacao)
			escreva("\n")
			escreva("\n")
		}
			enquanto(confirmacao== 'S' ou confirmacao== 's')
				escreva("Fim de programa")
				
	}
}



	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 430; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */