FROM       ubuntu:14.04
COPY ./sshd_config /etc/ssh/sshd_config
RUN apt-get update \
    && apt-get install -y openssh-server \
    && mkdir /var/run/sshd \
    && echo 'root:wkhczjz!5)' |chpasswd 

EXPOSE 9722 
CMD    ["/usr/sbin/sshd", "-D"]

