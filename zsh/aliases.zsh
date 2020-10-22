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

# ls 
alias llr='ls -ltrh'

#JAVA
alias set_java7='rm -f /home/nfrancil/bin/java; ln -s  ~/local/java-se-7u75-ri/jre/bin/java /home/nfrancil/bin/; export JAVA_HOME=$HOME/local/java-se-7u75-ri/jre; export JRE_HOME=$JAVA_HOME'
alias set_java8='rm -f /home/nfrancil/bin/java;ln -s  /home/nfrancil/local/jdk1.8.0_144/jre/bin/java /home/nfrancil/bin/java; export JAVA_HOME=$HOME/local/jdk1.8.0_144/jre; export JRE_HOME=$JAVA_HOME'

alias set_java8jdk='rm -rf /home/nfrancil/bin/java; ln -s $HOME/local/jdk8/jre/bin/java $HOME/bin/ ; export JAVA_HOME=$HOME/local/jdk8 ; export JRE_HOME=$JAVA_HOME ; export CATALINA_OPTS="-Xmx12288m -Xms8192m"'

#Talend
alias talendStart='~/local/TOS_DI-20180116_1512-V6.5.1/TOS_DI-linux-gtk-x86_64'

#TOMCAT
alias TOMSTART='/home/nfrancil/local/apache-tomcat-7.0.57/bin/startup.sh'
alias TOMSTOP='/home/nfrancil/local/apache-tomcat-7.0.57/bin/shutdown.sh'
alias TOMLOG='tail -f -n50  /home/nfrancil/local/apache-tomcat-7.0.57/logs/catalina.out'

#alias VM
alias VMWEB='ssh root@10.0.0.25'
alias VMJBrowse='ssh root@10.0.0.210'
alias VMJBrowsedev='ssh root@10.0.0.253'
alias VMGBrowse='ssh root@10.0.0.116'
alias VMGBrowsedev='ssh root@10.0.0.202'
alias VMOAK='ssh root@10.0.0.193'
alias VMREPETDB='ssh root@10.0.0.234'

alias VMINTERMINE='ssh centos@192.168.10.51'
alias mountInter='sshfs centos@192.168.10.51:/home/centos/git/Intermine_Official /home/nfrancil/git/Intermine_official'
alias VMPORTINTER='ssh -ND :7777 centos@192.168.10.51'
alias umountInter='fusermount -u /home/nfrancil/git/Intermine_official'
alias VMNEXTFLOW='ssh centos@192.168.10.48'
alias VMMariene='ssh centos@138.102.146.76'

alias VM-webfiles='ssh root@10.0.0.172'
alias VMWheat='ssh root@10.0.0.91'

