FROM debian:latest

# Use baseimage-docker's init system:
CMD ["/sbin/my_init"]

# Install dependencies:
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    tmux \
    sudo \
    wget \
    git \
    make \
    busybox \
    build-essential \
    nodejs \
    npm \
    screen \
    neofetch \
    ca-certificates \
    libcurl4 \
    libjansson4 \
    libgomp1 \
 && mkdir -p /home/stuff

# Set work dir:
WORKDIR /

# Copy files:
COPY run.sh /
COPY tmate.sh /

# Run config.sh and clean up APT:
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Run bot script:
CMD bash tmate.sh
