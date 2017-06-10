default: build

build:
	docker build -t signisto/logentries .

push:
	docker push signisto/logentries
