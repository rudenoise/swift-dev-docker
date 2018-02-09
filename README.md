# swift-dev-docker
a docker file for a useful/portable swift environment


The aim of this image is to provide a base image for a consistent
local and remote python development environment.

[Pull `swiftdev` from Docker Hub](https://hub.docker.com/r/rudenoise/swiftdev/)

```bash
docker pull rudenoise/swiftdev
```

```bash
# get a shell
docker run -ti rudenoise/swiftdev

# build local
docker build -t swiftdev:local .

# run
docker run -ti swiftdev:local /bin/bash

# tidy up
docker system prune
```
