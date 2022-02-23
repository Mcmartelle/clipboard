FROM rustembedded/cross:aarch64-unknown-linux-gnu-0.2.1

RUN dpkg --add-architecture arm64 && \
    dpkg --add-architecture i686 && \
    dpkg --add-architecture armhf
RUN apt-get update && apt-get install -y \
    libx11-xcb-dev \
    libxcb-xfixes0-dev \
    libxcb-shape0-dev
