
# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# use none-ssl node respository
npm config set registry http://registry.npmjs.org/
# packages for sublimelinter
npm install -g csslint
npm install -g jshint

gem install compass
 
npm install -g grunt-cli bower

// Updating prefixes database
npm update caniuse-db
