# syntax=docker/dockerfile:1
FROM nixos/nix:2.20.0pre20240102_3f834f5@sha256:99ea633bee79325758512e9f9f6a8573a42ba53fa6eed70af2d4f47547bd7dbe
WORKDIR /usr/scan
COPY . /usr/scan/
RUN mkdir results
RUN nix-env -if https://github.com/fluidattacks/makes/archive/23.04.tar.gz
