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
#           Trabalhar com Firewall Iptables            #
########################################################



############# Firewall ##################

# Área destinada a usuários avançados que possuam conhecimentos para modificar
# esse pequeno firewall de acordo com suas necessidades
#

function firew() {
 startFire() {
   clear
   echo -e "${verm} ATENÇÃO!${NORMAL}"
   echo ""
   sleep 1
   echo -e ${amarelo}"Este é apenas um símples firewall criado por"
   echo -e ${amarelo}"Tácio de Jesus Andrade e editado por mim"
   echo ""
   echo -e ${amarelo}"Ele pode não funcionar em algumas máquinas"
   echo -e ${amarelo}"dependendo muito dos serviços que nela roda"
   echo ""
   echo -e ${amarelo}"Edite-o de acordo com suas necessidades"
   sleep 10
   clear
   ########################
    # Zera todas as Regras #
    ########################
      iptables -F

    ########################################
    # Bloqueia tudo, nada entra e nada sai #
    ########################################
      iptables -P INPUT DROP
      iptables -P FORWARD DROP
      iptables -P OUTPUT DROP

    ############################################################################
    # Impede ataques DoS a maquina limitando a quantidade de respostas do ping #
    ############################################################################
     iptables -A INPUT -p icmp --icmp-type echo-request -m limit --limit 1/s -j ACCEPT

    #################################
    # Bloqieia completamente o ping #
    #################################
      iptables -A INPUT -p icmp --icmp-type echo-request -j DROP

    ##########################
    # Politicas de segurança #
    ##########################
      echo 0 > /proc/sys/net/ipv4/conf/all/accept_source_route # Impede falsear pacote
      echo 0 > /proc/sys/net/ipv4/conf/all/accept_redirects # Perigo de descobrimento de rotas de roteamento (desativar em roteador)
      echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_broadcasts # Risco de DoS
      echo 1 > /proc/sys/net/ipv4/tcp_syncookies # Só inicia a conexão quando recebe a confirmação, diminuindo a banda gasta
      echo 1 > /proc/sys/net/ipv4/conf/default/rp_filter # Faz o firewall responder apenas a placa de rede que recebeu o pacote
      iptables -A INPUT -m state --state INVALID -j DROP # Elimina os pacotes invalidos

    #################################
    # Libera conexoes estabelecidas #
    #################################
      iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
      iptables -A FORWARD -m state --state RELATED,ESTABLISHED,NEW -j ACCEPT
      iptables -A OUTPUT -m state --state RELATED,ESTABLISHED,NEW -j ACCEPT
      iptables -A INPUT -i lo -j ACCEPT

      iptables -A OUTPUT -p tcp --sport 80 -j ACCEPT
      iptables -A INPUT -p tcp --dport 80 -j ACCEPT

    ################################
    # Previne ataque de SYS Flood  #
    ################################
      iptables -t filter -N syn-chain
      iptables -t filter -A syn-chain -p tcp --syn -m limit --limit 2/s -j ACCEPT
      iptables -t filter -A syn-chain -j DROP

    echo ""
    echo -e "${verde}Firewall ativado com sucesso.${NORMAL}"
    sleep 2
    reset
    firew
}
 function stopFire() {
     clear
     echo -e "${verm} Parando firewall..."
     sleep 2
     # -----------------------------------------------------------------
     # Remove todas as regras existentes
     # -----------------------------------------------------------------
       iptables -F
       iptables -X
       iptables -t mangle -F
     # -----------------------------------------------------------------
     # Reseta as politicas padrões, aceitar tudo
     # -----------------------------------------------------------------
       iptables -P INPUT   ACCEPT
       iptables -P OUTPUT  ACCEPT
       iptables -P FORWARD ACCEPT

      echo 1 > /proc/sys/net/ipv4/conf/all/accept_source_route
      echo 1 > /proc/sys/net/ipv4/conf/all/accept_redirects
      echo 0 > /proc/sys/net/ipv4/icmp_echo_ignore_broadcasts
      echo 0 > /proc/sys/net/ipv4/tcp_syncookies
      echo 0 > /proc/sys/net/ipv4/conf/default/rp_filter
     reset
     firew
 }

function permFire() {
 reset
 echo -e "${verde}Esse firewall será 'ativado' toda vez que o sistema for inicializado${NORMAL}"
 sleep 3
 echo  ""

 echo "
      iptables -F
      iptables -P INPUT DROP
      iptables -P FORWARD DROP
      iptables -P OUTPUT DROP
      iptables -A INPUT -p icmp --icmp-type echo-request -m limit --limit 1/s -j ACCEPT
      iptables -A INPUT -p icmp --icmp-type echo-request -j DROP
      echo 0 > /proc/sys/net/ipv4/conf/all/accept_source_route
      echo 0 > /proc/sys/net/ipv4/conf/all/accept_redirects
      echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_broadcasts
      echo 1 > /proc/sys/net/ipv4/tcp_syncookies
      echo 1 > /proc/sys/net/ipv4/conf/default/rp_filter
      iptables -A INPUT -m state --state INVALID -j DROP
      iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
      iptables -A FORWARD -m state --state RELATED,ESTABLISHED,NEW -j ACCEPT
      iptables -A OUTPUT -m state --state RELATED,ESTABLISHED,NEW -j ACCEPT
      iptables -A INPUT -i lo -j ACCEPT
      iptables -A OUTPUT -p tcp --sport 80 -j ACCEPT
      iptables -A INPUT -p tcp --dport 80 -j ACCEPT
      iptables -t filter -N syn-chain
      iptables -t filter -A syn-chain -p tcp --syn -m limit --limit 2/s -j ACCEPT
      iptables -t filter -A syn-chain -j DROP" > firewall.sh

      mv firewall.sh /etc/init.d
      ln -s /etc/init.d/firewall.sh /etc/rc3.d/S54firewall

  echo -e "${verde}Firewall ativado com sucesso${NORMAL}"
  sleep 2

  firew
}

function permStopFire() {
 reset
 echo -e "${azul}Parando firewall...${NORMAL}"
 sleep 2
 rm /etc/rc3.d/S54firewall
 rm /etc/init.d/firewall.sh
 echo -e "${verde}Firewall parado com sucesso${NORMAL}"
 sleep 2
 firew
}

 echo -e "${amarelo}1)${verde} Iniciar firewall${NORMAL}"
 echo -e "${amarelo}2)${verde} Iniciar firewall ${branco}(Permanente)${NORMAL}"
 echo -e "${amarelo}0)${verm} Parar firewall${NORMAL}"
 echo -e "${amarelo}9)${verm} Parar firewall ${branco}(Permanente)${NORMAL}"
 echo ""
 echo -e "${verde}X)${amarelo}Voltar ao menu princípal${NORMAL}"

 read -n1 respFire


 case $respFire in

  1) startFire;
     reset;
     ;;
    2) permFire;
       reset;
       ;;

   0) stopFire;
      reset
      ;;

   9) permStopFire;
      reset;
      ;;

    X | x) fazer;
           ;;

     *) reset;
        firew;

 esac
}
