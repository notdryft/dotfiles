#!/usr/bin/env bash

version=3.0.0-alpha.5

repo=https://github.com/be5invis/Iosevka
releases=$repo/releases/download/v$version

fonts=(
  04-iosevka-term-lig
  08-iosevka-term-lig-slab
  12-iosevka-term-lig-curly
  16-iosevka-term-lig-curly-slab
  iosevka-term-lig-ss05
  iosevka-term-lig-ss08
  iosevka-term-lig-ss09
)

rm -rf ./*iosevka*
for font in "${fonts[@]}"; do
  archive=$font-$version.zip
  wget "$releases/$archive"
  unzip "$archive" "ttf/*" -d "$font/"
  rm "$archive"
done
