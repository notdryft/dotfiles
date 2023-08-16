function sbuc() {
  set -x
  if [ ! -z "$1" ]; then
    params="-Dproject.version=$1"
  fi
  sbt $params 'clean;compile;package;publishLocal'
}

function sbucc() {
  set -x
  if [ ! -z "$1" ]; then
    params="-Dproject.version=$1"
  fi
  sbt $params 'clean;compile;package;^ publishLocal;^ publishM2'
}
