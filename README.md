Docker Debian Systemd
=====================

This Dockerfile can build containers capable to use systemd.

[![build status badge](https://img.shields.io/github/actions/workflow/status/zasfe/docker-debian-systemd/build-push-action.yml?branch=main&label=GitHub%20CI)](https://github.com/zasfe/docker-debian-systemd/actions?query=workflow%3A%22GitHub+CI%22+branch%3Amain) 
![Docker Automated build](https://img.shields.io/docker/automated/zasfe/debian?label=Docker%20Automated%20build)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/zasfe/debian?label=Docker%20Cloud%20Automated%20build)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/zasfe/debian?label=Docker%20Cloud%20Build%20Status)



| Runtime                                                                       | Image                                                                                                                                                                                                                                                                                               |
| ----------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [debian](https://hub.docker.com/r/zasfe/debian/tags)             | ![Docker Image Version (tag)](https://img.shields.io/docker/v/zasfe/debian/main)  ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/zasfe/debian/main?label=Docker%20Image%20Size) ![](https://img.shields.io/docker/pulls/zasfe/debian.svg) ![Docker Stars](https://img.shields.io/docker/stars/zasfe/debian.svg)                   |



Branches
--------

This repository has multiple branches that relate to Debian versions.

|Branch  |Debian Version      |Docker image tag|
|--------|--------------------|----------------|
|master  |latest (bookworm/12)|latest          |

Pull strategy
-------------

The different branches are **not** merged, they live as individual branches.

Manually starting
-----------------

```
docker run \
  --tty \
  --privileged \
  --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
  robertdebock/debian
```
