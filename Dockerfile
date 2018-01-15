FROM xennis/alpine

ARG VERSION_ALPINE=8.151.12-r0
ARG VERSION_MAJOR=8

ENV LANG="C.UTF-8" \
    JAVA_HOME="/usr/lib/jvm/java-1.${VERSION_MAJOR}-openjdk" \
    PATH="${PATH}:${JAVA_HOME}/bin"

RUN apk --no-cache --update upgrade \
    && apk --no-cache add openjdk${VERSION_MAJOR}=${VERSION_ALPINE}
