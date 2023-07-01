#!/bin/bash

# DIR=$(pwd)
DIR=$( cd -- "$(dirname -- "${BASH_SOURCE[0]})" )" &> /dev/null && pwd )
ln -fsnv "${DIR}/.gitconfig" ~
ln -fsnv "${DIR}/.bashrc" ~

