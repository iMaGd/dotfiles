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
brew install php
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# =============================================

# libraries to manipulate media
brew install ffmpeg imagemagick

# Add a public key to a remote machine authorized_keys file
brew install ssh-copy-id

# RAR Archiver
brew cask install rar
brew install unrar

# Git
brew install git git-extras git-quick-stats 

# File retriever
brew install wget 

# Install and upgrade vim 
brew install vim openssl
brew upgrade vim openssl

# Install docker
brew cask install docker 

# PHP package manager  
brew install composer
brew upgrade composer

# Install mysql
brew install mysql mysql@5.7

# Install apache
brew install httpd

# Install ngnix
brew install nginx

# Install WordPress tools
brew install wp-cli wpscan 

# Install PHP IDE
brew cask install phpstorm

# Javascript package managers
brew install node yarn 

# Javascript dev tools
brew install eslint typescript webpack 

# Install Firefox
brew cask install firefox

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

# Extra apps 
brew cask install moom vnc-viewer whatpulse 

# File transfer apps
brew cask install transmit free-download-manager 

# Youtube downloader 
brew install youtube-dl

# Document apps 
brew cask install anki adobe-acrobat-reader

# =============================================

# Remove outdated versions from the cellar.
brew cleanup

gem update --system