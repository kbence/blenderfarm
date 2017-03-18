FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y wget libfreetype6-dev libgl1-mesa-dev libglu1-mesa-dev libxi-dev &&\
    apt-get autoclean && \
    rm -rf /var/cache/apt/*
RUN wget http://mirror.cs.umn.edu/blender.org/release/Blender2.78/blender-2.78c-linux-glibc219-x86_64.tar.bz2 -O /tmp/blender.tar.bz2 && \
    mkdir -p /opt/blender && \
    tar xfj /tmp/blender.tar.bz2 --strip 1 -C /opt/blender && \
    rm -f /tmp/blender.tar.bz
COPY ./blender/userpref.blend /root/.config/blender/2.76/config/userpref.blend
