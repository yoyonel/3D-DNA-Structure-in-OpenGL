#!/bin/bash

DOCKER_IMAGE=$USER/gcc-cmake-gl

# xhost +
#

mkdir -p build/

# -e DISPLAY=unix$DISPLAY \
# -v /tmp/.X11-unix:/tmp/.X11-unix \
docker run \
        -it \
        --rm \
        --name 3D-DNA-Structure-in-OpenGL \
        -e NEWUSER=$USER \
        -v $(realpath build/):/3D-DNA-Structure-in-OpenGL/build \
        -v $(realpath .):/3D-DNA-Structure-in-OpenGL \
        -w /3D-DNA-Structure-in-OpenGL \
        ${DOCKER_IMAGE} \
        bash -c "cd build && cmake . .. && make -j"

# TODO: fix right issues
sudo chown $USER:$USER -R build/

#
# xhost -