ARG DEBIAN_VERSION
FROM debian:${DEBIAN_VERSION}-slim

RUN useradd -m -d /container -s /bin/bash -u 1987 container

# container user
USER 1987
WORKDIR /container

ONBUILD USER root
