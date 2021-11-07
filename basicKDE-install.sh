###################################
# created: 11/6/2021 (M/D/Y)      #
# note:                           #
#  This probably isnt very secure #
###################################

echo "########### INSTALLING BASICS ###########"
#install terminal emulator, nano, vim, and NTFS
yes | pacman -S -q nano vi alacritty firefox ntfs-3g

echo "########### INSTALLING login screen ###########"
#install xorg
yes | pacman -S -q xorg-server xorg-xinit
#installing lightdm
yes | pacman -S -q lightdm
yes | pacman -S -q lightdm-gtk-greeter
yes | pacman -S -q lightdm-gtk-greeter-settings

echo "########### INSTALLING KDE-PLASMA ###########"
#plasma install
yes | pacman -S -q --needed ssdm
yes | pacman -S -q --needed plasma
#changing settings
mv /usr/lib/sddm/sddm.conf.d/default.conf /usr/lib/sddm/sddm/sddm.conf.d/default.conf.old
cp ./default.conf /usr/lib/sddm/sddm.conf.d/default.conf

echo "########### ENABLING SERVICES ###########"
#enable lightdm and ssdm
systemctl enable lightdm
systemctl enable ssdm

echo "########### COMPLETED ###########"
echo ""
echo "Please reboot your system (shutdown -r now)"