ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


brew update
brew install git wget python watch unrar jq docker-machine docker


curl -so ~/.bashrc https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-bashrc
curl -so ~/.gitconfig https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-gitconfig
curl -so ~/.vimrc https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-vimrc
curl -so ~/.dot-dev_folder_completion.rb https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-dev_folder_completion.rb

pip install --upgrade setuptools pip 
pip install virtualenv requests 
sudo pip install virtualenvwrapper

brew cask install virtualbox vagrant google-chrome atom slack hipchat iterm2 bash-completion git

# Install atom plugins
apm install highlight-selected language-puppet linter linter-pylint python-tools vim-mode atom-terminal-panel todo-show minimap fold-functions

gem install bundler

# Set OSX specific settings
defaults write com.apple.screencapture type jpg
defaults write -g com.apple.mouse.scaling -float 1.5
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

# Prevent annoying apps from starting when phones plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES



# Set screenshot location
mkdir ~/Pictures/Screenshots
defaults write com.apple.screencapture location ~/Pictures/Screenshots
killall SystemUIServer

# Folder structure
mkdir ~/Development
