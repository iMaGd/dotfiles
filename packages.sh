
# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# NPM packages
npm install -g grunt-cli
npm install -g typescript
npm install -g browserify
npm install -g csslint
npm install -g jshint
npm install -g diff-so-fancy
npm install -g trash-cli

# Gem packages
gem install compass
gem install uglifier
# gem install lolcommits
