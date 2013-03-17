#!/bin/bash
echo "Hello. Welcome to the software-installer that installs Wordpress fully automatically on your Ubuntu or Debian Server in every Version. Klick enter to proceed"
sudo apt-get update
sudo apt-get upgrade
echo "Please type in your password for installing apache2"
sudo apt-get install apache2
echo "Now we'll have to activate PHP5 for showing Wordpress on the Webbrowser. You know, Wordpress got programmed in PHP"
aptitude install php5 libapache2-mod-php5
sudo /etc/init.d/apache2 restart
aptitude install php5-mysql php5-curl php5-gd php5-idn php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-mhash php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl php5-json
/etc/init.d/apache2 restart
cd /var/www
sudo apt-get install mysql-server mysql-client
sudo apt-get update
sudo apt-get upgrade
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

