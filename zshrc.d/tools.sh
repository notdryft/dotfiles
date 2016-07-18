function cat-pbcopy() {
  cat "$1" | pbcopy
}

function pwd-pbcopy() {
  pwd | pbcopy
}

function touch-chmod() {
  touch "$1" && chmod u+x "$1"
}

alias catp=cat-pbcopy
alias p=pwd-pbcopy
alias tc=touch-chmod
