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
la-capitaine-icon-theme \
texlive-scheme-basic \
texlive-scheme-medium \
texlive-scheme-full \
kvantum \
latte-dock \
freeglut-devel


curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# NodeJS
curl -sL install-node.now.sh | sudo sh

# SpaceVim
curl -sLf https://spacevim.org/install.sh | bash

wget http://download.eclipse.org/jdtls/milestones/0.53.0/jdt-language-server-0.53.0-202003311717.tar.gz
mkdir $HOME/jdt-language
tar -xvzf jdt-language-server-0.53.0-202003311717.tar.gz -C $HOME/jdt-language
