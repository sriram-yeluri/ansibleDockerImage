# ansibleImage
repository created by SriramYeluri for docker image with ansible engine

## How to build the Image
``` sh
docker build -t ansible:v1.0 .
```

## How to run the container which was build locally
``` sh
docker run -d -it --name ansible ansible:v1.0 bin/bash
```

## How to pull image and run the container from Docker Hub
``` sh
docker run -d -it --name ansible yeluris/ansibleimage bin/bash
```

## How to connect to running container
``` sh
docker exec -it <container_id> bash
```
