function cat-pbcopy() {
  cat "$1" | pbcopy
}

function pwd-pbcopy() {
  pwd | pbcopy
}

function realpath-pbcopy() {
  realpath "$1" | pbcopy
}

function touch-chmod() {
  touch "$1" && chmod u+x "$1"
}

alias catp=cat-pbcopy
alias p=pwd-pbcopy
alias realp=realpath-pbcopy
alias tc=touch-chmod
