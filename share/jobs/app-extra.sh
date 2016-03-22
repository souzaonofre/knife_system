
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
#      trablahar com instalação de aplicativos extras  #
########################################################

function app-extra-skype() {
    echo -e "${verde}###########################################"
    echo -e "${amarelo}               Skype                     "
    echo -e "${verde}###########################################"
    echo ""

    echo -e "${azul}Instalando Skype...${NORMAL}"
    sleep 2

    apt-get -y update | pv -W > /dev/null
    apt-get -y install skype | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
}

function app-extra-vlc() {
    echo -e "${verde}###########################################"
    echo -e "${amarelo}               VLC                     "
    echo -e "${verde}###########################################"
    echo ""

    echo -e "${azul}Instalando VLC...${NORMAL}"
    sleep 2

    apt-get -y update  | pv -W > /dev/null
    apt-get -y install vlc | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
}

function app-extra-rhythmbox() {
    echo -e "${verde}###########################################"
    echo -e "${amarelo}               Rhythmbox                     "
    echo -e "${verde}###########################################"
    echo ""

    echo -e "${azul}Instalando Rhythmbox...${NORMAL}"
    sleep 2

    apt-get -y update | pv -W > /dev/null
    apt-get -y install rhythmbox | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
}

function app-extra-wine() {
    echo -e "${verde}###########################################"
    echo -e "${amarelo}               Emulador                     "
    echo -e "${verde}###########################################"
    echo ""

    echo -e "${azul}Instalando emuladores(Wine, PlayOnLinux)...${NORMAL}"
    sleep 2

    apt-get -y update | pv -W > /dev/null
    apt-get -y install wine | pv -W > /dev/null
    apt-get -y install playonlinux | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
}

function app-extra-brasero() {
    echo -e "${verde}###########################################"
    echo -e "${amarelo}               Brasero                     "
    echo -e "${verde}###########################################"
    echo ""

    echo -e "${azul}Instalando brasero...${NORMAL}"
    sleep 2

    apt-get -y update | pv -W > /dev/null
    apt-get -y install brasero | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
}

function app-extra-gimp() {
    echo -e "${verde}###########################################"
    echo -e "${amarelo}               Gimp                     "
    echo -e "${verde}###########################################"
    echo ""

    echo -e "${azul}Instalando gimp...${NORMAL}"
    sleep 2

    apt-get -y update | pv -W > /dev/null
    apt-get -y install gimp gimp-data-extras | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
}

function app-extra-torrent() {
    echo -e "${verde}###########################################"
    echo -e "${amarelo}               QBitTorrent                     "
    echo -e "${verde}###########################################"
    echo ""

    echo -e "${azul}Instalando qbittorrent...${NORMAL}"
    sleep 2

    apt-get -y update | pv -W > /dev/null
    apt-get -y install qbittorrent | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
}

function app-extra-libreoffice() {
    echo -e "${verde}###########################################"
    echo -e "${amarelo}               LibreOffice                     "
    echo -e "${verde}###########################################"
    echo ""

    echo -e "${azul}Instalando suíte LibreOffice...${NORMAL}"
    sleep 2

    apt-get -y update | pv -W > /dev/null
    apt-get -y install libreoffice | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
}

function app-extra-flash-plugin() {
    echo -e "${verde}###########################################"
    echo -e "${amarelo}               Flash                     "
    echo -e "${verde}###########################################"
    echo ""

    echo -e "${azul}Instalando adobe-flash-player...${NORMAL}"
    sleep 2

    apt-get -y update | pv -W > /dev/null
    apt-get -y install adobe-flashplugin | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
}

function app-extra-paint() {
    echo -e "${verde}###########################################"
    echo -e "${amarelo}               Paint                     "
    echo -e "${verde}###########################################"
    echo ""

    echo -e "${azul}Instalando KolourPaint...${NORMAL}"
    sleep 2

    apt-get -y update | pv -W > /dev/null
    apt-get -y install kolourpaint4 | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
}

function app-extra-pluma() {
    echo -e "${verde}###########################################"
    echo -e "${amarelo}               Pluma                     "
    echo -e "${verde}###########################################"
    echo ""

    echo -e "${azul}Instalando Pluma(editor de texto)...${NORMAL}"
    sleep 2

    apt-get -y update | pv -W > /dev/null
    apt-get -y install pluma | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
}

function app-extra-chrome() {
    echo -e "${verde}###########################################"
    echo -e "${amarelo}               Chrome                     "
    echo -e "${verde}###########################################"
    echo ""

    echo -e "${azul}Instalando chromium...${NORMAL}"
    sleep 2

    apt-get -y update | pv -W > /dev/null
    apt-get -y install chromium | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
}

