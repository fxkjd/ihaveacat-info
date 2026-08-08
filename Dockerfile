FROM alpine:3.22 AS mdbook

ARG MDBOOK_VERSION=0.5.4
ARG TARGETARCH

RUN apk add --no-cache curl \
    && case "${TARGETARCH}" in \
        amd64) MDBOOK_TARGET="x86_64-unknown-linux-musl"; MDBOOK_SHA256="5222beabd3e37dc5be0d18ff99b79058469354db5c220153a1b92db5ba12be89" ;; \
        arm64) MDBOOK_TARGET="aarch64-unknown-linux-musl"; MDBOOK_SHA256="753e5c5c363ee8a56972344dcf91466f005a51db84a7aeffe427ae3ef83d6d44" ;; \
        *) echo "Unsupported architecture: ${TARGETARCH}" >&2; exit 1 ;; \
    esac \
    && curl --fail --location --silent --show-error \
        --output /tmp/mdbook.tar.gz \
        "https://github.com/rust-lang/mdBook/releases/download/v${MDBOOK_VERSION}/mdbook-v${MDBOOK_VERSION}-${MDBOOK_TARGET}.tar.gz" \
    && echo "${MDBOOK_SHA256}  /tmp/mdbook.tar.gz" | sha256sum -c - \
    && tar -xzf /tmp/mdbook.tar.gz -C /usr/local/bin

FROM alpine:3.22

COPY --from=mdbook /usr/local/bin/mdbook /usr/local/bin/mdbook

WORKDIR /book
COPY . .

EXPOSE 4000
CMD ["mdbook", "serve", "--hostname", "0.0.0.0", "--port", "4000"]
