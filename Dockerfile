FROM openjdk:8-jdk-alpine

# Install Docker client
ARG DOCKER_VERSION=1.13.1
RUN apk --update --no-cache add tar curl git \
    && curl -fsSL https://get.docker.com/builds/Linux/x86_64/docker-$DOCKER_VERSION.tgz | tar --strip-components=1 -xz -C /usr/local/bin docker/docker

ARG COMPOSE_VERSION=1.11.2
RUN curl -L "https://github.com/docker/compose/releases/download/$COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
