##Install NodeJs

curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -

yum -y install nodejs


##Download Source Code from Github

wget --no-check-certificate https://github.com/devmastery/dimusic/tarball/master -O - | tar xz


##Setup NPM Packages

npm install


##Setup Forever 

npm install forever -g


##Setup Forever service

npm install forever-service -g


##Setup NodeJs App as a service

sudo forever-service install dimusic

## Remover forever service
sudo forever-service delete dimusic

##Service Operations

- sudo service dimusic start 
- sudo service dimusic stop
- sudo service dimusic restart
- sudo service dimusic status
