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

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php php@7.1
brew install gmp

# =============================================

# Better alternative for spotlight
brew cask install alfred

# libraries to manipulate media
brew install imagemagick --with-webp
brew install ffmpeg tree

# Add a public key to a remote machine authorized_keys file
brew install ssh-copy-id sshpass

# RAR Archiver
brew cask install rar keka
# brew install unrar pigz

# Git
brew install git git-lfs git-extras git-quick-stats

# Install docker
brew cask install docker

# Javascript package managers
brew install node yarn

# Install rsync
brew install rsync

# Python
brew install python

# Compare files and folders using simple, powerful commands
brew cask install beyond-compare

# a tiny menu bar calendar
brew cask install itsycal

# Move and resize windows
brew cask install spectacle

# Install Chrome & Firefox
brew cask install google-chrom firefox

# Opera and Brave browsers
brew cask install opera brave-browser

# Development general tools
brew cask install iterm2 visual-studio-code sublime-text poedit

# Communication apps
brew cask install discord telegram skype teamspeak-client teamviewer

# Share apps
brew cask install dropbox evernote

# Security apps
brew cask install macpass

# Network apps
brew cask install secure-pipes

# Media apps
brew cask install spotify vlc

# Video editing
brew cask install quik

# Color picker
brew cask install pixel-picker

# Extra apps
brew cask install moom vnc-viewer whatpulse

# File transfer apps
brew cask install transmit free-download-manager

# Simple and visually-pleasing Pomodoro timer
brew cask install pomotroid

# Torrent
brew cask install qBittorrent

# Youtube downloader
brew install youtube-dl

# Document apps
brew cask install anki adobe-acrobat-reader

# Finder Toolbar app for macOS to open the current directory in Terminal
brew cask install openinterminal

# Preview list of useful Quick Look plugins for developers
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package quicklookase qlvideo

# Install fonts
brew tap caskroom/fonts
brew cask install font-droidsansmono-nerd-font-mono
brew cask install font-fira-code courier-new

# Cross-platform monitoring tool
brew install glances

# Update gem
gem update --system

# =============================================

# Remove outdated versions from the cellar.
brew cleanup
