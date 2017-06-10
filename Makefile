default: build

build:
	docker build -t gostatic/logentries .

push:
	docker push gostatic/logentries
