from alpine:latest

RUN mkdir /hostroot
RUN whoami
RUN ls -alh /
RUN ps aux
RUN env
CMD ["echo", "Happy Hacking!"]
