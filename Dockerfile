#Dockerfile for ansible Image - SY

ARG VERSION=7
FROM centos:${VERSION}
LABEL maintainer="SriramYeluri <yeluris@gmail.com>"

ENV APP=/appl
ENV DATA=/data

RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-${VERSION}.noarch.rpm && \
    yum update -y && yum -y install ansible unzip openssh-clients && yum clean all

ARG user=ansible

RUN useradd $user

RUN mkdir /home/$user/.ssh \ 
    && ssh-keygen -t rsa -N "" -q -f /home/$user/.ssh/id_rsa \
    && cp /home/$user/.ssh/id_rsa.pub /home/$user/.ssh/authorized_keys \
    && chown -R $user:$user /home/$user/.ssh \
    && chmod 600 /home/$user/.ssh/authorized_keys

RUN echo "$user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$user

RUN mkdir /appl \
    && mkdir /data \
    && mkdir /workspace \
    && chown -R $user:$user /appl /data /workspace

WORKDIR /workspace

#CMD [ "ansible", "--version" ]
ENTRYPOINT ["tail", "-f", "/dev/null"]
