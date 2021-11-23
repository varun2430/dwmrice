
cd $HOME/Downloads;
git clone https://aur.archlinux.org/yay.git;
cd yay;
makepkg -si;

yay nerd-fonts-hack;
yay light-git;

sudo pacman -S --needed xorg xorg-xinit xorg-xrandr xorg-xsetroot libx11 libxft libxinerama \
	polkit lxsession picom dunst xwallpaper pamixer playerctl;

mkdir -p $HOME/.config/suckless;

cd $HOME/.config/suckless;
git clone https://github.com/varun2430/dwm-vostro5415.git;
git clone https://github.com/varun2430/dmenu-vostro5415.git;
git clone https://github.com/varun2430/slstatus-vostro5415.git;


cd $HOME/.config/suckless/dwm-vostro5415;
sudo make clean install;
cd $HOME/.config/suckless/dmenu-vostro5415;
sudo make clean install;
cd $HOME/.config/suckless/slstatus-vostro5415;
sudo make clean install;

cp /etc/X11/xinit/xinitrc $HOME/.xinitrc;
echo "exec dwm" >> $HOME/.xinitrc;

echo 'if [ "$(tty)" = "/dev/tty1" ]; then
	exec startx
fi' >> $HOME/.bash_profile;

