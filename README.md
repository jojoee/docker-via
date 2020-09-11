# docker-via

[![Docker Stars](https://img.shields.io/docker/stars/jojoee/via.svg?style=flat-square)](https://hub.docker.com/r/jojoee/via/)
[![Docker Pulls](https://img.shields.io/docker/pulls/jojoee/via.svg?style=flat-square)](https://hub.docker.com/r/jojoee/via/)
[![Image](https://images.microbadger.com/badges/image/jojoee/via.svg)](http://microbadger.com/images/jojoee/via)

Docker image for [VIA (VGG Image Annotator)](https://gitlab.com/vgg/via). VGG Image Annotator is a simple and standalone manual annotation software for image, audio and video.

![Demo](https://raw.githack.com/jojoee/docker-via/master/demo.png)

## Usage

1. Run `docker run -p 8080:80 jojoee/via:1.0.0`
2. Access
- [http://localhost:8080/via-1.x.y/](http://localhost:8080/via-1.x.y/)
- [http://localhost:8080/via-2.x.y/src/](http://localhost:8080/via-2.x.y/src/)
- [http://localhost:8080/via-3.x.y/src/html/_via_video_annotator.html](http://localhost:8080/via-3.x.y/src/html/_via_video_annotator.html)

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

docker build -t jojoee/via:1.0.0 .
```
