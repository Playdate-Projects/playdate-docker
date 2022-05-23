FROM ubuntu:latest


# Update packages
RUN apt update -y \
  && apt upgrade -y

# Install wget (required to download SDK)
RUN apt install -y \
  wget

# Download SDK v1.11.1
RUN wget https://download.panic.com/playdate_sdk/Linux/PlaydateSDK-1.11.1.tar.gz -O sdk.tar.gz

# Untar SDK to cwd
RUN tar -xf sdk.tar.gz
 
