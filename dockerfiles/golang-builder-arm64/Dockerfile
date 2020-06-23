FROM ubuntu:xenial

# gcc for cgo
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    ca-certificates \
  && rm -rf /var/lib/apt/lists/*

COPY ./golang-linux/go*.linux-arm64.tar.gz /go.linux-arm64.tgz

RUN tar -C /usr/local -xzf /go.linux-arm64.tgz \
  && rm /go.linux-arm64.tgz

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH


RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH
