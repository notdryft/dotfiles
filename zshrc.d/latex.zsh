function latexpng() {
  latex "$1.tex"
  dvipng -D 300 -bg Transparent -T tight -o "$1.png" "$1.dvi"
}
