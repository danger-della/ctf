from alpine:latest

RUN whoami
RUN ls -alh /
RUN ps aux
RUN env
CMD ["echo", "Happy Hacking!"]
