function unattr() {

  set -x

  attrs=($(xattr "$1"))
  for attr in "${attrs[@]}"; do
    xattr -d "$attr" "$1"
  done
}
