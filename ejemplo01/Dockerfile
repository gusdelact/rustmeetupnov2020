FROM rust:1.31

WORKDIR /usr/src/myapp
COPY gatito.rs .

RUN rustc gatito.rs

CMD ["./gatito"]
