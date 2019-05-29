container=web
php=php

up:
	docker-compose up -d ${container}

stop:
	docker-compose stop

down:
	docker-compose down

jumpin:
	docker-compose exec ${php} sh

dev-build:
	docker-compose exec ${php} ./vendor/silverstripe/framework/cli-script.php dev/build 'flush=1'

test:
	docker-compose exec ${php} ./vendor/bin/phpunit ./app/tests/

test-file:
	docker-compose exec ${php} ./vendor/bin/phpunit $(FILE)
