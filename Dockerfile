FROM alpine:3.8
RUN apk update && apk add curl bash tree tzdata \
    && cp -r -f /usr/share/zoneinfo/Hongkong /etc/localtime \
    && echo -ne "Alpine Linux 3.8 image. (`uname -rsv`)\n" >> /root/.built
