## Install
You'll want to clone this sucker down and then wish it made things actually faster

You'll need ruby, if you don't have it then run the following
```
brew install rbenv
rbenv init
# copy it to your ~/.zshrc or whatever you use
rbenv install 2.6.3
rbenv global 2.6.3
```

Install [docker-sync](https://github.com/EugenMayer/docker-sync)

`gem install docker-sync`

Install [unison](https://www.cis.upenn.edu/~bcpierce/unison/) and unox

`brew install unison`

`brew install eugenmayer/dockersync/unox`

Clone your website into `app`

`git clone yah.repo.com app`

Start the sync service

`docker-sync start`

Start the web service

`docker-compose up -d`

### Commands to run when shit hits the fans:
Kill containers

`docker kill $(docker ps -q)`

Destroy containers

`docker rm $(docker ps -a -q)`

Clean stuff
`docker-sync-stack clean`

Change the docker-sync.yml to include verbose option
Try a different syncing strat (rsync or native_osx)
