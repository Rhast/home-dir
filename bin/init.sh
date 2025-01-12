#!/bin/bash

set -e

check_and_install() {
    local cmd=$1
    shift
    local install_cmd=("$@")

    if ! command -v $cmd &> /dev/null
    then
        echo "Installing $cmd..."
        "${install_cmd[@]}"
    else
        echo "$cmd is already installed"
    fi
}

# Example usage of the function
check_and_install brew \
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && eval $(/opt/homebrew/bin/brew shellenv)

check_and_install git-credential-manager \
    brew install --cask git-credential-manager

check_and_install zed \
    brew install --cask zed

check_and_install ghostty \
    brew install --cask ghostty

echo 'Configuring Mac Os shortcuts...'
defaults write com.apple.finder NSUserKeyEquivalents -dict-add "Go to Folder..." -string "@L"
