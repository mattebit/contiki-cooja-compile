from ubuntu:18.04

ENV DISPLAY=$DISPLAY

RUN apt update
RUN apt install build-essential autoconf automake libc6-i386 srecord picocom python-serial gcc-msp430 msp430-libc msp430mcu binutils-msp430 openjdk-8-jre gcc-arm-none-eabi git openjdk-8-jdk ant -y

RUN git clone https://github.com/contiki-os/contiki.git

WORKDIR ./contiki
RUN git submodule init && \
    git submodule update --remote tools/mspsim

RUN update-java-alternatives --set java-1.8.0-openjdk-amd64

COPY build.xml ./tools/mspsim/build.xml
#RUN cat ./tools/mspsim/build.xml

WORKDIR ./tools/cooja

CMD ["ant","run"]