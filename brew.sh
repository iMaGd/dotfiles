#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"
ln -s bin/sphp "${BREW_PREFIX}/bin/sphp"

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install a modern version of Bash.
brew install bash

# Switch to using brew-installed bash as default shell
sudo bash -c "echo $(brew --prefix)/bin/bash >> /etc/shells"
chsh -s $(brew --prefix)/bin/bash
ln -s $(brew --prefix)/bin/bash /usr/local/bin/bash-terminal-app

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php@7.3 php@7.4 php
brew install gmp

# Catalina required libraries
brew install openldap libiconv

# =============================================

# Better alternative for spotlight
brew cask install alfred

# libraries to manipulate media
brew install imagemagick --with-webp
brew install ffmpeg tree rename


# Add a public key to a remote machine authorized_keys file
brew install ssh-copy-id sshpass

# RAR Archiver
brew cask install rar keka
# brew install unrar pigz

# SVN
brew install svn

# Git
brew install git git-lfs git-extras git-quick-stats

# Install docker
brew cask install docker

# Install AWS cli
brew install awscli
brew install --cask aws-vault

# Javascript package managers
brew install node yarn

# Install rsync
brew install rsync

# Python
brew install python

# Compare files and folders using simple, powerful commands
brew install beyond-compare --cask

# Move and resize windows
brew install spectacle --cask

# Install Chrome & Firefox
brew install google-chrome firefox --cask

# Opera and Brave browsers
brew install opera brave-browser --cask

# Development general tools
brew install --cask warp iterm2
brew install --cask visual-studio-code poedit postman

# Communication apps
brew install discord telegram skype microsoft-teams --cask
brew install teamspeak-client teamviewer anydesk --cask

# Share apps
brew install dropbox evernote --cask

# Image optimization
brew cask install imageoptim imagealpha
brew install jpegoptim optipng pngquant

# Security apps
brew cask install macpass

# Network
brew install speedtest-cli

# Network apps
brew install secure-pipes --cask

# Music apps
brew cask install spotify

# Media apps
brew cask install elmedia-player iina

# Flip clock screem saver
brew install fliqlo --cask

# Color picker
brew install pixel-picker --cask

# Extra apps
brew install moom vnc-viewer tigervnc-viewer --cask

# File transfer apps
brew install transmit cyberduck android-file-transfer --cask

# Downloader
brew install progressive-downloader folx --cask

# Simple and visually-pleasing Pomodoro timer
brew cask install pomotroid

# Torrent
brew install qBittorrent --cask

# Open client for Cisco AnyConnect
brew install openconnect

# A tiny menu bar calendar
brew cask install Itsycal

# Youtube downloader
brew install youtube-dl

# Document apps
brew cask install anki adobe-acrobat-reader

# Finder Toolbar app for macOS to open the current directory in Terminal
brew cask install openinterminal

# Preview list of useful Quick Look plugins for developers
# brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package quicklookase qlvideo

# Install fonts -
# https://www.nerdfonts.com/font-downloads
# https://github.com/Homebrew/homebrew-cask-fonts/tree/master/Casks
brew tap homebrew/cask-fonts
brew install font-fira-code font-fira-mono-nerd-font
brew install font-cascadia-code
brew install font-jetbrains-mono-nerd-font
brew install font-hack font-hack-nerd-font
brew install font-awesome-terminal-fonts
brew install font-code-new-roman-nerd-font

# Cross-platform monitoring tool
brew install glances progress

# Update gem
gem update --system

# =============================================

# Remove outdated versions from the cellar.
brew cleanup
