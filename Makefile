.PHONY: all
all: build test

build:
	docker build . -t greetings

test:
	docker run --rm -t --privileged greetings
