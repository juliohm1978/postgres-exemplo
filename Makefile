start:
	bash -e init.sh
	docker-compose up --force-recreate -d
	bash -e getip.sh

stop:
	docker-compose stop

clean:
	make stop
	sudo rm -fr data
	docker network rm postgres-exemplo_default

logs:
	docker-compose logs -f
