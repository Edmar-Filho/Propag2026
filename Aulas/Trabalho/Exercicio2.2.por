//Edmar Filho
//Iara Moreira
//Maria Silva

programa
{
	funcao inicio()
	{
		// Cadastro dos 4 usuários e senhas
		cadeia usuarios[4] = {"ana", "bruno", "carla", "diego"}
		cadeia senhas[4] = {"1234", "2345", "3456", "4567"}

		cadeia nome, senha
		real saldo = 0.0
		real valor
		inteiro opcao
		inteiro pos = -1

		escreva("Usuário: ")
		leia(nome)
		escreva("Senha: ")
		leia(senha)

		// Procura usuário e senha nos vetores
		para (inteiro i = 0; i < 4; i++)
		{
			se (usuarios[i] == nome e senhas[i] == senha)
			{
				pos = i
			}
		}

		se (pos == -1)
		{
			escreva("Usuário ou senha não cadastrados. Programa encerrado.\n")
		}
		senao
		{
			escreva("Bem-vindo(a), ", usuarios[pos], "!\n")

			faca
			{
				escreva("-----------------------\n")
				escreva("1 - Depositar\n")
				escreva("2 - Sacar\n")
				escreva("3 - Saldo\n")
				escreva("4 - Sair\n")
				escreva("-----------------------\n")
				escreva("Opção: ")
				leia(opcao)

				escolha (opcao)
				{
					caso 1:
						escreva("Valor do depósito: R$ ")
						leia(valor)
						se (valor > 0)
						{
							saldo = saldo + valor
							escreva("Depósito realizado com sucesso!\n")
						}
						senao
						{
							escreva("Valor inválido!\n")
						}
						pare
					caso 2:
						escreva("Valor do saque: R$ ")
						leia(valor)
						se (valor <= 0)
						{
							escreva("Valor inválido!\n")
						}
						senao se (valor > saldo)
						{
							escreva("Saldo insuficiente!\n")
						}
						senao
						{
							saldo = saldo - valor
							escreva("Saque realizado com sucesso!\n")
						}
						pare
					caso 3:
						escreva("Saldo atual: R$ ", saldo, "\n")
						pare
					caso 4:
						escreva("Obrigado por utilizar o banco. Até logo!\n")
						pare
					caso contrario:
						escreva("Opção inválida!\n")
				}
			} enquanto (opcao != 4)
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */