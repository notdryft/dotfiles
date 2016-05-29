function vim-open() {
  vim -p $(find $1 -name '*.go' -exec echo -n ' {}' \;)
}

alias vo=vim-open
