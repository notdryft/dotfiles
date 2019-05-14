case "`uname -s`" in
  Linux)
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
    ;;
esac

function cat-pbcopy() {
  cat "$1" | pbcopy
}

function pwd-pbcopy() {
  pwd | pbcopy
}

function realpath-pbcopy() {
  realpath "$1" | pbcopy
}

alias cat=bat
alias catp=cat-pbcopy
alias grepa='ls -al | grep "@"'
alias p=pwd-pbcopy
alias realp=realpath-pbcopy
