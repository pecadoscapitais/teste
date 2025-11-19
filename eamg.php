<?php

    function menu(): void {
        
        $continuar = true;

        do{

            print("\nEscolha uma loteria:\n");
            print("1 - Mega Sena\n");
            print("2 - Quina\n");
            print("...\n");
            print("0 - Sair\n");
            print("Opção: ");

            $opcao = trim(readline());

            switch($opcao){
                case "1":
                    print("Você escolheu apostar na Mega Sena!\n");
                    break;

                case "2":
                    print("Você escolheu apostar na Quina!\n");
                    break;
                case "0":
                    print("Você Sair.\n");
                    $continuar = false;             
                    break;

                default :
                    print("Opção inválida.\n");
                    break;

            }

        
        } while($continuar == true);

    }

        function megasena(): void{

            $sorteados = [];

            //$qntdJogos = readline("Quantos jogos deseja?");
            $qntdDezenas = readline("Quantas dezenas cada jogo?");

            $contador = 0;
            
            while(count($sorteados) < $qntdDezenas){

                $dezenaSorteada = rand(1, 60);

                if (!in_array($dezenaSorteada, $sorteados)){

                    $sorteados[] = $dezenaSorteada;
                }


                $contador++;
            }

            sort($sorteados);
            print_r($sorteados);
        }
    
        megasena();
    
