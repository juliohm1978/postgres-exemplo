start:
	bash -e init.sh
	sudo docker-compose up --force-recreate -d
	bash -e getip.sh

stop:
	sudo docker-compose stop

clean:
	make stop
	sudo rm -fr data
	sudo docker network rm postgres-exemplo_default

logs:
	sudo docker-compose logs -f
