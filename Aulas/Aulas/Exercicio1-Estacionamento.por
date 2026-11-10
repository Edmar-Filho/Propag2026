programa
{
	// Vetor com 30 vagas: "" = vaga livre
	cadeia placas[30]

	// Verifica se o número da vaga está entre 1 e 30
	funcao logico vagaValida(inteiro n)
	{
		retorne n >= 1 e n <= 30
	}

	// Entrada de veículo
	funcao vazio entradaVeiculo()
	{
		inteiro n
		cadeia placa

		escreva("Digite o número da vaga (1 a 30): ")
		leia(n)

		se (vagaValida(n))
		{
			se (placas[n - 1] == "")
			{
				escreva("Digite a placa do veículo: ")
				leia(placa)
				placas[n - 1] = placa
				escreva("Veículo estacionado na vaga ", n, ".\n")
			}
			senao
			{
				escreva("Vaga ocupada pelo veículo de placa ", placas[n - 1], "!\n")
			}
		}
		senao
		{
			escreva("Vaga inválida! Digite um número de 1 a 30.\n")
		}
	}

	// Saída de veículo
	funcao vazio saidaVeiculo()
	{
		inteiro n

		escreva("Digite o número da vaga (1 a 30): ")
		leia(n)

		se (vagaValida(n))
		{
			se (placas[n - 1] != "")
			{
				escreva("Veículo de placa ", placas[n - 1], " saiu da vaga ", n, ".\n")
				placas[n - 1] = ""
			}
			senao
			{
				escreva("Esta vaga já está livre!\n")
			}
		}
		senao
		{
			escreva("Vaga inválida! Digite um número de 1 a 30.\n")
		}
	}

	// Listagem de vagas
	funcao vazio listarVagas()
	{
		escreva("---------- VAGAS ----------\n")
		para (inteiro k = 0; k < 30; k++)
		{
			se (placas[k] == "")
			{
				escreva("Vaga ", k + 1, ": LIVRE\n")
			}
			senao
			{
				escreva("Vaga ", k + 1, ": OCUPADA - Placa ", placas[k], "\n")
			}
		}
		escreva("---------------------------\n")
	}

	funcao inicio()
	{
		inteiro opcao

		// Todas as vagas começam livres
		para (inteiro i = 0; i < 30; i++)
		{
			placas[i] = ""
		}

		faca
		{
			escreva("----------------------------------\n")
			escreva("1-Entrada de Veículo\n")
			escreva("2-Saída de Veículo\n")
			escreva("3-Listar vagas\n")
			escreva("4-Sair do programa\n")
			escreva("----------------------------------\n")
			escreva("Opção: ")
			leia(opcao)

			escolha (opcao)
			{
				caso 1:
					entradaVeiculo()
					pare
				caso 2:
					saidaVeiculo()
					pare
				caso 3:
					listarVagas()
					pare
				caso 4:
					escreva("Encerrando o programa...\n")
					pare
				caso contrario:
					escreva("Opção inválida!\n")
			}
		} enquanto (opcao != 4)
	}
}
