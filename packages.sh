
# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# use none-ssl node respository
npm config set registry http://registry.npmjs.org/
# packages for sublimelinter
npm install -g csslint
npm install -g jshint
npm install -g preprocess
npm install -g csscomb

###############################################################################
# Extra packages                                                              #
###############################################################################

# Node packages
npm install -g grunt-cli
npm install -g typescript
npm install -g gulp-cli
npm install express
npm install -g bower
npm install mongoose

# Gem packages
gem install compass
gem install uglifier
