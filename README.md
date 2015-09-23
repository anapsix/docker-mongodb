# MongoDB in a box

(!!! from @testing !!!) AlpineLinux-base Docker image with MongoDB

[![](https://badge.imagelayers.io/anapsix/mongodb:latest.svg)](https://imagelayers.io/?images=anapsix/mongodb:latest)

## Usage

as Server:

    docker run -d --name mongodb -p 27017:27017 -v /data/mongodb:/var/lib/mongodb anapsix/mongodb

as Client:

    docker run -it --rm anapsix/mongodb mongo --help

## Configuration

You may pass config options via command line, as you normally would:

    docker run -d -p 27017:27017 \
      -v /data/mongodb:/var/lib/mongodb \
      anapsix/mongodb --storageEngine wiredTiger

