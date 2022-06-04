FROM alpine:latest

ENV user=user
ENV pass=pass
ENV port=23

RUN apk add gcc build-base &&                                                          \
    wget http://www.win-test.com/hq05/tunnel/server/src/version-2.4.2/wtTunnelSrv.c && \
    gcc -o wtTunnelSrv wtTunnelSrv.c


EXPOSE ${port}

CMD ["sh", "-c", "./wtTunnelSrv 23 ${user} ${pass}"]
