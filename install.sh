#!/bin/bash

# DIR=$(pwd)
DIR=$( cd -- "$(dirname -- "${BASH_SOURCE[0]})" )" &> /dev/null && pwd )
ln -fsnv "${DIR}/.gitconfig" ~
ln -fsnv "${DIR}/.bashrc" ~
ln -fsnv "${DIR}/.bash_profile" ~
ln -fsnv "${DIR}/.keys.conf" ~
ln -fsnv "${DIR}/.zshrc" ~

if [[ ! -e ~/.config/ranger ]]
then
	mkdir ~/.config/ranger
fi
ln -fsnv "${DIR}/.config/ranger/rc.conf" ~/.config/ranger
ln -fsnv "${DIR}/.config/ranger/rifle.conf" ~/.config/ranger

if [[ ! -e ~/.config/kitty ]]
then
	mkdir ~/.config/kitty
fi
ln -fsnv "${DIR}/.config/kitty/kitty.conf" ~/.config/kitty

# to be confirmed
FCITX5_PATH=".config/fcitx5/conf"
if [[ -e ~/${FCITX5_PATH} ]]
then
    ln -fsnv "${DIR}/${FCITX5_PATH}/pinyin.conf" ~/${FCITX5_PATH}
    ln -fsnv "${DIR}/${FCITX5_PATH}/classicui.conf" ~/${FCITX5_PATH}
    FCITX5_LOCAL=".local/share/fcitx5/themes"
    cp -r "${DIR}/${FCITX5_LOCAL}/Perl-White" ~/${FCITX5_LOCAL}
fi

