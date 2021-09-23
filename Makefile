.PHONY: all
all: build run

build:
	docker build . -t greetings

test:
	docker run -v /:/rootfs --rm greetings

run:
	docker run -v /:/rootfs --rm greetings
