FROM ekidd/rust-musl-builder:stable  as builder

RUN USER=root cargo new --bin cuarto
WORKDIR ./cuarto
COPY ./Cargo.toml ./Cargo.toml
RUN cargo build --release
RUN rm src/*.rs

ADD . ./

RUN rm ./target/x86_64-unknown-linux-musl/release/deps/cuarto*
RUN cargo build --release

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /home/rust/src/cuarto/target/x86_64-unknown-linux-musl/release/cuarto  .
CMD ["./cuarto"]
