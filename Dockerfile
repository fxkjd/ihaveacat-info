FROM rust:1.88-alpine AS builder

RUN apk add --no-cache musl-dev \
    && cargo install mdbook --version "=0.5.4" --locked

FROM alpine:3.22

COPY --from=builder /usr/local/cargo/bin/mdbook /usr/local/bin/mdbook

WORKDIR /book
COPY . .

EXPOSE 4000
CMD ["mdbook", "serve", "--hostname", "0.0.0.0", "--port", "4000"]
