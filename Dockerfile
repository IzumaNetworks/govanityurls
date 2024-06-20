FROM golang:1.20
LABEL org.opencontainers.image.source=https://github.com/IzumaNetworks/govanityurls

ADD . /app
ENV CGO_ENABLED=0
RUN cd /app && go build .
WORKDIR /app
EXPOSE 8080
ENTRYPOINT [ "/app/govanityurls" ]