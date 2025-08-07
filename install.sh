#!/bin/bash
echo "Installing bashrc-standout..."

mkdir -p "$HOME/.bashrc.d"

for file in .bashrc.d/*.sh; do
  dest="$HOME/$file"
  if [ "$(realpath "$file")" != "$(realpath "$dest")" ]; then
    cp "$file" "$dest"
  fi
done

cp .bashrc "$HOME/.bashrc"


rm -- "$0"
