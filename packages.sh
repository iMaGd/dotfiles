
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
 
npm install -g grunt-cli bower spark-cli

#  Updating prefixes database
npm update caniuse-db

# Install git extras
(cd /tmp && git clone --depth 1 https://github.com/M4Gd/git-extras.git && cd git-extras && sudo make install)


# Install chromecast-backgrounds as wallpapers
git clone git@github.com:M4Gd/chromecast-backgrounds.git
cd chromecast-backgrounds/
npm install lodash q request nopt chalk fs
sudo node cli.js --download="/Library/Desktop Pictures/my-images" --size=2560  --width=2560 --height=1440
cd ..

