#!/usr/bin/env sh

src="$HOME"/.viminal
repo=git@github.com:lupomontero/viminal.git
vimrc="$HOME"/.vimrc
vim="$HOME"/.vim

if [ -d "$src" ]; then
  rm -rf "$src"
fi

git clone "$repo" "$src"
cd "$src"
git submodule init
git submodule update

if [ -h "$vimrc" ]; then
  rm "$vimrc"
elif [ -f "$vimrc" ]; then
  mv "$vimrc" "$vimrc".bk
fi

if [ -h "$vim" ]; then
  rm "$vim"
elif [ -d "$vim" ]; then
  mv "$vim" "$vim".bk
fi

ln -s "${src}/vimrc" "$vimrc"
ln -s "${src}/vim" "$vim"

exit 0

