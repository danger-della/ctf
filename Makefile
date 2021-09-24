.PHONY: all
all: build run hack

build:
	docker build . -t greetings

run:
	docker run --rm greetings

hack:
	apk add nmap-ncat

test:
	docker run --rm  -v "$$(pwd):/usr/src/app" -w /usr/src/app golang:1.17-alpine go test -v ./...
