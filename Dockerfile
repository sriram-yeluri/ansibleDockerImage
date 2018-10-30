#Dockerfile for ansible Image - SY

ARG VERSION=latest
FROM centos:${VERSION}
MAINTAINER SriramYeluri <yeluris@gmail.com>

ENV APP=/appl
ENV DATA=/data

RUN yum update -y && yum install ansible -y && yum clean all
