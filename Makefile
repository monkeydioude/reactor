all: stop start

fall: rm all

start:
	@docker-compose up -d
	sh ./post-build.sh

stop:
	@docker-compose down

rm:
	sudo rm -rf app
	