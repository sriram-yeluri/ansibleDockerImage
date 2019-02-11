#Dockerfile for ansible Image - SY

ARG VERSION=latest
FROM centos:${VERSION}
LABEL maintainer="SriramYeluri <yeluris@gmail.com>"

ENV APP=/appl
ENV DATA=/data

WORKDIR /workspace

RUN yum update -y && yum install ansible -y && yum clean all

#CMD [ "ansible", "--version" ]
ENTRYPOINT ["tail", "-f", "/dev/null"]