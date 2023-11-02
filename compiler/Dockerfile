from ubuntu:18.04

RUN apt update
RUN apt install build-essential autoconf automake libc6-i386 srecord picocom python-serial gcc-msp430 msp430-libc msp430mcu binutils-msp430 openjdk-8-jre gcc-arm-none-eabi git -y

RUN git clone https://github.com/contiki-os/contiki.git

WORKDIR /build
CMD ["make"]