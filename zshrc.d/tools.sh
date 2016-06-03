function touch-chmod() {
  touch "$1" && chmod u+x "$1"
}

alias tc=touch-chmod
