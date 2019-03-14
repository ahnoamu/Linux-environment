#Check linux distribution
cat /etc/lsb-release
#or
cat /etc/linuxmint/info

#No launcher and Menu bar on ubuntu Fix 
#Using deconf
sudo apt-get install dconf-tools
dbus-launch dconf reset -f /org/compiz/
sudo reboot

#OR
#Using unity
sudo apt-get update
sudo apt-get install --reinstall ubuntu-desktop
sudo apt-get install unity
unity --reset 
