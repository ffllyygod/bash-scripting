#!/bin/bash

#setting up the variable
PACKAGE="httpd wget unzip"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2098_health.zip"
ART_NAME="2098_health"
TEMPDIR="/tmp/webfiles"
NULLDIR="/dev/null"

# installing packages
echo "#################################"
echo "Installing packages"
echo "#################################"
sudo apt install $PACKAGE -y > $NULLDIR
echo

# starting the service
echo "#################################"
echo "Start and enable service"
echo "#################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

# download the package and unzip it
echo "#################################"
echo "Startinf artifact deployment"
echo "#################################"
mkdir -p $TEMPDIR
cd $TEMPDIR
echo

wget $URL > $NULLDIR
unzip $ART_NAME.zip > $NULLDIR
sudo cp -r $ART_NAME/* > /var/www/html/

# bounce service
echo "#################################"
echo "Restarting service"
echo "#################################"
sudo systemctl restart $SVC
echo

# clean up
echo "#################################"
echo "Cleaninf temp files"
echo "#################################"
rm -rf $TEMPDIR
echo

sudo systemctl status $SVC
ls /var/www/html/