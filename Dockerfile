FROM golang:1.9.2

RUN apt-get update
RUN apt-get install unzip libopus-dev -y

RUN wget https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip
RUN unzip protoc-3.5.1-linux-x86_64.zip -d /protoc

#GFW
RUN go get -u google.golang.org/grpc
RUN go get -u github.com/stretchr/testify/assert github.com/gorilla/mux  github.com/golang/protobuf/protoc-gen-go
