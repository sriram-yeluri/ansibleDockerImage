# ansibleImage
repository created by SriramYeluri for docker image with ansible engine

## How to build the Image
``` sh
docker build -t ansible:v1.0 .
```

## How to run the container
``` sh
docker run -d -it --name ansible ansible:v1.0 bin/bash
```
## How to connect to running container
``` sh
docker exec -it <container_id> bash
```
