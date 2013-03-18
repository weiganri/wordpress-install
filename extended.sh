#!/bin/bash
echo "Hello. Welcome to the software-installer that installs Wordpress fully automatically on your Ubuntu or Debian Server in every Version. Klick enter to proceed"
sudo apt-get update
sudo apt-get upgrade
echo "Please type in your password for installing apache2"

echo "There are actually 2 packages available. Choose your faved package below."
echo "Type 1 for the standard apache package"
echo "Type 2 for apache2-mpm-itk package"
echo "Type 3 for the apache2-prefork package"
if [ "$answer" != "1" ]
then sudo apt-get install apache2
else if [ "$answer" != "2" ]
then sudo apt-get install apache2-mpm-itk
else if [ "$answer" != "3" ]
then sudo apt-get install apache2-prefork
else echo "Choose 1, 2 or 3"


echo "Now we'll have to activate PHP5 for showing Wordpress on the Webbrowser. You know, Wordpress got programmed in PHP"
aptitude install php5 libapache2-mod-php5
sudo /etc/init.d/apache2 restart
aptitude install php5-mysql php5-curl php5-gd php5-idn php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-mhash php5-ps
/etc/init.d/apache2 restart
cd /var/www
sudo apt-get install mysql-server mysql-client
sudo apt-get install nano
sudo apt-get update
sudo apt-get upgrade
aptitude install phpmyadmin
sudo /etc/init.d/apache2 restart
sudo /etc/init.d/apache2 restart
cd /var/www
wget http://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
mv wordpress/* ./
rmdir ./wordpress/
rm -f latest.tar.gz
rm -f index.html
sudo ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf.d/phpmyadmin.conf
sudo /etc/init.d/apache2 restart
mysqladmin -uroot -p create wordpress
echo "Now you can start with building up your wordpress Blog. The Database name ist Wordpress."
