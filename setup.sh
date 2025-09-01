
# Set vscode setting
# rsync -av ./vscode/ ~/Library/Application\ Support/Code/

# Set sublime setting
# rsync -av ./sublime/ ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

# iTerm2 - Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dotfiles/iterm2"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Create projects directory
mkdir -p ~/projects/{herds,ddevs,pstorm,crafts/plugins,wp-development/plugins}

# Custom directories
mkdir -p ~/Branches/{ME,MEDIA} ~/Dropbox
