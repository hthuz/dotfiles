#!/bin/bash

# DIR=$(pwd)
DIR=$( cd -- "$(dirname -- "${BASH_SOURCE[0]})" )" &> /dev/null && pwd )
ln -fsnv "${DIR}/.gitconfig" ~
ln -fsnv "${DIR}/.bashrc" ~
ln -fsnv "${DIR}/.bash_profile" ~


FCITX5_PATH="config/fcitx5/conf"
ln -fsnv "${DIR}/${FCITX5_PATH}/pinyin.conf" ~/.${FCITX5_PATH}
ln -fsnv "${DIR}/${FCITX5_PATH}/classicui.conf" ~/.${FCITX5_PATH}
FCITX5_LOCAL="local/share/fcitx5/themes"
cp -r "${DIR}/${FCITX5_LOCAL}/Perl-White" ~/.${FCITX5_LOCAL}

