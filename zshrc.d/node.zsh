case "`uname -s`" in
  Linux)
    export NPM_CONFIG_PREFIX=~/.npm-global
    export PATH=${NPM_CONFIG_PREFIX}/bin:$PATH
    ;;
esac

function npm-latest() {
 npm i -g $1@$(npm show $1 versions --json | jq -r '.[-1]')
}

alias npmu='for package in $(npm -g outdated --parseable --depth=0 | cut -d: -f4); do npm -g install "$package"; done'
alias npml=npm-latest
