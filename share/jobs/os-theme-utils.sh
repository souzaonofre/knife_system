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


##### Instalar temas ###########
#                              #
################################


function main-os-theme() {
  echo -e "${branco}Insira o nome do seu tema, já descompactado e levando em conta que${NORMAL}"
  echo -e "${branco}ele esteja na  mesma pasta que este script:${NORMAL}"
  read theme

  if [ -e $theme ]; then
    clear
    mv -f $theme /usr/share/themes
    sleep 2
    echo -e "${verde}Tema adicionado com sucesso!${NORMAL}"
    sleep 1
    echo -e "${branco}O tema já está pronto para ser instalado, basta apenas${NORMAL}"
    echo -e "${branco}você ir nas configurações e muda-lo${NORMAL}"
    sleep 2
    clear
  else
    clear
    echo -e "${verm}Arquivo não encontrado!${NORMAL}"
    sleep 1
    clear
    instTema
  fi
}

##### Cursor ######

function cursor-os-theme() {
  echo -e "${verde}Insira o nome do seu cursor, já descompactado e levando em conta que ele esteja em sua pasta HOME:${NORMAL}"
  read curso

  if [ -e .icons ]; then
    clear
    mv $curso .icons
    sleep 2
    echo -e "${verde}Cursor adicionado com sucesso!${NORMAL}"
    sleep 1
    clear
    echo -e "${branco}O cursor já está pronto para ser instalado, basta apenas${NORMAL}"
    echo -e "${branco}você ir nas configurações e muda-lo${NORMAL}"
    sleep 2
    reset
  else
    echo -e "${verm}Diretório .icons não foi encontrado em HOME${NORMAL}"
    sleep 1
    echo -e "${azul}Criando diretório em sua home... "
    mkdir .icons
    sleep 2
    echo -e "${verde}Diretório criado, rode o comando novamente"
    sleep 2
    clear
    cursor
  fi
}

##### Ícones #####

function icone-os-theme() {
  echo -e "${verde}Insira o nome do seu ícone, já descompactado e levando em conta que ele esteja em sua pasta HOME:${NORMAL}"
  read icon

  if [ -e $icon ]; then
    clear
    mv -f $icon /usr/share/icons
    sleep 2
    echo -e "${verde}Ícone adicionado com sucesso!${NORMAL}"
    sleep 1
    clear
    echo -e "${branco}O ícone já está pronto para ser instalado, basta apenas${NORMAL}"
    echo -e "${branco}você ir nas configurações e muda-lo${NORMAL}"
    sleep 2
    reset
  else
    clear
    echo -e "${verm}Arquivo não encontrado!${NORMAL}"
    sleep 1
    clear
    icone
  fi
}


function tool() {
  clear
  echo -e "${azul}Instalando gnome-tweak-tool${NORMAL}"
  sleep 2
  apt-get -y install gnome-tweak-tool
  tema
}

function remove-main-os-theme () {
  echo -e "${branco}Insira o nome do tema a se removido:${NORMAL}"
  echo ""
  read rmtheme

  if [ -e /usr/share/themes/$rmtheme ]; then
    sleep 2
    rm -r /usr/share/themes/$rmtheme
    echo -e "${verde}Tema removido com sucesso!"
    sleep 1
    echo -e "${azul}Basta apenas você ir em aparência e muda-lo${NORMAL}"
    sleep 2
    clear
    removeTemas
  else
    echo -e "${verm}Tema não encontrado!"
    sleep 2
    clear
    rmTema
  fi
}

##### Remover Cursor ######

function remove-cursor-os-theme() {
  echo -e "${branco}Insira o nome do cursor a ser removido:${NORMAL}"
  echo ""
  read rmcurso

  if [ -e .icons/$rmcurso ]; then
    sleep 2
    rm -r .icons/$rmcurso
    echo -e "${verde}Cursor removido com sucesso${NORMAL}"
    sleep 1
    echo -e "{branco}Basta apenas você ir em aparência e muda-lo${NORMAL}"
    sleep 2
    removeTemas
  else
    echo -e "${verm}Cursor não encontrado"
    sleep 2
    clear
    rmCursor
  fi
}

###### Remover ícones ######

function remove-icon-os-theme() {
  echo -e "${branco}Insira o nome do ícone a ser removido:${NORMAL}"
  echo ""
  read rmicon

  if [ -e /usr/share/icons/$rmicon ]; then
    sleep 2
    rm -r /usr/share/icons/$rmicon
    echo -e "${verde}Ícone removido com sucesso!${NORMAL}"
    sleep 1
    echo -e "${branco}Basta apenas você ir em aparência e muda-lo${NORMAL}"
    sleep 2
    clear
    removeTemas
  else
    echo -e "${verm}Ícone não encontrado!${NORMAL}"
    sleep 2
    clear
    rmIcones
  fi
}


function menu-os-theme-utils() {
  echo -e "${verde}O que deseja instalar?"
  echo ""

  echo -e "${amarelo}1) ${azul} Temas${NORMAL}"
  echo -e "${amarelo}2) ${azul} Cursor${NORMAL}"
  echo -e "${amarelo}3) ${azul} Ícones${NORMAL}"
  echo -e "${amarelo}4) ${azul} Gnome-Tweak-Tool${NORMAL}"
  echo ""

  echo
  echo -e "${azul}X) ${amarelo}Voltar ao menu principal${NORMAL}"
  read -n1 temeInsta

  while [ temeInsta != '' ]
  do
    case $temeInsta in
      1) reset;
         instTema;
         tema;
      ;;

      2) reset;
         cursor;
         tema;
      ;;

      3) reset;
         icone;
         tema;
      ;;

      4) reset;
         tool;
         tema;
      ;;

      x) fazer;
      ;;

      *) reset;
         tema;
      ;;
    esac
  done
}



###### Menu de remoção de temas ######
function remove-os-theme() {
  echo -e "${verde}O que deseja remover?"
  echo ""

  echo -e "${amarelo}1) ${azul} Temas${NORMAL}"
  echo -e "${amarelo}2) ${azul} Cursor${NORMAL}"
  echo -e "${amarelo}3) ${azul} Ícones${NORMAL}"
  echo ""

  echo -e "${azul}X) ${amarelo}Voltar ao menu principal${NORMAL}"
  read -n1 maintheme

  while [ maintheme != '' ]
  do
    case $maintheme in
      1) clear;
         rmTema;
         removeTemas;
      ;;

      2) clear;
         rmCursor;
         removeTemas;
      ;;

      3) clear;
         rmIcones;
         removeTemas;
      ;;

      x) fazer;
      ;;

      *) reset;
          removeTemas;
      ;;
    esac
  done
}
