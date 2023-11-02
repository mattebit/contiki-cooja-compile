# contiki-cooja-compile

Docker container to run cooja and to build code

## To execute cooja

You should run the container with these commands, you can use the run.sh script inside cooja folder, and copy it to your code folder.

```bash
xhost +local:
sudo docker run \
      -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
      -v /etc/localtime:/etc/localtime:ro \
      -v "$HOME/.Xauthority:/root/.Xauthority:rw" \
      -e DISPLAY=$DISPLAY \
      -v .:/build \
      ghcr.io/mattebit/contiki-cooja-compile-cooja:main
xhost -local:
```

You will find all the files in the folder you execute inside the "/build" folder of the container. In cooja, open the asc file you should find inside "/build" folder

## To build your code

the first time do

```bash
docker pull ghcr.io/mattebit/contiki-cooja-compile-compiler:main
```

and then

```bash

sudo docker run -v .:/build ghcr.io/mattebit/contiki-cooja-compile-compiler:main
```

if everything goes well you will find the compiled files in your folder
