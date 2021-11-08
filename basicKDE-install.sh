###################################
# created: 11/6/2021 (M/D/Y)      #
# note:                           #
#  This probably isnt very secure #
###################################

echo "########### INSTALLING BASICS ###########"
#install terminal emulator, nano, vim, and NTFS
pacman -S -q nano vi alacritty firefox ntfs-3g

echo "########### INSTALLING login screen ###########"
#install xorg
pacman -S -q xorg-server xorg-xinit
#installing lightdm
pacman -S -q lightdm
pacman -S -q lightdm-gtk-greeter
pacman -S -q lightdm-gtk-greeter-settings

echo "########### INSTALLING KDE-PLASMA ###########"
#plasma install
pacman -S -q --needed sddm
pacman -S -q --needed plasma
#changing settings
mv /usr/lib/sddm/sddm.conf.d/default.conf /usr/lib/sddm/sddm/sddm.conf.d/default.conf.old
cp default.conf /usr/lib/sddm/sddm.conf.d/default.conf

echo "########### ENABLING SERVICES ###########"
#enable lightdm and sddm
systemctl enable lightdm
systemctl enable sddm

echo "########### COMPLETED ###########"
echo ""
echo "Please reboot your system (shutdown -r now)"
