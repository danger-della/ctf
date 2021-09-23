FROM golang:1.17-alpine as builder
WORKDIR /go/src/app
COPY . .
RUN go get -d -v ./...
RUN go build -o greetings .


FROM alpine:latest
COPY --from=builder /go/src/app/greetings /
CMD ["/greetings"]
