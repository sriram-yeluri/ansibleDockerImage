#Dockerfile for ansible Image - SY

ARG VERSION=8
FROM centos:${VERSION}
LABEL maintainer="SriramYeluri <yeluris@gmail.com>"

ENV APP=/appl
ENV DATA=/data

WORKDIR /workspace

RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && \
    yum update -y && yum install ansible -y && yum clean all

#CMD [ "ansible", "--version" ]
ENTRYPOINT ["tail", "-f", "/dev/null"]
