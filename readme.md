## Install

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

Destroy images

`docker image rm $(docker image ls -q) -f`

Clean stuff

`docker-sync-stack clean`

Change the docker-sync.yml to include verbose option
Try a different syncing strat (rsync or native_osx)

Back up your database:

`docker exec db /usr/bin/mysqldump -u root SS_mysite > backup.sql`

Restore your database:

`docker exec -i db /usr/bin/mysql -u root SS_mysite < backup.sql`


`php vendor/silverstripe/framework/cli-script.php dev/build`

`docker-compose exec docker-php-fpm php ../vendor/silverstripe/framework/cli-script.php dev/build`