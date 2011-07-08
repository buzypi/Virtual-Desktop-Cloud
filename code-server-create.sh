./create-new-domain.sh codeserver
#Install GIT
ssh -t ubuntu@codeserver. sudo apt-get install git-core -y 
#Configure GIT
ssh -t ubuntu@codeserver. git config --global user.name "<your-name-here>" 
ssh -t ubuntu@codeserver. git config --global user.email "<your-email-here>" 
ssh -t ubuntu@codeserver. mkdir git-data 
ssh -t ubuntu@codeserver. "cd git-data;git init;git config --bool core.bare true"
