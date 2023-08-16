case "`uname -s`" in
  Linux)
    function luuc() {
      #flatpak update
      rustup self update && \
        rustup update && \
        dru && \
        dra
    }

    function dra() {
      sudo dnf autoremove
    }

    function dru() {
      sudo dnf --refresh upgrade
    }

    ;;
esac
