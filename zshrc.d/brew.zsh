function buuc() {
  brew update && \
    brew upgrade && \
    brew cleanup -s && \
    brew doctor && \
    brew missing
}

case "`uname -s`" in
  Darwin)
    #export PATH=/usr/local/opt/gnu-getopt/bin:$PATH
    #export PATH=/usr/local/opt/openssl/bin:$PATH

    alias bsl='brew services list'

    ;;
  Linux)
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

    ;;
esac
