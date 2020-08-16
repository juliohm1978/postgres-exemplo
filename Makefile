start:
	bash -e init.sh
	docker-compose up --force-recreate -d
	bash -e getip.sh

stop:
	docker-compose stop

clean:
	make stop
	sudo rm -fr data
	sudo docker network rm postgres-exemplo_default

logs:
	sudo docker-compose logs -f
