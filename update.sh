
# Sync the repo by latest changes for vscode in local machine
rsync -av --progress --delete-after ~/Library/Application\ Support/Code/User ./vscode --exclude workspaceStorage --exclude globalStorage --exclude syncLocalSettings.json

# Generate extensions list
code --list-extensions | xargs -L 1 echo code --install-extension >> vscode/extensions.sh

# Copy sublime setting to repo
rsync -av ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings ./sublime/
rsync -av ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/base16-eighties.dark.tmTheme ./sublime/
rsync -av ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings ./sublime/
rsync -av ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap ./sublime/
rsync -av ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/subl-snippets ./sublime/