function app-extra-firefox() {
    echo -e "${verde}###########################################"
    echo -e "${amarelo}               Firefox                     "
    echo -e "${verde}###########################################"
    echo ""

    echo -e "${azul}Instalando firefox...${NORMAL}"
    sleep 2

    apt-get -y update | pv -W > /dev/null
    apt-get -y install firefox | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalção concluída${NORMAL}"
    sleep 1
}

function app-extra-cheese() {
    echo -e "${verde}###########################################"
    echo -e "${amarelo}               Chesse                     "
    echo -e "${verde}###########################################"
    echo ""

    echo -e "${azul}Instalando cheese(WebCam)...${NORMAL}"
    sleep 2

    apt-get -y update | pv -W > /dev/null
    apt-get -y install cheese | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação cuncluída${NORMAL}"
    sleep 1
}

function app-extra-java() {
    echo -e "${verde}###########################################"
    echo -e "${amarelo}               Java                     "
    echo -e "${verde}###########################################"
    echo ""

    echo -e "${azul}Instaladno Open-JDK...${NORMAL}"
    sleep 2

    apt-get -y update | pv -W > /dev/null
    apt-get -y install openjdk-8-jre | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
}

function app-extra-all() {
    echo -e "${verde}###########################################"
    echo -e "${amarelo}               TODOS                     "
    echo -e "${verde}###########################################"
    echo ""

    echo -e "${azul}Aguarde até o fim da instalação...${NORMAL}"
    sleep 2

    apt-get -y update | pv -W > /dev/null
    apt-get -y install kolourpaint4 | pv -W > /dev/null
    apt-get -y install adobe-flashplugin | pv -W > /dev/null
    apt-get -y install libreoffice | pv -W > /dev/null
    apt-get -y install qbittorrent | pv -W > /dev/null
    apt-get -y install skype | pv -W > /dev/null
    apt-get -y install openjdk-8-jre | pv -W > /dev/null
    apt-get -y install vlc | pv -W > /dev/null
    apt-get -y install rhythmbox | pv -W > /dev/null
    apt-get -y install wine | pv -W > /dev/null
    apt-get -y install playonlinux | pv -W > /dev/null
    apt-get -y install brasero | pv -W > /dev/null
    apt-get -y install gimp gimp-data-extras | pv -W > /dev/null
    apt-get -y install pluma | pv -W > /dev/null
    apt-get -y install chromium | pv -W > /dev/null
    apt-get -y install firefox | pv -W > /dev/null
    apt-get -y install cheese | pv -W > /dev/null

    echo ""
    echo -e "${verde}Instalação concluída${NORMAL}"
    sleep 1
}

function app-extra-full() {
    echo "Esse processo pode levar alguns minutos dependendo da sua conexão"
    echo "com a internet. Não imterrompa o processo de instalação"
    echo "Alguns programas não poderão ser instalados, se eles não estiverem nos repositório"
    echo ""

    echo "Deseja continuar [S/N]?"
    read -n1 resp

    if [ $resp = "s" ];then
        echo -e $verm"#############################################${NORMAL}"
        echo -e "                   ${verde}Full                   ${NORMAL}"
        echo -e $verm"#############################################${NORMAL}"
        echo ""
        echo -e "${azul}Instalando programas isso pode levar algun minutos${NORMAL}"
        echo -e "${azul}Por favor, aguarde...${NORMAL}"
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
        apt-get -y install nmap zenmap | pv -W > /dev/null #Scaner de rede
        apt-get -y install libreoffice | pv -W > /dev/null #Office
        apt-get -y install abiword | pv -W > /dev/null
        apt-get -y install evince | pv -W > /dev/null
        apt-get -y install scribus | pv -W > /dev/null
        apt-get -y install gnumeric | pv -W > /dev/null
        apt-get -y install vim | pv -W > /dev/null
        apt-get -y install gimp gimp-data-extras | pv -W > /dev/null #Editor de imagens
        apt-get -y install inkscape | pv -W > /dev/null #Criação de imagens vetoriais
        apt-get -y install blender | pv -W > /dev/null #Edição 3D
        apt-get -y install kolourpaint4 | pv -W > /dev/null
        apt-get -y install umbrello | pv -W > /dev/null
        apt-get -y install pencil | pv -W > /dev/null
        apt-get -y install logisim | pv -W > /dev/null
        apt-get -y install dia | pv -W > /dev/null
        apt-get -y install minetest | pv -W > /dev/null #Estilo minecraft
        apt-get -y install warzone2100 | pv -W > /dev/null
        apt-get -y install wine | pv -W > /dev/null
        apt-get -y install playonlinux | pv -W > /dev/null #Rodar programas do Windows
        apt-get -y install openarena | pv -W > /dev/null
        apt-get -y install flightgear | pv -W > /dev/null
        apt-get -y install brasero | pv -W > /dev/null #Gravador de disco
        apt-get -y install vlc | pv -W > /dev/null #Reprodutor de vídeo
        apt-get -y install rhythmbox | pv -W > /dev/null #Reprodutor de áudio
        apt-get -y install openshot | pv -W > /dev/null #Edição de vídeo
        apt-get -y install cinerrela | pv -W > /dev/null #Edição de vídeo
        apt-get -y install kdenlive | pv -W > /dev/null #Edição de vídeo
        apt-get -y install virtualbox-qt | pv -W > /dev/null #Máquina virtual
        apt-get -y install audacity | pv -W > /dev/null #Editor de áudio
        apt-get -y install cheese | pv -W > /dev/null #Webcam
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
        apt-get -y install skype | pv -W > /dev/null
        apt-get -y install openjdk-8-jre | pv -W > /dev/null
        apt-get -y install vlc | pv -W > /dev/null
        apt-get -y install rhythmbox | pv -W > /dev/null
        apt-get -y install wine | pv -W > /dev/null
        apt-get -y install playonlinux | pv -W > /dev/null
        apt-get -y install brasero | pv -W > /dev/null
        apt-get -y install gimp gimp-data-extras | pv -W > /dev/null
        apt-get -y install qbittorrent | pv -W > /dev/null
        apt-get -y install libreoffice | pv -W > /dev/null
        apt-get -y install adobe-flashplugin | pv -W > /dev/null
        apt-get -y install kolourpaint4 | pv -W > /dev/null

        echo ""
        echo -e "${verde}Instalação cuncluída${NORMAL}"
    else
        menu
    fi
}

