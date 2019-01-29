FROM golang:1.11.5-stretch

RUN apt-get update \
 && apt-get install -y nodejs

RUN mkdir -p /go/src/github.com/lucasrenan/lucas-aws-lambda
ENV GOPATH /go

COPY . /go/src/github.com/lucasrenan/lucas-aws-lambda
WORKDIR /go/src/github.com/lucasrenan/lucas-aws-lambda