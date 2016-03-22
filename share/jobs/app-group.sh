############################### Informações #############################
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
#         Trabalhar com Grupos de Aplicativos          #
########################################################


########### Grupos de programas ###################

function apt-group-internet() {
  echo "Esse processo pode levar alguns minutos dependendo da sua conexão"
  echo "com a internet. Não imterrompa o processo de instalação"
  echo "Alguns programas não poderão ser instalados, se eles não estiverem nos repositório"
  echo ""

  echo "Deseja continuar [S/N]?"
  read -n1 resp

  if [ $resp = "s" ];then
    reset
    echo -e $verm"#############################################${NORMAL}"
    echo -e "                   ${verde}Internet               ${NORMAL}"
    echo -e $verm"#############################################${NORMAL}"
    echo ""
    echo -e "${azul}Aguarde até o fim da instalação${NORMAL}"
    sleep 5
    apt-get update | pv -W > /dev/null
    apt-get -y install chromium | pv -W > /dev/null #navegador
    apt-get -y install firefox | pv -W > /dev/null #navegador
    apt-get -y install hexchat | pv -W > /dev/null #chat IRC
    apt-get -y install skype | pv -W > /dev/null #Bate-papo(vídeo chamada)
    apt-get -y install adobe-flashplugin | pv -W > /dev/null #flash
    apt-get -y install openjdk-8-jre | pv -W > /dev/null #Java
    apt-get -y install proxychains | pv -W > /dev/null #proxy de rede
    apt-get -y install qbittorrent | pv -W > /dev/null #Cliente torrent
    apt-get -y install thunderbird | pv -W > /dev/null #Cliente de Email
    apt-get -y install filezilla | pv -W > /dev/null #Transferência de arquivo viab FTP
    apt-get -y install nmap zenma | pv -W > /dev/nullp #Scaner de rede
    echo ""
    echo -e "${verde}Instalção concluída${NORMAL}"
    sleep 1
  else
    menu
  fi
}

function apt-group-office() {
  echo "Esse processo pode levar alguns minutos dependendo da sua conexão"
  echo "com a internet. Não imterrompa o processo de instalação"
  echo "Alguns programas não poderão ser instalados, se eles não estiverem nos repositório"
  echo ""

  echo "Deseja continuar [S/N]?"
  read -n1 resp

  if [ $resp = "s" ];then
    reset

    echo -e $verm"#############################################${NORMAL}"
    echo -e "                   ${verde}Escritório              ${NORMAL}"
    echo -e $verm"#############################################${NORMAL}"
    echo ""
    echo -e "${azul}Aguarde até o fim da instalação${NORMAL}"
    sleep 5

    apt-get update | pv -W > /dev/null
    apt-get -y install libreoffice | pv -W > /dev/null #Office
    apt-get -y install abiword | pv -W > /dev/null
    apt-get -y install evince | pv -W > /dev/null
    apt-get -y install scribus | pv -W > /dev/null
    apt-get -y install gnumeric | pv -W > /dev/null
    apt-get -y install vim | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
  else
    menu
  fi
}

function apt-group-grafics() {
  echo "Esse processo pode levar alguns minutos dependendo da sua conexão"
  echo "com a internet. Não imterrompa o processo de instalação"
  echo "Alguns programas não poderão ser instalados, se eles não estiverem nos repositório"
  echo ""

  echo "Deseja continuar [S/N]?"
  read -n1 resp

  if [ $resp = "s" ];then
    reset

    echo -e $verm"#############################################${NORMAL}"
    echo -e "                   ${verde}Gráficos               ${NORMAL}"
    echo -e $verm"#############################################${NORMAL}"
    echo ""
    echo -e "${azul}Aguarde até o fim da instalação${NORMAL}"

    sleep 5

    apt-get update | pv -W > /dev/null
    apt-get -y install gimp gimp-data-extras | pv -W > /dev/null #Editor de imagens
    apt-get -y install inkscape | pv -W > /dev/null #Criação de imagens vetoriais
    apt-get -y install blender | pv -W > /dev/null #Edição 3D
    apt-get -y install kolourpaint4 | pv -W > /dev/null
    apt-get -y install umbrello | pv -W > /dev/null
    apt-get -y install pencil | pv -W > /dev/null
    apt-get -y install logisim | pv -W > /dev/null
    apt-get -y install dia | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"

    sleep 1
  else
    menu
  fi
}


function apt-group-games() {
  echo "Esse processo pode levar alguns minutos dependendo da sua conexão"
  echo "com a internet. Não imterrompa o processo de instalação"
  echo "Alguns programas não poderão ser instalados, se eles não estiverem nos repositório"
  echo ""

  echo "Deseja continuar [S/N]?"
  read -n1 resp

  if [ $resp = "s" ];then
    reset
    echo -e $verm"#############################################${NORMAL}"
    echo -e "                   ${verde}Jogos                  ${NORMAL}"
    echo -e $verm"#############################################${NORMAL}"
    echo ""
    echo -e "${azul}Aguarde até o fim da instalação${NORMAL}"
    sleep 5
    apt-get update | pv -W > /dev/null
    apt-get -y install minetest | pv -W > /dev/null #Estilo minecraft
    apt-get -y install warzone2100 | pv -W > /dev/null
    apt-get -y install wine | pv -W > /dev/null
    apt-get -y install playonlinux | pv -W > /dev/null #Rodar programas do Windows
    apt-get -y install openarena | pv -W > /dev/null
    apt-get -y install flightgear | pv -W > /dev/null
    apt-get -y install supertux | pv -W > /dev/null
    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
  else
    menu
  fi
}


