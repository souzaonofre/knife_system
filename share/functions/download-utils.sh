############################## Informações #############################
# Autor: Anônimo000                                                     #
# Data: 05/02/2016                                                      #
# Descrição: Para inúmeras finalidades descritas no Readme.md           #
# Versão: 3.0 - propose                                                 #
# Data de modificação: 22/03/2016                                       #
# OS: Apenas para derivados do Debian.                                  #
#                                                                       #
# Sinta-se livre para mudar o código, e deixa-lo a seu gosto            #
# Não retire os devidos créditos                                        #
#########################################################################

########################################################
#           funcoes para Download de Arquivos          #
########################################################


##### Download de arquivos ##############
function baixar() {
  echo -e "${azul}Digite o link do arquivo à ser baixado:${NORMAL}"
  read downResp
  clear

  echo -e "${azul}Digite o nome da pasta e o nome do arquivo que será baixado:${NORMAL}"
  echo -e "${branco}Ex: /home/fulano/Downloads/arquivo.deb${NORMAL}"

  echo ""
  read -e direResp
  clear

  echo -e "${verde}Baixando arquivo${NORMAL}"
  echo ""
  echo "$downResp" > /var/log/KS_arqdown.log
  echo "$direResp" > /var/log/KS_dirdown.log

  wget -O $direResp $downResp

  echo ""
  echo -e "${verde}Download concluído${NORMAL}"
  echo -e "${branco}Pressione [Q] para voltar${NORMAL}"
  read -n1 conVOL

  case $conVol in
    Q | q) fazer;
    ;;

    *) fazer;
    ;;
  esac
}

function contBaixar() {
  if [ -e /var/log/KS_dirdown.log ]; then
    echo -e "${azul}Continuando download anterior...${NORMAL}"
    echo ""

    arqDown=`cat /var/log/KS_arqdown.log`
    dirDown=`cat /var/log/KS_dirdown.log`

    wget -c -O $dirDown $arqDown

    echo ""
    echo -e "${verde}Download concluído${NORMAL}"
    echo -e "${branco}Pressione [Q] para voltar${NORMAL}"
    read -n1 concluVOL

    case $concluVol in
      Q | q) fazer;
      ;;

      *) fazer;
      ;;
    esac
  else
    echo -e "${verm}Não há downloads${NORMAL}"
    sleep 2
    reset
    down
  fi
}


function histDown() {
  echo -e "${azul}Excluindo histórico...${NORMAL}"

  rm /var/log/KS_*.log

  echo -e "${verde}Concluído!${NORMAL}"
  sleep 1

  reset
  down
}


function check-online() {
  ping -c1 google.com > /dev/null
}


# ************ Main ****************

if [ $? = 0 ]; then
  echo -e "${verde}Baixar arquivos da internet${NORMAL}"
  echo ""

  echo -e "${verm}1) ${amarelo}Baixar arquivo${NORMAL}"
  echo -e "${verm}2) ${amarelo}Continuar download${NORMAL}"
  echo -e "${verm}3) ${amarelo}Limpar histórico de download${NORMAL}"

  echo ""
  echo -e "${branco}Pressione [Q] para voltar${NORMAL}"

  echo -e "${azul}Escolha uma das opções:${NORMAL}"
  read -n 1 wgetResp

  case $wgetResp in
    1)  reset;
      baixar;
      reset;
      down;
    ;;

    2)  reset;
      contBaixar;
      reset;
      down;
    ;;

    3)  reset;
      histDown;
      reset;
      down;
    ;;

    q | Q)  fazer;
    ;;

    *) echo -e "${verm}Opção inválida${NORMAL}"
      sleep 2;
      reset;
      down;
    ;;
  esac
else
  echo -e "${verm}Não conectado${NORMAL}"
  echo ""

  echo -e "${branco}Pressione [Q] para voltar${NORMAL}"
  read -n1 notCon

  case $notCon in
    Q | q)  fazer;
    ;;

    *) fazer;
    ;;
  esac
fi
