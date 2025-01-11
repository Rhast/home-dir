#!/bin/bash
echo 'Installing Homebrew...'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval $(/opt/homebrew/bin/brew shellenv)

echo 'Installing git credentials helper ...'
brew install --cask git-credential-manager
