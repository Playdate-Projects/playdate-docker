FROM ubuntu:latest


# Update packages
RUN apt update \
  && apt upgrade 

# Install wget (required to download SDK)
RUN apt install \
  wget

# Download SDK v1.11.1
RUN wget https://download.panic.com/playdate_sdk/Linux/PlaydateSDK-1.11.1.tar.gz -O sdk.tar.gz

# Untar SDK to cwd
RUN tar -xf sdk.tar.gz
 
