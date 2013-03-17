wordpress-install
=================

Installation of Wordpress on Debian and Ubuntu.

It's really easy to install Wordpress on your Server.
First download Putty, login and type in the following:

sudo apt-get install git

now type in The following:

git https://github.com/weiganri/wordpress-install.git

And now paste:

sudo bash install.sh

run the script and you're ready to start.

Now you have to go to Http://yourip/phpmyadmin and to login with root and your configured password. Create a database and make now the following.

Go now to http://yourip and type in all database settings you've configured in phpmyadmin. Now go to the next step, copy the code in the text box and get back to terminal. Now type in the following

sudo nano wp-config.php

Right-klick and paste
Klick ctrl + w
Klick Y

Go back to your opened browser tab and klick on let's go. Here you now can configure your user account and you're ready.
