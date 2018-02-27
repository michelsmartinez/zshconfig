# If you come from bash you might have to change your $PATH.
PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/local/bin:/usr/local/git/bin:/usr/X11/bin
export PYTHONPATH="${PYTHONPATH}:/usr/local/central-do-assinante/"


# Path to your oh-my-zsh installation.
  export ZSH=/home/michelsm/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="miloshadzic"  #-> esse é legal
#ZSH_THEME="michel"        #-> este também mas mais futurista
#ZSH_THEME="wezm"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/local/bin:/usr/local/git/bin:/usr/X11/bin

export PYTHONPATH="${PYTHONPATH}:/usr/local/central-do-assinante/"

#atalhos simplificados
alias ls='ls --color'
alias ponto='python2 ~/codigos/scripts/ponto.py'
alias cpf='python2 ~/codigos/scripts/cpf.py'
alias cnpj='python2 ~/codigos/scripts/cnpj.py'
alias docs='python2 ~/codigos/scripts/doc.py'
alias cdsc='cd ~/codigos/scripts'

alias sshws='sshpass -p TE31ra#! ssh michel.martinez@dsv-ws02-mia.dev.terra.com'
alias sshsuat='sshpass -p TE31ra#! ssh michel.martinez@dsv-suat-c5-mia.dev.terra.com'
alias hlg_suat='sshpass -p TE31ra#! ssh michel.martinez@hlg-suat-c5-mia.dev.terra.com'
alias engine03='sshpass -p TE31ra#! ssh michel.martinez@dsv-cengine03-mia.dev.terra.com'
alias p='python'
alias poll.sync="sshpass -p TE31ra#! rsync --exclude 'target/' --progress -avz -e ssh ~/git/ServicePoll/ michel.martinez@dsv-suat-c5-mia.dev.terra.com:~/git/ServicePoll"
alias canc.sync="sshpass -p TE31ra#! rsync --progress -avz -e ssh ~/git/cancelador/ michel.martinez@dsv-suat-c5-mia.dev.terra.com:~/git/cancelador"
alias sgtec.sync="sshpass -p TE31ra#! rsync --progress -avz -e ssh ~/git/sgtec/ michel.martinez@dsv-suat-c5-mia.dev.terra.com:~/git/sgtec"
alias mosgtec.sync="sshpass -p TE31ra#! rsync --progress -avz -e ssh ~/git/sgtec_modulos/ michel.martinez@dsv-suat-c5-mia.dev.terra.com:~/git/sgtec_modulos"
alias hlg.conn="sshpass -p TE31ra#! ssh -L 1522:ora-hlg01-mia.tpn.terra.com:1521 michel.martinez@hlg-suat-c5-mia.dev.terra.com"
alias dsv.conn="sshpass -p TE31ra#! ssh -L 1522:dsv12c-db02-mia.tpn.terra.br:1521 michel.martinez@hlg-suat-c5-mia.dev.terra.com"

alias noproxy.conn="sshpass -p TE31ra#! ssh -vCNfD 127.0.0.1:9992 michel.martinez@dsv-ws02-mia.dev.terra.com"
alias tree='find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'
alias cls='clear && echo -en "\e[3J"'

export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export ORACLE_HOME=/usr/lib/oracle/12.1/client64
export LD_LIBRARY_PATH=$ORACLE_HOME/lib/:$ORACLE_HOME/client64/bin
