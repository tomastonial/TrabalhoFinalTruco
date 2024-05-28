programa { 
  inclua biblioteca Util --> u
  inteiro opc_menu
  cadeia cartas[40]
  inteiro jogador = 1
  inteiro pontuacao_mao1 = 0, pontuacao_mao2 = 0, pontuacao_rodada1 = 0, pontuacao_rodada2 = 0

  funcao inicio() {
    menu_inicial() //menu inicial
    
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
}

