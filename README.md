# Dockerfiles

## PHP Dockerfiles

Some docker files to run images.

## How to work with this repo

### Building

You can build images by running.

```bash
./build image-name
```

### Publishing

In order to publish them, run the following after building:

```bash
./publish image-name
```

Publishing will try to push the image to Docker Hub by logging in with your current system user. If you want to push to a different docker registry, please, do it manually.

### Directories

By convention, each directory contains the needed files to build an image, at least:

- Dockerfile: for more info, have a look [here](https://docs.docker.com/engine/reference/builder/).
- tagname: a file containing the tagname, e.g. `gotardo/php73-runner:1`

## Available images

### php74-runner

A PHP 7.4 runtime environment based on `php:7-fpm`.

Find this in [DockerHub](https://cloud.docker.com/repository/docker/gotardo/php74-runner).

### php74-builder

A PHP 7.3 build environment based on `gotardo/php74-runner`.

Find this in [DockerHub](https://cloud.docker.com/repository/docker/gotardo/php74-builder).

### php73-runner

A PHP 7.3 runtime environment based on `php:7-fpm`.

Find this in [DockerHub](https://cloud.docker.com/repository/docker/gotardo/php73-runner).

### php73-builder

A PHP 7.3 build environment based on `gotardo/php73-runner`.

Find this in [DockerHub](https://cloud.docker.com/repository/docker/gotardo/php73-builder).
