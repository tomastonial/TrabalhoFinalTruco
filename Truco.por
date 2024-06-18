
programa {
  inclua biblioteca Util --> u
  inteiro opc_menu
  cadeia cartas[40] = {"4 de Paus", "5 de Paus", "6 de Paus", "7 de Paus", "11 de Paus", "12 de Paus", "13 de Paus", "1 de Paus", "2 de Paus", "3 de Paus", "4 de Copas", "5 de Copas", "6 de Copas", "7 de Copas", "11 de Copas", "12 de Copas", "13 de Copas", "1 de Copas", "2 de Copas", "3 de Copas", "4 de Espada", "5 de Espada", "6 de Espada", "7 de Espada", "11 de Espada", "12 de Espada", "13 de Espada", "1 de Espada", "2 de Espada", "3 de Espada", "4 de Ouro", "5 de Ouro", "6 de Ouro", "7 de Ouro", "11 de Ouro", "12 de Ouro", "13 de Ouro", "1 de Ouro", "2 de Ouro", "3 de Ouro"}
  inteiro pontuacao_cartas1[3]
  inteiro pontuacao_cartas2[3]
  inteiro aux = 0
  inteiro numero_rodadas 
  inteiro numero_mao
  inteiro pontuacao_mao1 = 0, pontuacao_mao2 = 0, pontuacao_rodada1 = 0, pontuacao_rodada2 = 0
  cadeia carta_jogador1[3]
  cadeia carta_jogador2[3]
  cadeia carta_jogada1
  cadeia carta_jogada2
  logico auxiliar

  funcao inicio() {
    menu_inicial()
  }

  funcao menu_inicial(){
    escreva("Bem vindo\n")
    escreva("Escolha uma opção\n")
    escreva("1-Jogar\n")
    escreva("2-Sair\n")
    leia(opc_menu)
    escolha(opc_menu){
      caso 1:
        menu_jogo()
        pare

      caso 2:
        escreva("Obrigado por jogar nosso jogo!")
        pare
      caso contrario:
        escreva("Opção Inválida, tente novamente")
        pare
      
    }
  }

  funcao menu_jogo(){
    para(numero_mao = 0; numero_mao < 12; numero_mao++){
      mao_cartas()
      para(numero_rodadas = 0; numero_rodadas < 3; numero_rodadas++){
        carta_jogada1 = ""
        limpa()
        escreva("Pontuação da Rodada - Jogador ", 1, ": ", pontuacao_rodada1,"\n")
        escreva("Pontuação da Rodada - Jogador ", 2, ": ", pontuacao_rodada2,"\n")
        escreva("Pontuação da Mão - Jogador ", 1, ": ", pontuacao_mao1,"\n")
        escreva("Pontuação da Mão - Jogador ", 2, ": ", pontuacao_mao2,"\n")
        auxiliar = falso
        enquanto(auxiliar == falso){
          cartasJogadorUm()
          jogarCartasUm()
        }

        carta_jogada2 = ""
        escreva("Pontuação da Rodada - Jogador ", 1, ": ", pontuacao_rodada1,"\n")
        escreva("Pontuação da Rodada - Jogador ", 2, ": ", pontuacao_rodada2,"\n")
        escreva("Pontuação da Mão - Jogador ", 1, ": ", pontuacao_mao1,"\n")
        escreva("Pontuação da Mão - Jogador ", 2, ": ", pontuacao_mao2,"\n")
        auxiliar = falso
        faca{
          cartasJogadorDois()
          jogarCartasDois()
        }enquanto(auxiliar == falso)
       
        verVencedorRodada()
      }
      verVencedorMao()
    }
  }

  funcao jogarCartasUm(){
    escreva("Qual carta deseja jogar?\n")
    leia(carta_jogada1)
    auxiliar = falso

    para(inteiro i = 0; i < 3; i++){
      se(carta_jogada1 == carta_jogador1[i]){
        carta_jogador1[i] = "Na Mesa"
        auxiliar = verdadeiro
        pare
      }
    }
      se(auxiliar == falso){
        escreva("Carta Inválida, tente novamente \n")
      }
  }

  funcao jogarCartasDois(){
    escreva("Qual carta deseja jogar?\n")
        leia(carta_jogada2)
        auxiliar = falso

        para(inteiro i = 0; i < 3; i++){
            se(carta_jogada2 == carta_jogador2[i]){
                carta_jogador2[i] = "Na Mesa"
                auxiliar = verdadeiro
                pare
            }
        }

        se(auxiliar == falso){
            escreva("Carta Inválida, tente novamente \n")
        }
    }

  funcao mao_cartas(){
    inteiro aux = 0
    cadeia cartas_sorteadas[40]
    inteiro pontuacao_cartas[40] = {28,29,30,31,32,33,34,39,36,37,28,29,30,31,32,33,34,35,36,37,28,29,30,38,32,33,34,40,36,37,28,29,30,37,32,33,34,35,36,37}
    para(inteiro i = 0; i<40; i++){
      cartas_sorteadas[i] = cartas[i]
    }
    para(inteiro i = 0; i < 3; i ++){
      aux = u.sorteia(0,39)
      carta_jogador1[i] = cartas_sorteadas[aux]
      pontuacao_cartas1[i] = pontuacao_cartas[aux]
      enquanto(cartas[aux] == ""){
        aux = u.sorteia(0,39)
        carta_jogador1[i] = cartas[aux]
        pontuacao_cartas1[i] = pontuacao_cartas[aux]
      }
      
      cartas[aux] = ""
    }
    para(inteiro i = 0; i < 3; i++){
      aux = u.sorteia(0,39)
      carta_jogador2[i] = cartas_sorteadas[aux]
      pontuacao_cartas2[i] = pontuacao_cartas[aux]
      enquanto(cartas[aux] == ""){
        aux = u.sorteia(0,39)
        carta_jogador2[i] = cartas[aux]
        pontuacao_cartas2[i] = pontuacao_cartas[aux]
      }
      cartas[aux] = ""
    }
  }
    funcao cartasJogadorUm(){
    escreva("Cartas Jogador 1: \n")
    para(inteiro i = 0; i < 3; i++){
      escreva(carta_jogador1[i],"\n")
    }
  }

  funcao cartasJogadorDois(){
    escreva("Cartas Jogador 2: \n")
    para(inteiro i = 0; i < 3; i++){
      escreva(carta_jogador2[i],"\n")
    }
  }
  funcao verVencedorMao(){
    se(numero_rodadas == 3){
      se(pontuacao_rodada1 > pontuacao_rodada2){
        pontuacao_mao1 ++
      }
      senao se(pontuacao_rodada1 < pontuacao_rodada2){
        pontuacao_mao2 ++
      }
      pontuacao_rodada1 = 0
      pontuacao_rodada2 = 0
    }
  }
   

  funcao verVencedorRodada(){
      se(carta_jogada1 > carta_jogada2){
        pontuacao_rodada1 ++
        
      }
      senao se(carta_jogada1 < carta_jogada2){
        pontuacao_rodada2 ++
        
      }
      senao se(carta_jogada1 == carta_jogada2){
        
      }
  }
}