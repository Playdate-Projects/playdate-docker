FROM ubuntu:latest


# Update packages
RUN apt update -y \
  && apt upgrade -y

# Install wget (required to download SDK), sudo (because yes), and libpng-dev (pdc requires it)
RUN apt install -y \
  wget \
  sudo \
  libpng-dev

# create playdate-sdk user
RUN groupadd playdate-sdk --gid 1000 \
  && useradd -m playdate-sdk --gid 1000 \ 
  && echo playdate-sdk ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/playdate-sdk \
  && chmod 0440 /etc/sudoers.d/playdate-sdk

WORKDIR /usr/bin

# Download SDK v1.11.1
RUN wget https://download.panic.com/playdate_sdk/Linux/PlaydateSDK-1.11.1.tar.gz -O sdk.tar.gz
 
# Untar SDK to cwd
RUN tar -xf sdk.tar.gz

ENV PATH="/usr/bin/PlaydateSDK-1.11.1/bin:$PATH"

ENV PLAYDATE_SDK_PATH="/usr/bin/PlaydateSDK-1.11.1"

WORKDIR /home/playdate-sdk