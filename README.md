# docker-via

[![Docker Stars](https://img.shields.io/docker/stars/jojoee/via.svg?style=flat-square)](https://hub.docker.com/r/jojoee/via/)
[![Docker Pulls](https://img.shields.io/docker/pulls/jojoee/via.svg?style=flat-square)](https://hub.docker.com/r/jojoee/via/)
[![Image](https://images.microbadger.com/badges/image/jojoee/via.svg)](http://microbadger.com/images/jojoee/via)

Docker image for [VIA (VGG Image Annotator)](https://gitlab.com/vgg/via). VGG Image Annotator is a simple and standalone manual annotation software for image, audio and video.

![Demo](https://raw.githack.com/jojoee/docker-via/master/demo.png)

## Usage

```
docker run -p 8080:80 --name ctn_via jojoee/via:1.0.4
http://localhost:8080/via-1.x.y/
http://localhost:8080/via-2.x.y/src/
http://localhost:8080/via-3.x.y/src/html/_via_video_annotator.html

docker run -p 8081:80 --name ctn_via_1xy jojoee/via:1.0.4-1.x.y
http://localhost:8081/

docker run -p 8082:80 --name ctn_via_2xy jojoee/via:1.0.4-2.x.y
http://localhost:8082/

docker run -p 8083:80 --name ctn_via_3xy jojoee/via:1.0.4-3.x.y
http://localhost:8083/html/_via_video_annotator.html

docker run -p 8084:80 --name ctn_via_latest jojoee/via
http://localhost:8084/via-1.x.y/
http://localhost:8084/via-2.x.y/src/
http://localhost:8084/via-3.x.y/src/html/_via_video_annotator.html
```

## Reference
- [VGG Image Annotator](https://gitlab.com/vgg/via)

## Development

```
git submodule add -b master https://gitlab.com/vgg/via.git
git submodule add --force -b master https://gitlab.com/vgg/via.git
git clone https://github.com/jojoee/docker-via
git clone --recurse-submodules https://github.com/jojoee/docker-via
git submodule init
git submodule update

docker build -f dockerfiles/Dockerfile -t jojoee/via:0.0.1 .
docker run -p 8080:80 --name ctn_via jojoee/via:0.0.1
docker start ctn_via

# 1.x.y
docker build -f dockerfiles/Dockerfile.1.x.y -t jojoee/via:0.0.1-1.x.y .
docker run -p 8081:80 --name ctn_via_1xy jojoee/via:0.0.1-1.x.y
docker start ctn_via_1xy

# 2.x.y
docker build -f dockerfiles/Dockerfile.2.x.y -t jojoee/via:0.0.1-2.x.y .
docker run -p 8082:80 --name ctn_via_2xy jojoee/via:0.0.1-2.x.y
docker start ctn_via_2xy

# 3.x.y
docker build -f dockerfiles/Dockerfile.3.x.y -t jojoee/via:0.0.1-3.x.y .
docker run -p 8083:80 --name ctn_via_3xy jojoee/via:0.0.1-3.x.y
docker start ctn_via_3xy
```
