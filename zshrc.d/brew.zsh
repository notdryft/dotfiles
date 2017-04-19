function buuc() {
  brew update && \
    brew upgrade && \
    brew cleanup -s && \
    brew cask cleanup && \
    brew doctor && \
    brew missing && \
    apm upgrade -c false
}

alias bsl='brew services list'

export PATH=/usr/local/opt/gnu-getopt/bin:$PATH
export PATH=/usr/local/opt/openssl/bin:$PATH
