# Startup Basic Docker Container
A repo for doing some basic docker commands and getting started!

## Prereqs
* Access to github
* Access to Docker (linux)
* Access to Linux shell, WSL2 ubuntu, linux vm, etc

## Build Docker Image
1. git clone this repo
2. build image
```shell
docker build -t hello-docker .
```

## Start Container
Create and Run Container / Check Container / Delete Container

```shell
docker run --name hello_docker hello-docker
docker ps -l
docker rm hello_docker
```
Output
```output
$ docker run --name hello_docker hello-docker
hello docker!
... waiting 5 seconds ...
goodbye docker!

$ docker ps -l
CONTAINER ID   IMAGE          COMMAND                CREATED         STATUS        PORTS     NAMES
798c173a1ca1   hello-docker   "python -u hello.py"   3 seconds ago   Up 1 second             hello_docker

$ docker rm hello_docker
hello_docker
```


## Test detached mode
Run Docker in detached mode, check container, wait 6 seconds, check again, delete container
```shell
$ docker ps -l; docker run -d --name hello_docker hello-docker ; docker ps ; sleep 6 ; docker ps ; docker ps -l; docker rm hello_docker; 
```

Output
```output
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
1fcedf306b96   hello-docker   "python -u hello.py"   Less than a second ago  Up Less than a second   hello_docker

CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

hello_docker
```

## Cleanup
Delete docker container and image.
```shell
docker rmi hello-docker
```