programa { 
  inclua biblioteca Util --> u
  inteiro opc_menu
  cadeia cartas[40]
  inteiro jogador = 1
  inteiro aux = 0
  inteiro pontuacao_mao1 = 0, pontuacao_mao2 = 0, pontuacao_rodada[1] = {0,0}
  cadeia carta_jogador1[3]
  cadeia carta_jogador2[3]

  funcao inicio() {
    //menu_inicial() //menu inicial
    //menu_jogo()
    mao_cartas()
    //maos_jogadores()
    
  }

  funcao menu_inicial(){
    escreva("Bem vindo\n")
    escreva("Escolha uma opção\n")
    escreva("1-Jogar\n")
    escreva("2-Sair\n")
    leia(opc_menu)
    escolha(opc_menu){
      caso 1:
      
    }
  }

  funcao mao_cartas(){
    inteiro aux = 0
    cadeia cartas[40]={"1 de Ouro","2 de Ouro","3 de Ouro","4 de Ouro","5 de Ouro","6 de Ouro","7 de Ouro","11 de Ouro","12 de Ouro","13 de Ouro","1 de Espada","2 de Espada","3 de Espada","4 de Espada","5 de Espada","6 de Espada","7 de Espada","11 de Espada","12 de Espada","13 de Espada","1 de Paus","2 de Paus","3 de Paus","4 de Paus","5 de Paus","6 de Paus","7 de Paus","11 de Paus","12 de Paus","13 de Paus","1 de Copa","2 de Copa","3 de Copa","4 de Copa","5 de Copa","6 de Copa","7 de Copa","11 de Copa","12 de Copa","13 de Copa"}
    para(inteiro i = 0; i < 3; i ++){
      aux = u.sorteia(0,39)
      carta_jogador1[i] = cartas[aux]
      se(cartas[aux] == ""){
        aux = u.sorteia(0,39)
        carta_jogador1[i] = cartas[aux]
      }enquanto(carta_jogador1[i] != "")
      cartas[aux] = ""
    }
    para(inteiro i = 0; i < 3; i++){
      aux = u.sorteia(0,39)
      carta_jogador2[i] = cartas[aux]
      se(cartas[aux] == ""){
        aux = u.sorteia(0,39)
        carta_jogador2[i] = cartas[aux]
      }enquanto(carta_jogador2[i] != "")
      cartas[aux] = ""
    }
    escreva(carta_jogador1,"\n")
    escreva(carta_jogador2, "\n")
  }



  funcao menu_jogo(){
    para(inteiro i = 1; i < 3; i++){
      escreva("Jogador: ",i, "\n")
      escreva("Pontuação Atual: ", pontuacao_rodada[i], "\n")
    }
    //jogador++
  }
}

