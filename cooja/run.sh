sudo docker build -t cooja .

xhost +local:
sudo docker run \
      -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
      -v /etc/localtime:/etc/localtime:ro \
      -v "$HOME/.Xauthority:/root/.Xauthority:rw" \
      -e DISPLAY=$DISPLAY \
      -v .:/build
      cooja

xhost -local: