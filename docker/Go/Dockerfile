FROM golang:1.24-alpine

# Install the required packages
RUN apk add --no-cache \
    git \
    curl \
    bash \
    ca-certificates \
    tzdata \
    build-base \
    sqlite-dev

# Install glibc з sgerrand repository
ENV GLIBC_VERSION=2.35-r1

RUN curl -Lo /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    curl -Lo glibc-2.35-r1.apk https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.35-r1/glibc-2.35-r1.apk && \
    apk add glibc-2.35-r1.apk && \
    rm glibc-2.35-r1.apk

# Enable CGO
ENV CGO_ENABLED=1 \
    GO111MODULE=on

# Create a user to run the server
RUN addgroup -g 1000 -S dev && \
    adduser -u 1000 -D -S -G dev dev

# Install Air
RUN go install github.com/air-verse/air@latest

# Working folder
WORKDIR /app

# Copy dependency files
# COPY ../goapp/go.mod ./goapp/go.sum ./
# RUN go mod download

# Copy all
# COPY ../goapp ./app

# Start through Air
CMD ["air"]
