# Running (Some) Windows Apps on Linux Using Wine from a Docker Container

Instead of download ~600 dependencies on your Linux by installing Wine, try this image!

The need to this aproach came from the will to play [Hearthstone](https://playhearthstone.com/) on my Ubuntu 18.04, without installing all the hundreds of [Wine](https://www.winehq.org/) dependencies.

So, inspired by [this post on LinuxConfig.org](https://linuxconfig.org/how-to-install-blizzard-battle-net-app-on-ubuntu-18-04-bionic-beaver-linux) on how to install it on Ubuntu, and [this post on ROS.org](http://wiki.ros.org/docker/Tutorials/GUI#The_isolated_way) on how to use Docker with XServer, and many other researches, I ended up with this image.

## Supported tags and respective `Dockerfile` links

### Stable
- [`5.0.0-stable`, `stable`, `latest`](https://github.com/igorbrites/wine/blob/master/stable/Dockerfile);
- [`4.0.3-stable`](https://github.com/igorbrites/wine/blob/master/stable/Dockerfile);
- [`3.0.5-stable`](https://github.com/igorbrites/wine/blob/master/stable/Dockerfile);

### Staging
- [`5.2-staging`, `staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`5.1-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`5.0.0-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.21-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.20-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.19-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.18-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.17-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.16-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.15-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.14-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.13-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.12.1-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.11-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.10-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.9-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.8-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.7-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.6-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.5-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.4-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.3-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.2-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.1-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`4.0-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`3.21.0-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`3.20.0-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`3.19.0-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`3.18.0-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`3.17.0-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`3.16.0-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`3.15.0-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`3.14.0-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`3.13.0-2-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`3.12.0-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`3.11.0-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);
- [`3.10.0-staging`](https://github.com/igorbrites/wine/blob/master/staging/Dockerfile);

### Devel

- [`5.2-devel`, `devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`5.1-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`5.0.0-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.21-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.20-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.19-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.18-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.17-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.16-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.15-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.14-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.13-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.12.1-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.11-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.10-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.9-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.8-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.7-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.6-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.5-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.4-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.3-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.2-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.1-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`4.0-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`3.21.0-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`3.20.0-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`3.19.0-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`3.18.0-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`3.17.0-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`3.16.0-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`3.15.0-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`3.14.0-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`3.13.0-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`3.12.0-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`3.11.0-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);
- [`3.10.0-devel`](https://github.com/igorbrites/wine/blob/master/devel/Dockerfile);

### Base

Base image used by the other images:

- [`base`](https://github.com/igorbrites/wine/blob/master/base/Dockerfile).

## How to get it

You can build it by cloning [the GitHub repo](https://github.com/igorbrites/wine) and runing:

```bash
docker build -t igorbrites/wine[:version] .
```

Or simply pulling ir from [Docker Hub](https://hub.docker.com/r/igorbrites/wine):

```bash
docker pull igorbrites/wine[:version]
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
    igorbrites/wine[:version] wine64 MyAwesomeApp.exe
```

Or, you can use the `run` script on the repo, that does exactly this using the `latest` version.

## Issues

Once the app is installed, to run it is a little tricky. You can use `./run bash` to get inside the container ans check where your app was inatalled, and then run it with `wine64`. Or, if you already know where it is inside the container, you can run it by `./run wine64 /the/full/path/to/file.exe`.
