# playdate-docker
Use the Playdate SDK from within Docker

## How to use
See: https://github.com/Playdate-Projects/playdate-docker/pkgs/container/playdate-docker

## Deploying

### `Remote - Containers`
This repository includes a `devcontainer.json` file. If you open this repository in Visual Studio Code, it will give you a button to launch the container

### `Remote - Codespaces`/GitHub Codespaces
GitHub Codespaces allows `devcontainer.json` to be used. Click on the `Code` button, then switch to the Codespaces tab to create a Codespace.

### `docker`
You can use `docker` to run this. Run `docker pull ghcr.io/playdate-projects/playdate-docker:main` to pull the image.

### From your own Dockerfile
You've got two options in that case:
- a) Use the afformentioned prebuilt image (`FROM ghcr.io/playdate-projects/playdate-docker:main`)
- b) Extend my Dockerfile (just copy and paste the one that's here)

Then put whatever you want afterwards. The Dockerfile uses `ubuntu:latest`.
