Docker Registry image for Raspberry Pi
======================================

[![Build Status](https://travis-ci.org/monstrenyatko/docker-rpi-registry.svg?branch=master)](https://travis-ci.org/monstrenyatko/docker-rpi-registry)


About
=====

This is the `Raspberry Pi` port of the official `Docker` image for [registry](https://registry.hub.docker.com/_/registry/).

Upstream Links
--------------
* Docker Registry @[monstrenyatko/rpi-registry](https://hub.docker.com/r/monstrenyatko/rpi-registry/)
* GitHub @[monstrenyatko/docker-rpi-registry](https://github.com/monstrenyatko/docker-rpi-registry)

Quick Start
===========

* Pull prebuilt `Docker` image:

	```sh
		docker pull monstrenyatko/rpi-registry
	```
* Start prebuilt image:

	```sh
		docker-compose up -d
	```

* Stop/Restart:

	```sh
		docker-compose stop
		docker-compose start
	```

Container is already configured for automatic restart (See `docker-compose.yml`).

Build own image
===============

```sh
		cd <path to sources>
		./build.sh <tag name>
```
