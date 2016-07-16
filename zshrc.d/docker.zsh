function docker-env() {

  eval "$(docker-machine env $1)"
}

function docker-machine-insecure-registry() {

  set -x

  docker-machine create --driver virtualbox --engine-insecure-registry $2 $1
}

function docker-rm() {

  set -x

  docker stop $(docker ps -a -q) && \
  docker rm $(docker ps -a -q)
}

function docker-mrproper() {

  set -x

  docker rmi -f $(docker images | sed 1d | awk '{ print $3 }')
}

alias dc=docker-compose
alias de=docker-env
alias di='docker images'
alias dpa='docker ps -a -q'
alias dps='docker ps'
alias dm=docker-machine
alias dmc="dm create --driver virtualbox $1"
alias dmci=docker-machine-insecure-registry
alias dmp=docker-mrproper
alias drm=docker-rm
