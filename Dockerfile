# Dockerfile
FROM --platform=linux/arm64 debian:buster-slim

WORKDIR /app

# Install dependencies
RUN apt-get update && apt-get install -y \
    autoconf \
    automake \
    build-essential \
    libtool \
    pkg-config \
    texinfo \
    zlib1g-dev \
    libass-dev \
    libfreetype6-dev \
    libsdl2-dev \
    libtheora-dev \
    libva-dev \
    libvdpau-dev \
    libvorbis-dev \
    libxcb1-dev \
    libxcb-shm0-dev \
    libxcb-xfixes0-dev \
    wget

# Download and build FFmpeg from source
RUN wget https://ffmpeg.org/releases/ffmpeg-4.4.tar.bz2 && \
    tar xjvf ffmpeg-4.4.tar.bz2 && \
    cd ffmpeg-4.4 && \
    ./configure --enable-gpl --enable-version3 --enable-static --disable-debug --disable-ffplay --disable-indev=sndio --disable-outdev=sndio --cc="cc -march=armv8-a" && \
    make -j4 && \
    make install

# Copy the script or commands you want to run
COPY ./scripts /app/scripts

# Make the scripts executable
RUN chmod +x /app/scripts/*

CMD ["/bin/bash"]

WORKDIR /app

# Copy the script or commands you want to run
COPY ./scripts /app/scripts

# Make the scripts executable
RUN chmod +x /app/scripts/*

CMD ["/bin/bash"]