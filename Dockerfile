FROM xennis/alpine:3.6
ENV LANG="C.UTF-8" \
    JAVA_HOME="/usr/lib/jvm/java-1.8-openjdk" \
    PATH="${PATH}:${JAVA_HOME}/bin"
RUN apk add --no-cache --update openjdk8=8.131.11-r2
