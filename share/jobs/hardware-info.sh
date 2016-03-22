
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
#           Trabalhar com Informações do Hardware      #
########################################################



########## Informações do hardware e etc.... #################
function infos() {

  function rede() {
    iwco=`iwconfig`
    ifco=`ifconfig`
    dns=`cat /etc/resolv.conf`
    rot=`route`
    echo -e "${amarelo}Informações sobre a sua rede${NORMAL}"
    echo ""
    sleep 2
    echo -e "${amarelo}Equivale ao iwconfig:${NORMAL}"
    sleep 1
    echo -e "${azul} $iwco ${NORMAL}"
    echo ""
    echo -e "${amarelo}Equivale ao ifconfig:${NORMAL}"
    echo -e "${verde} $ifco ${NORMAL}"
    sleep 1
    echo ""
    echo -e "${amarelo}Informções do DNS:${NORMAL}"
    sleep 1
    echo -e "${verm} $dns ${NORMAL}"
    echo ""
    echo -e "${amarelo}ROUTE${NORMAL}"
    sleep 1
    echo -e "${azul} $rot ${NORMAL}"
    echo ""
    echo -e "${branco}Pressione [Q] para voltar${NORMAL}"
    read -n1 redeResp
    case $redeResp in
      Q | q)reset;
            infos;
            ;;
     *)echo -e "${verm}Opção inválida${NORMAL}";
       sleep 2;
       rede;
      ;;
    esac
  }

  function hard() {
    cpui=`cat /proc/cpuinfo`
    memi=`cat /proc/meminfo`
    fre=`free -m`
    echo -e "${amarelo}Informações da CPU e memória(HD)"
    echo ""
    echo -e "${amarelo}CPU:${NORMAL}"
    sleep 1
    echo -e "${verde} $cpui ${NORMAL}"
    echo ""
    echo -e "${amarelo}RAM:${NORMAL}"
    sleep 1
    echo -e "${azul} $memi ${NORMAL}"
    echo ""
    echo -e "${azul} $fre ${NORMAL}"
    echo ""
    echo -e "${branco}Pressione [Q] para voltar${NORMAL}"
    read -n1 hardResp
    case $hardResp in
      Q | q)reset;
            infos;
            ;;
     *)echo -e "${verm}Opção inválida${NORMAL}";
       sleep 2;
       hard;
      ;;
    esac
  }

  function arqui() {
    echo -e "${amarelo}Arquitetura da sua máquina(x86_64 ou i386)${NORMAL}"
    echo ""
    archi=`arch`
    echo -e "${azul}A arquiteura da sua máquina é: ${verm}$archi${NORMAL}"
    echo ""
    echo -e "${branco}Pressione [Q] para voltar${NORMAL}"
    read -n1 arquiResp
    case $arquiResp in
      Q | q)reset;
            infos;
            ;;
     *)reset;
       echo -e "${verm}Opção inválida${NORMAL}";
       sleep 2;
       arqui;
      ;;
    esac
  }
  function ker() {
    unn=`uname -n`
    unr=`uname -r`
    unv=`uname -v`
    echo -e "${amarelo}Informações sobre o kernel${NORMAL}"
    echo ""
    echo -e ${verm} $unn ${azul}$unr ${verde}$unv ${NORMAL}
    echo ""
    echo -e "${branco}Pressione [Q] para voltar${NORMAL}"
    read -n1 kerResp
    case $kerResp in
      Q | q)reset;
            infos;
            ;;
     *)reset;
       echo -e "${verm}Opção inválida${NORMAL}";
       sleep 2;
       ker;
      ;;
    esac
  }

  function ports() {
    function pergNmap() {
      echo -e "${verm}Nmap não instalado${NORMAL}"
      sleep 1
      echo -e "${verde}Deseja instalar o Nmap? [N/S]${NORMAL}"
      read -n1 nmapResp
      case $nmapResp in
        S | s)echo "";
            echo -e "${azul}Instalando Nmap.... Aguarde...${NORMAL}";
            echo "";
            apt-get -y install nmap | pv;
            reset;
            infos;
             ;;

        N | n)reset;
              infos;
              ;;

      esac

    }
    echo -e "${amarelo}Informações sobre os serviços e portas rodando${NORMAL}"
    echo -e "${branco}Necessita o Nmap instalado${NORMAL}"
    echo ""
    which nmap > /dev/null
    if [ $? = 0 ];then
    nmap -sV localhost
    echo ""
    echo -e "${verde}Voltar [Q]${NORMAL}"
    read -n1 voltResp
    case $voltResp in
      Q | Q)fazer;
    esac
  else
    reset;pergNmap
  fi
  }

  echo -e "${amarelo}Obter informaçõe do seu computador ou notebook:${NORMAL}"
  echo -e "${branco}Seu IP(externo): $myip"
  echo ""
  echo -e "${verm}1) ${verde}Informações de rede${NORMAL}"
  sleep 0.1
  echo -e "${verm}2) ${verde}Informações do sistema(HD, RAM)${NORMAL}"
  sleep 0.1
  echo -e "${verm}3) ${verde}Informações do kernel${NORMAL}"
  sleep 0.1
  echo -e "${verm}4) ${verde}Arquitetura do processador${NORMAL}"
  sleep 0.1
  echo -e "${verm}5) ${verde}Serviços e portas${branco}(Nmap)${NORMAL}"
  echo ""
  echo -e "${verde}Q) ${verm}Voltar ao menú princípal${NORMAL}"
  read -n1 respInfo
  case $respInfo in
    1) reset;
       rede;
       ;;

       2)reset;
         hard;
         ;;

         3)reset;
           ker;
           ;;

           4)reset;
             arqui;
             ;;

             5)reset;
               ports;
               ;;

             Q | q)fazer;
                   ;;

                   *)reset;
                     infos;
    esac
}
