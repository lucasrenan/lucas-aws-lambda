FROM golang:1.11.5-stretch

RUN mkdir -p /go/src/github.com/lucasrenan/lucas-aws-lambda
ENV GOPATH /go
WORKDIR /go/src/github.com/lucasrenan/lucas-aws-lambda