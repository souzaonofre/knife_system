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
#               Funções para sistema de arquivos       #
########################################################

###### Procurar arquivos #####

function location() {
   echo -e $verm"#############################################${NORMAL}"
   echo -e "                   ${verde}Procurar               ${NORMAL}"
   echo -e $verm"#############################################${NORMAL}"
   echo ""
   echo -e $amarelo"Digite o nome do arquivo:${NORMAL}"
   read achha
   echo -e "${verm}Atualizando arquivos no sistema, dependendo do espaço ocupado no seu HD isso${NORMAL}"
   echo -e "${verm}poderá levar alguns minutos. Aguarde...${NORMAL}"
   echo ""
   updatedb
   locate $achha | grep $achha
   echo ""
   echo -e "${verde}Pressione ${amarelo}[ Q ] ${verde}para voltar${NORMAL}"
   read -n1 locatResp

   case $locatResp in

     Q | q)fazer;
           ;;

      *)reset;
        location;
    esac
}