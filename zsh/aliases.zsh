# Easier navigation: .., ..., ...., .....
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# IP addresses
#alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# Reload zsh rc
alias srczshrc="source ~/.zshrc"

# Git
alias g="git"

# Clear swap & cache mem
alias clearswap="echo 'swapoff -a && swapon -a' | sudo sh"
alias clearcache="echo 'sync && echo 3 > /proc/sys/vm/drop_caches' | sudo sh"

# bash
export PATH=$PATH:$HOME/local/ncbi-blast-2.10.1+/bin
export BLASTDB=$HOME/local/blastdb


# ls 
alias llr='ls -ltrh'

# Neo4j
alias neo4j_desktop='./home/nfrancil/local/neo4j-desktop-1.4.13-x86_64.AppImage'



#JAVA
alias set_java7='rm -f /home/nfrancil/bin/java; ln -s  ~/local/java-se-7u75-ri/jre/bin/java /home/nfrancil/bin/; export JAVA_HOME=$HOME/local/java-se-7u75-ri/jre; export JRE_HOME=$JAVA_HOME'
alias set_java8='rm -f /home/nfrancil/bin/java;ln -s  /home/nfrancil/local/jdk1.8.0_144/jre/bin/java /home/nfrancil/bin/java; export JAVA_HOME=$HOME/local/jdk1.8.0_144/jre; export JRE_HOME=$JAVA_HOME'

alias set_java8jdk='rm -rf /home/nfrancil/bin/java; ln -s $HOME/local/jdk8/jre/bin/java $HOME/bin/ ; export JAVA_HOME=$HOME/local/jdk8 ; export JRE_HOME=$JAVA_HOME ; export CATALINA_OPTS="-Xmx12288m -Xms8192m"'
alias set_java9jdk='rm -rf /home/nfrancil/bin/java; ln -s $HOME/local/jdk-9.0.1/bin/java $HOME/bin/ ; export JAVA_HOME=$HOME/local/jdk-9.0.1/ ; export JRE_HOME=$JAVA_HOME ; export CATALINA_OPTS="-Xmx12288m -Xms8192m"'

alias remakejava='ln -s /etc/alternatives/java /bin/java'
alias set_java11jdk='rm -rf /home/nfrancil/bin/java; ln -s $HOME/local/jdk-11/bin/java $HOME/bin/ ; export JAVA_HOME=$HOME/local/jdk-11 ; export JRE_HOME=$JAVA_HOME ; export CATALINA_OPTS="-Xmx12288m -Xms8192m"; export JAVA_OPTS=" -Dorg.apache.el.parser.SKIP_IDENTIFIER_CHECK=true -XX:MaxPermSize=20g -XX:PermSize=10g -Xmx20g -Xss256k"'
alias set_java17jdk='rm -rf /home/nfrancil/bin/java; ln -s $HOME/local/jdk-17.0.5/bin/java $HOME/bin/ ; export JAVA_HOME=$HOME/local/jdk-17.0.5 ; export JRE_HOME=$JAVA_HOME ; export CATALINA_OPTS="-Xmx12288m -Xms8192m"'
#Talend
alias talendStart='~/local/TOS_DI-20180116_1512-V6.5.1/TOS_DI-linux-gtk-x86_64'

#TOMCAT
alias TOM9="export CATALINA_HOME=$HOME/local/apache-tomcat-9.0.44 ;export  CATALINA_BASE=$HOME/local/apache-tomcat-9.0.44 ;CATALINA_TMPDIR=$CATALINA_HOME/tmp/tomcat ; export CATALINA_HOME CATALINA_BASE"
alias TOMSTART='/home/nfrancil/local/apache-tomcat-7.0.57/bin/startup.sh'
alias TOMSTOP='/home/nfrancil/local/apache-tomcat-7.0.57/bin/shutdown.sh'
alias TOMLOG='tail -f -n50  /home/nfrancil/local/apache-tomcat-7.0.57/logs/catalina.out'

#alias VM
alias VMWEB='ssh root@10.0.0.25'
alias VMJBrowse='ssh root@10.0.0.210'
alias VMJBrowsedev='ssh root@10.0.0.253'
alias VMGBrowse='ssh root@10.0.0.116'
alias VMGBrowsedev='ssh root@10.0.0.202'
alias VMOAK2='ssh root@10.0.0.193'
alias VMOAK1='ssh root@10.0.0.174'
alias VMREPETDB='ssh root@10.0.0.234'
alias VMGRAPE='ssh root@10.0.0.107'
alias VMHEALTHY='ssh root@10.0.0.194'

alias VMINTERMINE='ssh centos@192.168.10.51'
alias mountInter='sshfs centos@192.168.10.51:/home/centos/git/intermine /home/nfrancil/git/Intermine_official'
alias VMPORTINTER='ssh -ND :7777 centos@192.168.10.51'
alias umountInter='fusermount -u /home/nfrancil/git/Intermine_official'
alias VMNEXTFLOW='ssh centos@192.168.10.48'
alias VMMariene='ssh centos@138.102.146.14'
alias VMREPETDBINTEG='ssh centos@192.168.10.219'
alias VMREPETDBPROD='ssh centos@192.168.10.152'
alias VMREPETDBPRODBAK='ssh centos@192.168.10.109'

alias connectWEBVM='ssh centos@192.168.10.51 -gNL 9091:localhost:8080'
alias VMPANG='ssh centos@138.102.146.226'
alias VM-webfiles='ssh root@10.0.0.172'
alias VMWheat='ssh root@10.0.0.91'
alias VMWheatMine='ssh root@10.0.0.24'
alias VMCARE='ssh centos@138.102.146.82'

alias NEOJN='ssh rocky@192.168.10.217'
alias VMIPHI='ssh centos@192.168.20.157'
