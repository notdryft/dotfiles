case "`uname -s`" in
  Darwin)
    function toggle-wifi() {
      networksetup -setairportpower en0 "$1"
    }

    function switch-location() {
      toggle-wifi "off"
      scselect "$1"

      case "$2" in
        --with-wifi)
          toggle-wifi "on"
          ;;
      esac
    }

    alias home='switch-location "Home" --with-wifi'
    alias auto='switch-location "Automatic"'

    ;;
esac
