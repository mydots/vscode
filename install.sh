#!/bin/sh

KERNEL="$(uname -s)";
PATH_TO_FILE="$(cd `dirname $0` && pwd)";

if [[ $KERNEL = "Darwin" ]]; then
  rm -rf ~/Library/Application\ Support/Code/User/settings.json
  mkdir -p ~/Library/Application\ Support/Code/User/
  ln -s ${PATH_TO_FILE}/settings.json ~/Library/Application\ Support/Code/User/settings.json 
fi

if [[ $KERNEL = "Linux" ]]; then
  rm -rf ~/.config/Code/User/settings.json
  mkdir -p ~/.config/Code/User/
  ln -s ${PATH_TO_FILE}/settings.json ~/.config/Code/User/settings.json
fi
