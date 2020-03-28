# Rpm fusion
sudo dnf -y install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y clean all && sudo dnf -y update && sudo dnf -y upgrade

# Brave
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc


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
libXScrnSaver

sudo systemctl enable --now tuned
chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh)"
curl https://raw.githubusercontent.com/jcarlosgalvezm/fedora_post_install/master/.zshrc --output ~/.zshrc

# Finally manually Install extensions
# frippery move clock
# coverflow alt-tab
# activities configurator

