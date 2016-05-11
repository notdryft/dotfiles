# Path to your oh-my-zsh configuration.
ZSH=/Users/notdryft/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gianu"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often to auto-update? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to the command execution time stamp shown 
# in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github mvn svn scala java sbt npm ruby rake rails python perl bower)

source $ZSH/oh-my-zsh.sh
source $ZSH_CUSTOM/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export TERM=xterm-256color

# Custom paths

export LANG=en_GB.UTF-8
export LANGUAGE=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8

export GOPATH=/Users/notdryft/Code/go

java_version="1.8.0_92"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk${java_version}.jdk/Contents/Home
export JDK_HOME=/Library/Java/JavaVirtualMachines/jdk${java_version}.jdk/Contents/Home

export PATH=/usr/local/sbin:$PATH
export PATH=${JAVA_HOME}/bin:$PATH
export PATH=/opt/arm-eabi-toolchain/bin:$PATH
export PATH=/Users/notdryft/Code/gatling/build/gatling-build/build/bin:$PATH

cassandra_version="3.5"
export PATH=/opt/apache-cassandra-${cassandra_version}/bin:$PATH
export PATH=/opt/apache-cassandra-${cassandra_version}/tools/bin:$PATH

function reset-cassandra() {
  pgrep -f cassandra | xargs kill -9 && \
    rm -rf /opt/apache-cassandra-${cassandra_version}/data && \
    cassandra
}

function unattr() {

  set -x

  attrs=($(xattr "$1"))
  for attr in "${attrs[@]}"; do
    xattr -d "$attr" "$1"
  done
}

alias reset-cassandra=reset-cassandra

eval "$(gatling-build init -)"

function docker-env() {

  eval "$(docker-machine env $1)"
}

function docker-rm() {

  set -x

  docker stop $(docker ps -a -q) && \
  docker rm $(docker ps -a -q)
}

function docker-mrproper() {

  set -x

  docker-rm && \
  docker rmi -f $(docker images | sed 1d | awk '{ print $3 }')
}

alias dc=docker-compose
alias de=docker-env
alias dm=docker-machine
alias dmp=docker-mrproper
alias drm=docker-rm

# Autoenv
source /usr/local/opt/autoenv/activate.sh

# Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# The next line updates PATH for the Google Cloud SDK.
source '/opt/google-cloud-sdk/path.zsh.inc'

# The next line enables zsh completion for gcloud.
source '/opt/google-cloud-sdk/completion.zsh.inc'
