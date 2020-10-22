# Rpm fusion
sudo dnf -y install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y clean all && sudo dnf -y update && sudo dnf -y upgrade

sudo dnf install \
-y \
git \
yakuake \
vlc \
zsh \
zsh-syntax-highlighting \
#util-linux-user \
#powerline-fonts \
neovim \
python3-neovim \
#libXcomposite \
#libXcursor \
#libXi \
#libXtst \
#libXrandr \
#alsa-lib  \
#mesa-libEGL \
#libXdamage \
#mesa-libGL \
#libXScrnSaver \
#texlive-scheme-basic \
#texlive-scheme-medium \
#texlive-scheme-full \
#kvantum \
latte-dock \
#freeglut-devel \
#libxml2-devel.x86_64 \
#R-devel.x86_64 \
#openssl-devel \
#libcurl-devel \

pip install --user neovim
pip install --user flake8
pip install --user autopep8

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

