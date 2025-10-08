programa
{
	inclua biblioteca Arquivos --> a
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t
	
	funcao inicio()
	{
		inteiro opcao

		faca{
			
			escreva("Informe uma opcao: ")
			leia(opcao)

			se(opcao == 1){
				lerClientes()
			} 
			senao se(opcao == 2){
				adicionarClientes()
			} 
			senao se(opcao == 3){
				contarClienteEstado()
			}
			senao se(opcao == 4){
				alterarNomeCliente()
			} 
			
			
		} 
		enquanto (opcao != 0)
			
			escreva("Obrigado por usar nosso programa!")
			
		
	} // fim funcao inicio

	funcao lerClientes(){
		inteiro arquivo = a.abrir_arquivo("./clientes.txt", a.MODO_LEITURA)

		enquanto(nao a.fim_arquivo(arquivo)){
			
			cadeia linha = a.ler_linha(arquivo)
			escreva(linha, "\n")
		}

		a.fechar_arquivo(arquivo)
	}
	
	funcao adicionarClientes(){

		cadeia cliente
		cadeia dataNascimento
		cadeia nome
		cadeia cidade
		cadeia estado
		
		inteiro arquivo = a.abrir_arquivo("./clientes.txt", a.MODO_ACRESCENTAR)

		leia(dataNascimento, nome, cidade, estado)

		cliente = dataNascimento + " ; " + nome + " ; " + cidade + " ; " + estado

		a.escrever_linha(cliente, arquivo)

		a.fechar_arquivo(arquivo)
		
	}
	funcao contarClienteEstado(){

		cadeia estado = "CE"
		inteiro numeroDeCliente = 0
		
		inteiro arquivo = a.abrir_arquivo("./clientes.txt", a.MODO_LEITURA)

		enquanto(nao a.fim_arquivo(arquivo)){
			
			cadeia linha = a.ler_linha(arquivo)
			escreva(linha, "\n")
		}

		a.fechar_arquivo(arquivo)
		
	}
	funcao alterarNomeCliente(){
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1432; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */