# Running (Some) Windows Apps on Linux Using Wine from a Docker Container

The need to this aproach came from the will to play [Hearthstone][1] on my Ubuntu 18.04, without installing all the hundreds of [Wine][2] dependencies.

So, inspired by [this post on LinuxConfig.org][3] on how to install it on Ubuntu, and [this post on ROS.org][4] on how to use Docker with XServer, and many other researches, I ended up with this image.

## How to get it

You can build it by cloning [the GitHub repo][5] and runing:

```bash
docker build -t igorbrites/wine:latest .
```

Or simply pulling ir from [Docker Hub][6]:

```bash
docker pull igorbrites/wine:latest
```

## How to use it

First you have to create a volume to store all data that Wine usualy creates on your Home directory:

```bash
docker volume create wine
```

Then, you have to run the container passing the app you want to run:

```bash
# Needed to share the X11 server with the container
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
touch $XAUTH
xauth nlist "$DISPLAY" | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

docker run -it \
    --rm \
    # The volume with the current folder to run the app
    --volume="$(pwd):/home/wine/Apps" \
    # The wine volume to store the entire home
    --volume=wine:/home/wine \
    # The volumes to share the X11 server
    --volume=$XSOCK:$XSOCK:rw \
    --volume=$XAUTH:$XAUTH:rw \
    --env="XAUTHORITY=${XAUTH}" \
    --env="DISPLAY" \
    # The user inside the container to use
    --user="wine" \
    # The workdir to the current folder
    --workdir=/home/wine/Apps \
    --net host \
    --name wine \
    igorbrites/wine:latest wine64 MyAwesomeApp.exe
```

Or, you can use the `run` script on the repo, that does exactly this :smile:

## Issues

Once the app is installed, to run it is a little tricky. You can use `./run bash` to get inside the container ans check where your app was inatalled, and then run it with `wine64`. Or, if you already know where it is inside the container, you can run it by `./run wine64 /the/full/path/to/file.exe`.


[1]: https://playhearthstone.com/ "HearthStone"
[2]: https://www.winehq.org/ "WineHQ"
[3]: https://linuxconfig.org/how-to-install-blizzard-battle-net-app-on-ubuntu-18-04-bionic-beaver-linux "How to Install Blizzard Battle.net App on Ubuntu 18.04 Bionic Beaver Linux"
[4]: http://wiki.ros.org/docker/Tutorials/GUI#The_isolated_way "Using GUI's with Docker"
[5]: https://github.com/igorbrites/wine "igorbrites/wine on GitHub"
[6]: https://hub.docker.com/r/igorbrites/wine "igorbrites/wine on Docker Hub"