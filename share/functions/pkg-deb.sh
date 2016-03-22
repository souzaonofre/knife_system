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
#               Funções para pacotes debian            #
########################################################

##### Instalar programas #####

function apt-install() {

   echo -e $verm"#############################################${NORMAL}"
   echo -e "                   ${verde}Instalar               ${NORMAL}"
   echo -e $verm"#############################################${NORMAL}"
   echo ""
   echo -e $amarelo"Digite o nome do programa a ser instalado:${NORMAL}"
   read inst

   echo -e "${azul}Instalando $inst. Por favor, aguarde...${NORMAL}"

   apt-get update  | pv -W > /dev/null
   apt-get -y install $inst  | pv -W > /dev/null

   echo ""
   echo -e "${verde}$int instalado com sucesso${NORMAL}"
}

###### Remover programas #####

function apt-remove() {

   echo -e $verm"#############################################${NORMAL}"
   echo -e "                   ${verde}Remover               ${NORMAL}"
   echo -e $verm"#############################################${NORMAL}"
   echo ""
   echo -e $amarelo"Digite o nome do programa a ser removido:${NORMAL}"
   read rmove
   sleep 1

   echo -e "${azul}Removendo $rmove. Por favor, aguarde...${NORMAL}"

   apt-get -y remove --purge $rmove | pv -W > /tmp/KS_remove.log
   apt-get -y autoremove | pv -W > /tmp/KS_aremove.log

   echo ""
   echo -e "${verde}$rmove removido com sucesso${NORMAL}"
   sleep 2
}

###### Repara dependências #####

function apt-repair() {

   echo -e $verm"#############################################${NORMAL}"
   echo -e "                   ${verde}Reparar                ${NORMAL}"
   echo -e $verm"#############################################${NORMAL}"
   echo ""
   echo -e "${amarelo}Reparando... aguarde...${NORMAL}"
   echo ""
   sleep 1

   apt-get -f install | pv -W > /tmp/KS_finstall.log
   apt-get -y autoremove | pv -W > /tmp/KS_autremove.log
   apt-get clean | pv -W > /tmp/KS_clean.log
   dpkg --configure -a | pv -W > /tmp/KS_configa.log

   echo -e "${verde}Dependências reparadas com sucesso${NORMAL}"
   sleep 2
}

###### Procurar programas #####

function dpkg-search() {

   echo -e $verm"#############################################${NORMAL}"
   echo -e "                   ${verde}Procurar               ${NORMAL}"
   echo -e $verm"#############################################${NORMAL}"
   echo ""

   echo -e $amarelo"Digite o nome do programa:${NORMAL}"
   read ach

   dpkg -l $ach
   sleep 5
   fazer
}

##### Atualizar distro ######

function apt-distro-upgrade() {

   echo -e "${azul}Em alguns casos de atualização completa do sistema${NORMAL}"
   echo -e "${azul}podem ocorrer erros nas dependências, causando perda total do${NORMAL}"
   echo -e "${azul}sistema, levando á uma nova formatação.${NORMAL}"
   echo ""

   echo -e "${verde}Deseja realmente atualizar sua distribuição? [S/N]${NORMAL}"
   read -n1 atualit

   if [ $atualit == "n" ];then
      menu
   else
      clear
      echo -e $amarelo"****************************************"
      echo -e "${verde}        Atualizando sistema!${NORMAL}"
      echo -e $amarelo"****************************************"
      sleep 2
      echo ""
      echo -e "${azul}Atualizando seu sistema, isso pode demorar algun minutos${NORMAL}"
      apt-get -uy dist-upgrade | pv -W > /dev/null
      echo ""
      echo -e $verde"Atualização terminada"
      sleep 1
      menu
   fi
}
