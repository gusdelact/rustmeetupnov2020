FROM rust:1.31 as builder

WORKDIR /usr/src/myapp
COPY . .

RUN cargo install --path .

FROM debian:buster-slim
COPY --from=builder /usr/local/cargo/bin/tercero /usr/local/bin/tercero
CMD ["tercero"]
