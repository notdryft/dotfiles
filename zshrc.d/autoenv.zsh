case "`uname -s`" in
  Darwin)
    source /usr/local/opt/autoenv/activate.sh
    ;;
  Linux)
    source ~/.autoenv/activate.sh
    ;;
esac
