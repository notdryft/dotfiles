function vim-open() {
  vim -p $(find $1 -name "$2" -exec echo -n ' {}' \;)
}

alias vo=vim-open
