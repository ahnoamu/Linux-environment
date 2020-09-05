#========================
#Check linux distribution
cat /etc/lsb-release
#or
cat /etc/linuxmint/info

#Check latest available package to install from repo
apt-cache policy <packageName>


#========================
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

#========================
#Install biotools
sudo apt-get install tk-dev
sudo apt-get install bwidget

#Add installation repo
sudo add-apt-repository ppa:ubuntugis/ppa
#update
sudo apt-get update
#Install gdal
sudo apt-get install libudunits2-dev libgdal-dev libgeos-dev libproj-dev #updates gdal version
#else 
sudo apt-get update
sudo apt-get install gdal-bin
sudo apt-get -y install python-gdal             #Installs gdal
sudo apt -y install gdal-bin python3-gdal       #python3
#Install sf using conda (unproblematic)
conda create -n rsf -c conda-forge r-sf
source activate rsf
# In R terminal
install.packages("rpanel", dependencies = TRUE)
install.packages("SpatialEpi", dependencies=TRUE)




