# Rpm fusion
sudo dnf -y install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y clean all && sudo dnf -y update && sudo dnf -y upgrade

# Brave
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

sudo dnf copr enable tcg/themes
sudo dnf install \
-y \
brave-browser \
bleachbit \
gnome-tweak-tool \
gnome-shell-extension-dash-to-dock \
gnome-shell-extension-user-theme \
vim \
zsh \
zsh-syntax-highlighting \
util-linux-user \
powerline-fonts \
neovim \
python3-neovim \
libXcomposite \
libXcursor \
libXi \
libXtst \
libXrandr \
alsa-lib  \
mesa-libEGL \
libXdamage \
mesa-libGL \
libXScrnSaver \
la-capitaine-icon-theme

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Finally manually install this extensions:
# user-theme
# dash-to-dock
# frippery move clock
# coverflow alt-tab
# activities configurator
