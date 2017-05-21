_pattern="^(.+ - )([0-9]+)( .+)$"

decrement() {
  if [[ $1 =~ $_pattern ]]; then
    name="${match[1]}$((match[2] - 1))${match[3]}"
    echo "Renaming $1 to $name"
    mv "$1" "$name"
    if [[ "$?" -ne 0 ]]; then
      echo "Failed to rename $1 into $name" >&2
      exit 1
    fi
  fi
}

increment() {
  if [[ $1 =~ $_pattern ]]; then
    name="${match[1]}$((match[2] + 1))${match[3]}"
    echo "Renaming $1 to $name"
    mv "$1" "$name"
    if [[ "$?" -ne 0 ]]; then
      echo "Failed to rename $1 into $name" >&2
      exit 1
    fi
  fi
}

alias decr=decrement
alias incr=increment
