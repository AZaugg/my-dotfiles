# brain dump of all customizations done for my ubuntu install
#

# Setup custom repos
echo "deb http://downloads.hipchat.com/linux/apt stable main" > /etc/apt/sources.list.d/atlassian-hipchat.list
echo "deb http://download.virtualbox.org/virtualbox/debian vivid contrib" > /etc/apt/sources.list.d/virtualbox.list
add-apt-repository ppa:webupd8team/sublime-text-2
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

apt-get update
# Install all my software from repos
pip install virtualenvwrapper
apt-get install bundler rake git vim vagrant python-pip virtualbox-5.0 python-virtualenv python-dev virtualbox-guest-additions-iso hipchat terminator sublime-text puppet-lint

# For Hostinfo
apt-get install postgresql postgresql-server-dev-all

# Set OSX command binding to control
touch ~/.xmodmaprc
cat <<EOF >> ~/.xmodmaprc
clear Control
clear Mod4
keycode  37 = Super_L
keycode 133 = Control_L
add control = Control_L
EOF
xmodmap ~/.xmodmaprc

# Get my dot files
curl -so ~/.bashrc https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-bashrc
curl -so ~/.gitconfig https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-gitconfig
curl -so ~/.vimrc https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-vimrc

# Setup sublime for unity bar
touch /usr/share/applications/sublime.desktop

cat <<EOF >> /usr/share/applications/sublime.desktop
[Desktop Entry]
Version=1.0
Name=Sublime Text 2
GenericName=Text Editor

Exec=sublime
Terminal=false
Icon=/opt/Sublime Text 2/Icon/48x48/sublime_text.png
Type=Application
Categories=TextEditor;IDE;Development
X-Ayatana-Desktop-Shortcuts=NewWindow

[NewWindow Shortcut Group]
Name=New Window
Exec=sublime -n
TargetEnvironment=Unity
EOF

# Configure sublime for me
sed -i -e s/\"Vintage\"// ~/.config/sublime-text-2/Packages/Default/Preferences.sublime-settings

