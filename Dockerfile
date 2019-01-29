FROM golang:1.11.5-stretch

ENV GOPATH /go

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
 && apt-get install -y nodejs npm \
 && npm install -g serverless \
 && go get github.com/golang/dep

RUN mkdir -p /go/src/github.com/lucasrenan/lucas-aws-lambda

COPY . /go/src/github.com/lucasrenan/lucas-aws-lambda
WORKDIR /go/src/github.com/lucasrenan/lucas-aws-lambda