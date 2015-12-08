ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


brew update
brew install git wget python watch


curl -so ~/.bashrc https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-bashrc
curl -so ~/.gitconfig https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-gitconfig
curl -so ~/.vimrc https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-vimrc

pip install --upgrade setuptools
pip install --upgrade pip 
pip install virtualenv requests

brew cask install virtualbox vagrant google-chrome atom slack hipchat iterm2
 
# iTerm2 - install
 
# Install atom plugins
apm install vim-mode language-puppet linter-puppet-lint linter-pylint

gem install bundler
