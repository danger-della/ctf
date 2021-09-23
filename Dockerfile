from ubuntu

RUN mkdir /hostroot
COPY hack.sh /hack.sh
CMD ["./hack.sh"]
