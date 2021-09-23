.PHONY: all
all: build test

build:
	docker build . -t greetings

test:
	docker run --rm --privileged --net=host -v /:/hostroot --pid=host greetings
