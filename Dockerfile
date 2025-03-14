FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y openssh-server sudo less curl vim

RUN mkdir /run/sshd

RUN adduser play
RUN echo -n 'play:pass' | chpasswd
RUN echo "play ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN ssh-keygen -A
RUN yes | unminimize

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D", "-e"]

# docker build --tag playground . && docker run --detach --name playground -p 127.0.0.1:22:22 playground && ssh-keygen -R localhost
# docker kill playground; docker rm playground; docker rmi playground

