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
alias dps='docker ps -a -q'
alias dm=docker-machine
alias dmc="dm create --driver virtualbox $1"
alias dmp=docker-mrproper
alias drm=docker-rm
