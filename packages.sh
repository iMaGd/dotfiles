
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
# Sublime Text                                                                #
###############################################################################

echo "Setting Sublime preferences"

# Install Sublime Text settings
cp -r sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text*/Packages/User/Preferences.sublime-settings 2> /dev/null

# Install Sublime Color Scheme
cp -r "sublime/base16-eighties.dark (SL).tmTheme" "~/Library/Application Support/Sublime Text*/Packages/User/base16-eighties.dark (SL).tmTheme" 2> /dev/null

# Install Sublime Key Bindings
cp -r "sublime/Default (OSX).sublime-keymap" "~/Library/Application Support/Sublime Text*/Packages/User/Default (OSX).sublime-keymap" 2> /dev/null

# Install Sublime Packages
cp -r sublime/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text*/Packages/User/Package\ Control.sublime-settings 2> /dev/null

# Install Sublime Snippets
cp -r sublime/subl-snippets ~/Library/Application\ Support/Sublime\ Text*/Packages/User 2> /dev/null


###############################################################################
# Extra packages                                                              #
###############################################################################

# Node packages
npm install -g grunt-cli
npm install -g typescript
npm install -g gulp-cli
npm install express
npm install preprocess
npm install bower
npm install mongoose

# Gem packages
gem install compass
gem install uglifier