########### Menu da função #############
function menu-apps-extra() {

    echo -e "${azul}Escolha uma das opções abaixo a serem instaladas:${NORMAL}"
    echo ""

    echo -e "${amarelo}A) ${verm}Skype${NORMAL}"
    echo -e "${amarelo}B) ${verm}VLC${NORMAL}"
    echo -e "${amarelo}C) ${verm}Rhythmbox${NORMAL}"
    echo -e "${amarelo}D) ${verm}Emulação de games${NORMAL}"
    echo -e "${amarelo}E) ${verm}Brasero${NORMAL}"
    echo -e "${amarelo}F) ${verm}Gimp${NORMAL}"
    echo -e "${amarelo}G) ${verm}qbittorrent${NORMAL}"
    echo -e "${amarelo}H) ${verm}LibreOffice${NORMAL}"
    echo -e "${amarelo}I) ${verm}flash-plugin${NORMAL}"
    echo -e "${amarelo}J) ${verm}Paint${NORMAL}"
    echo -e "${amarelo}K) ${verm}Pluma${NORMAL}"
    echo -e "${amarelo}L) ${verm}Chromium${NORMAL}"
    echo -e "${amarelo}M) ${verm}Firefox${NORMAL}"
    echo -e "${amarelo}N) ${verm}Cheese${NORMAL}"
    echo -e "${amarelo}O) ${verm}Open-JDK${NORMAL}"
    echo -e "${amarelo}P) ${verm}Todos${NORMAL}"
    echo ""

    echo -e "${azul}0) ${verde}Voltar ao menu principal${NORMAL}"
    read -n1 format

    while [ $format != '' ]
    do
        case $format in
            a) reset;
              skype;
              clear;
              formatacao;
            ;;

            b)  reset;
              vlc;
              clear;
              formatacao;
            ;;

            c)  reset;
              rhythmbox;
              clear
              formatacao;
            ;;

            d)  reset;
              wine;
              clear;
              formatacao;
            ;;

            e)  reset;
              brasero;
              clear;
              formatacao;
            ;;

            f)  reset;
              gimp;
              clear;
              formatacao;
            ;;

            g)  reset;
              torrent;
              clear;
              formatacao;
            ;;

            h)  reset;
              office;
              clear;
              formatacao;
            ;;

            i)  reset;
              flash-plugin;
              clear;
              formatacao;
            ;;

            j)  reset;
              paint;
              clear;
              formatacao;
            ;;

            k)  reset;
              pluma;
              clear;
              formatacao;
            ;;

            l)  reset;
              chrome;
              clear;
              formatacao;
            ;;

            m)  reset;
              firefox;
              clear;
              formatacao;
            ;;

            n)  reset;
              cheese;
              clear
              formatacao;
            ;;

            o)  reset;
              java;
              clear;
              formatacao;
            ;;

            p)  reset;
              all;
              clear
              formatacao;
            ;;

            0)  reset;
              fazer;
            ;;

            *)  reset;
              formatacao;
            ;;
        esac
    done
}
