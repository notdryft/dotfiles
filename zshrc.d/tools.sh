function pwd-pbcopy() {
  pwd | pbcopy
}

function touch-chmod() {
  touch "$1" && chmod u+x "$1"
}

alias p=pwd-pbcopy
alias tc=touch-chmod
