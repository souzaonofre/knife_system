############################### Informações #############################
# Autor: Anônimo000                                                     #
# Data: 05/02/2016                                                      #
# Descrição: Para inúmeras finalidades descritas no Readme.md           #
# Versão: 3.0 - os-propose                                              #
# Data de modificação: 15/03/2016                                       #
# OS: Apenas para derivados do Debian.                                  #
#                                                                       #
# Sinta-se livre para mudar o código, e deixa-lo a seu gosto            #
# Não retire os devidos créditos                                        #
#########################################################################

########################################################
#               Trabalhar com Git/Github               #
########################################################

###### Usando o GIT ####################
#      Opção ainda em fase beta        #
########################################

function github () {
  function gitClon () {
    echo -e "${azul}Clonar um repositorio remoto${NORMAL}"
    echo ""
    echo -e "${verde}Insira o link do repositório remoto:${NORMAL}"
    read cloResp

    echo -e "${azul}Clonando repositório...${NORMAL}"
    git clone $cloResp
    if [ $? == "0" ];then
      echo -e "${verde}Diretório clonado com sucesso!${NORMAL}"
      sleep 2
      github

    else
      echo -e "${verm}Não foi possível clonar diretório remoto${NORMAL}"
      sleep 1
      echo ""
      echo "Verifique o link do diretório remoto e tente novamente"
      echo "O link deve atender esse formato https://github.com/User/exemplo"
      echo ""
      sleep 2
      gitClon
    fi
  }

  function gitAdd () {
    echo -e "${azul}Adicionar um projeto a lista de prjetos pendentes${NORMAL}"
    echo -e "${azul}Isso não irá adicinar ao seu diretório remoto${NORMAL}"
    echo ""
    echo -e "${verde}Digite o caminho onde se encontra o projeto:${NORMAL}"
    read addResp

    if [ -e $addResp ];then
      reset
      echo -e "${amarelo}Adicionando projeto...${NORMAL}"
      sleep 2
      git add $gitAdd > /dev/null
      echo -e "${verde}Projeto adicionado com sucesso${NORMAL}"
      sleep 2
      github
    else
      reset
      echo -e "${verm}Diretório do projeto não encontrado${NORMAL}"
      sleep 2
      gitAdd
    fi
  }

  function gitLogin () {
    reset
    echo -e "${azul}Login para entrar no seu git${NORMAL}"
    echo -e "${azul}levando em conta que já tenha realizado git add do seu projeto${NORMAL}"
    sleep 3
    echo ""
    git push
    github
  }

  function gitStatus () {
    echo -e "${amarelo}Verificar status do seu git no momento${NORMAL}"
    sleep 2
    git status
    echo ""
    echo -e "${verde}Pressione ${amarelo}[ Q ]${verde} para sair${NORMAL}"
    read -n1 staResp

    case $staResp in
      Q | q)github;
             ;;

       *)gitStatus;
    esac
  }

  function gitCommit () {
    function confirm() {
     git commit
    }
     echo -e "${azul}Enviar definitivamente seu projeto ${NORMAL}"
     echo ""
     echo -e "${amarelo}1) ${verde}Verificar status${NORMAL}"
     echo -e "${amarelo}2) ${verde}Confirmar envio${NORMAL}"
     read comResp

     case $comResp in

       1)reset;
         gitStatus;
         ;;

         2)reset;
           confirm;
           ;;

           *)reset;
             gitCommit;
    esac

  }

  function gitIni () {
    echo -e "${azul}Criando diretório remoto vazio${NORMAL}"
    sleep 2
    git init
    echo -e "${verde}Diretório criado"
    sleep 1
    github
  }

  echo -e "${branco}Essa opção ainda está em fase de desenvolvimento e adaptações${NORMAL}"
  echo ""
  echo ""
  sleep 0.1
  echo -e "${azul}1) ${verm}Clonar repositório remoto${NORMAL}"
  sleep 0.1
  echo -e "${azul}2) ${verm}Adicionar projeto${NORMAL}"
  sleep 0.1
  echo -e "${azul}3) ${verm}Login${NORMAL}"
  sleep 0.1
  echo -e "${azul}4) ${verm}Enviar projeto remoto${NORMAL}"
  sleep 0.1
  echo -e "${azul}5) ${verm}Criar pasta${NORMAL}"
  sleep 0.1
  echo -e "${azul}6) ${verm}Status do git${NORMAL}"
  sleep 0.1
  echo ""
  echo -e "${verm}Q) ${azul}Voltar para o menu princípal${NORMAL}"
  read -n1 gitResp

  while [ gitResp != '' ];do
    case $gitResp in

      1)reset;
        gitClon;
        ;;

        2)reset;
          gitAdd;
          ;;

          3)reset;
            gitLogin;
            ;;

            4)reset;
              gitCommit;
              ;;

              5)reset;
                gitIni;
                ;;

                6)reset;
                  gitStatus;
                  ;;

                  Q | q)fazer;
                  ;;

                  *)github;

  esac
done
}
