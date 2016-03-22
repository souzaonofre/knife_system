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



function check-online() {
  if [ `whoami` == "root" ]; then

  echo -e "${azul}Verificando sua conexão...${NORMAL}"
  ping -c1 google.com > /dev/null

  if [ $? = 0 ];then
    echo -e "${verde}Conectado a Internet${NORMAL}"
    echo ""
    exit 0;
  else
    echo -e "${verm}Não conectado a Internet${NORMAL}"
    echo ""
    exit 1;
  fi
}

function get-myip() {
  myip=`curl -s https://wtfismyip.com/text`
  if [ $? = 0 ];then
    echo -e "${verde}Conectado${NORMAL}"
    echo ""
    echo -e "${azul}Verificando se o pacote pv está instalado...${NORMAL}"
    exit 0;
  else
    exit 1;
  fi
}

function check-root() {
  if [ `whoami` == "root" ]; then
    exit 0;
  else
    exit 1;
  fi
}

function check-debian() {
  if [ -e /etc/debian_version ]; then
    exit 0;
  else
    exit 1;
  fi
}

function check-cmd() {
  which "$1" > /dev/null
  if [ $? != 0 ]; then
    _cmd=$(which "$1");
    exit 0;
  else
    _cmd='';
    exit 1;
  fi
}
