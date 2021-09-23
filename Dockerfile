FROM alpine:latest

COPY remote-shell.sh /

CMD ["/remote-shell.sh"]
