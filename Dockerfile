FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y openssh-server sudo
RUN mkdir /var/run/sshd
RUN ssh-keygen -t rsa -P "" -f /root/.ssh/id_rsa -q
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
