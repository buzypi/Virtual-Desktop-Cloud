./create-new-domain.sh webserver
#Install Apache and PHP libs
ssh -t ubuntu@webserver. sudo apt-get install apache2 php5-mysql libapache2-mod-php5 git-core -y 
#Restart Apache
ssh -t ubuntu@webserver. sudo /etc/init.d/apache2 restart
