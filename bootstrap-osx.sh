ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


brew update
brew install git wget python watch unrar


curl -so ~/.bashrc https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-bashrc
curl -so ~/.gitconfig https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-gitconfig
curl -so ~/.vimrc https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-vimrc

pip install --upgrade setuptools
pip install --upgrade pip 
pip install virtualenv requests

brew cask install virtualbox vagrant google-chrome atom slack hipchat iterm2

# Install atom plugins
apm install highlight-selected language-puppet linter linter-pylint python-tools vim-mode atom-terminal-panel

gem install bundler

# Set OSX specific settings
defaults write com.apple.screencapture type jpg
defaults write -g com.apple.mouse.scaling -float 1.5
