#!/bin/bash

DOCKER_IMAGE=$USER/gcc-cmake-gl

xhost +

#

# -v $PWD:/home/$USER/development \
        
docker run \
        -it \
        --rm \
        --name 3D-DNA-Structure-in-OpenGL \
        -e NEWUSER=$USER \
        -e DISPLAY=unix$DISPLAY \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -w /3D-DNA-Structure-in-OpenGL \
        ${DOCKER_IMAGE} \
        $@

#
xhost -