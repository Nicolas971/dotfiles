source ~/.zplug/zplug

isOSX="[[ $OSTYPE == *darwin* ]]"
isLinux="[[ $OSTYPE == *linux* ]]"

zplug "plugins/git-extra",  from:oh-my-zsh, if:"which git"
zplug "plugins/rsync",  from:oh-my-zsh
#zplug "plugins/tmux",  from:oh-my-zsh, if:"which tmux"
zplug "plugins/common-aliases",  from:oh-my-zsh

# macOS specifics
zplug "plugins/brew", from:oh-my-zsh, if:$isOSX
zplug "plugins/brew-cask", from:oh-my-zsh, if:$isOSX
#zplug "plugins/osx", from:oh-my-zsh, if:$isOSX

#zplug "knu/z", of:z.sh, nice:10
#zplug "rimraf/k", of:k.sh

zplug "zsh-users/zsh-completions", nice: 17
zplug "zsh-users/zsh-syntax-highlighting", nice:18
zplug "zsh-users/zsh-history-substring-search", nice:19
#zplug "zsh-users/zsh-autosuggestions", nice: 19

# Local scripts
zplug "~/.zsh", of:"*.zsh", from:local
zplug "~/.zsh", of:"extra.zsh", from:local, if:"[[ -f ~/.zsh/extra.zsh ]]"

DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="false"
COMPLETION_WAITING_DOTS="true"
APPEND_HISTORY="true"

export TERM=xterm-256color

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

export PATH="$HOME/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# Make vim the default editor
export EDITOR="vim"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups
# Make some commands not show up in history
export HISTIGNORE="ls:ll:la:..:cd:cd -:pwd:exit:date:* --help"

# Highlight section titles in manual pages
export LESS_TERMCAP_md="$ORANGE"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Link Homebrew casks in `/Applications` rather than `~/Applications`
#export HOMEBREW_CASK_OPTS="--appdir=/Applications"

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# bind UP and DOWN arrow keys
#zmodload zsh/terminfo
#bindkey "$terminfo[kcuu1]" history-substring-search-up
#bindkey "$terminfo[kcud1]" history-substring-search-down
#
## bind UP and DOWN arrow keys (compatibility fallback
## for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

###########GIT#################
source /home/nfrancil/.dotfiles/zplug/repos/robbyrussell/oh-my-zsh/plugins/gitfast/git-completion.bash
source /home/nfrancil/.dotfiles/zplug/repos/robbyrussell/oh-my-zsh/plugins/gitfast/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true


#############ANT#################
export ANT_HOME=$HOME/local/ant
export PATH=$PATH:$ANT_HOME/bin

###########MAVEN#################

export M2_HOME=$HOME/local/maven
export PATH=$M2_HOME/bin:$PATH
export M2_REPO=$HOME/.m2/repository
export MAVEN_OPTS=$JAVA_OPTS
export M2_OPTS=$JAVA_OPTS

###########JAVA##################
export JAVA_HOME=$HOME/local/jdk1
export JRE_HOME=$JAVA_HOME
export JAVA_OPTS="$JAVA_OPTS -Dorg.apache.el.parser.SKIP_IDENTIFIER_CHECK=true -XX:MaxPermSize=2024m -XX:PermSize=256m -Xmx2024m -Xss256k"

###########TOMCAT################
CATALINA_HOME=$HOME/local/apache-tomcat-7.0.57
CATALINA_BASE=$HOME/local/apache-tomcat-7.0.57
CATALINA_TMPDIR=$CATALINA_HOME/tmp/tomcat
export CATALINA_HOME CATALINA_BASE

#########POSTGRESQL#############
PG_HOME=/etc/postgresql/10/main/
PGPASSFILE=/home/nfrancil/.pgpass

#. /etc/bash_completion.d/git

alias vi=vim

export PATH="/home/nfrancil/git/repet_pipe/:~/git/repet_pipe/SMART/Java/Python:$PATH"
export PERL5LIB="/home/nfrancil/local/JBROWSE/JBrowse-1.16.3/extlib/lib/perl5/:/home/nfrancil/git/perl/lib/GPI-Parser/lib/:$PERL5LIB"
source ~/git/repet_pipe/config/setEnv.sh
source ~/perl5/perlbrew/etc/bashrc

set_java8

alias setPerlJBrowse1_16_3="export PERL5LIB=/var/www/html/JBrowse-1.16.3/extlib/lib/perl5/:/home/nfrancil/git/perl/lib/GPI-Parser/lib/:$PERL5LIB"

export PATH=/home/nfrancil/local/htslib/bin:/home/nfrancil/local/solr-7.2.1/solr/bin/:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/nfrancil/.sdkman"
[[ -s "/home/nfrancil/.sdkman/bin/sdkman-init.sh" ]] && source "/home/nfrancil/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export GOPATH=${HOME}/go
export PATH=/usr/local/go/bin:${PATH}:${GOPATH}/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/nfrancil/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/nfrancil/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/nfrancil/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/nfrancil/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

