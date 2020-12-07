FROM rust:1.48

RUN apt-get update && apt-get install -y musl-tools
RUN rustup target add i686-unknown-linux-musl
RUN mkdir /build
COPY build.sh .
CMD ./build.sh
