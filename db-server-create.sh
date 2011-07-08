./create-new-domain.sh dbserver
#Install MySQL server
ssh -t ubuntu@dbserver. sudo apt-get install mysql-server -y 
#Allowing external connections
ssh -t ubuntu@dbserver. "cat /etc/mysql/my.cnf | sed 's/^bind-address.*/bind-address\t\t= 0.0.0.0/g' > /tmp/my.cnf" 
ssh -t ubuntu@dbserver. "sudo mv /etc/mysql/my.cnf /etc/mysql/my.cnf.bk" 
ssh -t ubuntu@dbserver. "sudo mv /tmp/my.cnf /etc/mysql/my.cnf" 
#Restart MySQL
ssh -t ubuntu@dbserver. "sudo service mysql restart" 
