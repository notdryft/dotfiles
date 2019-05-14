function docker-env() {

  eval "$(docker-machine env $1)"
}

function docker-machine-insecure-registry() {

  set -x

  docker-machine create --driver virtualbox --engine-insecure-registry $2 $1
}

function docker-rm() {

  set -x

  for container in "$@"; do
    docker stop "$container" && \
      docker rm "$container"
  done
}

function docker-rm-all() {

  set -x

  docker stop $(docker ps -a -q) && \
    docker rm $(docker ps -a -q)
}

function docker-rm-none() {

  set -x

  docker images | \
    grep '<none>' | \
    awk '{ print $3 }' | \
    xargs docker rmi
}

function docker-mrproper() {

  set -x

  docker rmi -f $(docker images -a -q)
}

alias dc=docker-compose
alias de=docker-env
alias dex='docker exec'
alias di='docker images'
alias dpa='docker ps -a -q'
alias dps='docker ps'
alias dl='docker logs'
alias dm=docker-machine
alias dmc="dm create --driver virtualbox $1"
alias dmci=docker-machine-insecure-registry
alias dmp=docker-mrproper
alias dn='docker network'
alias dr='docker run'
alias drm=docker-rm
alias drma=docker-rm-all
alias drmi='docker rmi -f'
alias drmn=docker-rm-none
alias dv='docker volume'
