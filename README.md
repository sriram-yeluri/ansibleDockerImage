# ansibleImage

repository created by SriramYeluri for docker image with ansible engine

## How to build the Image

``` sh
docker build -t ansible:<tag> .
```

## How to run the container which was build locally

``` sh
docker container run -d -it --name ansible ansible:v1.0
```

## How to pull image and run the container from Docker Hub

``` sh
docker pull yeluris/ansibleimage
docker container run -d -it --name ansiblecontroller yeluris/ansibleimage
```

## How to connect to running container

``` sh
docker container exec -it <container_id> /bin/bash
```