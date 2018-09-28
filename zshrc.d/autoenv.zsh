case "`uname -s`" in
  Darwin)
    source /usr/local/opt/autoenv/activate.sh
    ;;
  Linux)
    eval "$(direnv hook zsh)"
    ;;
esac