function apt-group-midia() {
  echo "Esse processo pode levar alguns minutos dependendo da sua conexão"
  echo "com a internet. Não imterrompa o processo de instalação"
  echo "Alguns programas não poderão ser instalados, se eles não estiverem nos repositório"
  echo ""

  echo "Deseja continuar [S/N]?"
  read -n1 resp

  if [ $resp = "s" ];then
    reset
    echo -e $verm"#############################################${NORMAL}"
    echo -e "                   ${verde}mídia                  ${NORMAL}"
    echo -e $verm"#############################################${NORMAL}"
    echo ""
    echo -e "${azul}Aguarde até o fim da instalação${NORMAL}"
    sleep 5
    apt-get update | pv -W > /dev/null
    apt-get -y install brasero | pv -W > /dev/null #Gravador de disco
    apt-get -y install vlc | pv -W > /dev/null #Reprodutor de vídeo
    apt-get -y install rhythmbox | pv -W > /dev/null #Reprodutor de áudio
    apt-get -y install openshot | pv -W > /dev/null #Edição de vídeo
    apt-get -y install cinerrela | pv -W > /dev/null #Edição de vídeo
    apt-get -y install kdenlive | pv -W > /dev/null #Edição de vídeo
    apt-get -y install virtualbox-qt | pv -W > /dev/null #Máquina virtual
    apt-get -y install audacity | pv -W > /dev/null #Editor de áudio
    apt-get -y install cheese | pv -W > /dev/null #Webcam
    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
  else
    menu
  fi
}

function apt-group-dev() {
  echo "Esse processo pode levar alguns minutos dependendo da sua conexão"
  echo "com a internet. Não imterrompa o processo de instalação"
  echo "Alguns programas não poderão ser instalados, se eles não estiverem no repositório"
  echo ""

  echo "Deseja continuar [S/N]?"
  read -n1 resp

  if [ $resp = "s" ];then
    reset
    echo -e $verm"#############################################${NORMAL}"
    echo -e "                   ${verde}Desenvolvimento        ${NORMAL}"
    echo -e $verm"#############################################${NORMAL}"
    echo ""
    echo -e "${azul}Aguarde até o fim da instalação${NORMAL}"
    sleep 5
    apt-get update | pv -W > /dev/null
    apt-get -y install atom | pv -W > /dev/null
    apt-get -y install openjdk-8-jre | pv -W > /dev/null
    apt-get -y install portugol-studio | pv -W > /dev/null
    apt-get -y install eclipse | pv -W > /dev/null
    apt-get -y install qtcreator | pv -W > /dev/null
    apt-get -y install netbeans | pv -W > /dev/null
    apt-get -y install geany | pv -W > /dev/null
    apt-get -y install bluefish | pv -W > /dev/null
    apt-get -y install python | pv -W > /dev/null
    apt-get -y install perl | pv -W > /dev/null
    apt-get -y install ipython | pv -W > /dev/null
    apt-get -y install pycompile | pv -W > /dev/null
    apt-get -y install mysql-workbench | pv -W > /dev/null
    apt-get -y install pgadmin3 | pv -W > /dev/null
    apt-get -y install lazarus | pv -W > /dev/null
    apt-get -y install vim | pv -W > /dev/null
    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
  else
    menu
  fi
}


function apt-group-menu() {
  echo -e "${verm}*************************************${NORMAL}"
  sleep 0.1
  echo -e "${verde}            PROGRAMAS               ${NORMAL}"
  sleep 0.1
  echo -e "${verm}*************************************${NORMAL}"
  sleep 0.1
  echo ""
  echo -e "${amarelo} 1)${azul} Internet${NORMAL}"
  sleep 0.1
  echo -e "${amarelo} 2)${azul} Escritório${NORMAL}"
  sleep 0.1
  echo -e "${amarelo} 3)${azul} Gráficos${NORMAL}"
  sleep 0.1
  echo -e "${amarelo} 4)${azul} Jogos${NORMAL}"
  sleep 0.1
  echo -e "${amarelo} 5)${azul} Mídia${NORMAL}"
  sleep 0.1
  echo -e "${amarelo} 6)${azul} Desenvolvimento${NORMAL}"
  sleep 0.1
  echo -e "${amarelo} 7)${azul} Pós formatação${NORMAL}"
  sleep 0.1
  echo -e "${amarelo} 8)${azul} Completo${NORMAL}"
  sleep 0.1
  echo ""
  echo -e "pressione [ Q ] para voltar ao menu principal"
  echo -e "${verm}Escolha qual pacote deseja instalar:${NORMAL}"
  read -n1 proResp

  while [ proResp != '' ]; do
    case $proResp in
      1) reset;
       internet;
       programas;
      ;;

      2) reset;
       escritorio;
       programas;
      ;;

      3) reset;
       graficos;
       programas;
      ;;

      4) reset;
       jogos;
       programas;
      ;;

      5) reset;
       midia;
       programas;
      ;;

      6) reset;
       dev;
       programas;
      ;;

      7) reset;
       formatacao;
       programas;
      ;;

      8) reset;
       completo;
       programas;
      ;;

      Q | q) fazer;
      ;;

      *) reset;
       programas;
      ;;
    esac
  done
}
