# ihaveacat-info

List of interesting Posts/Notes/Tools/Resources in general I found in the wild.

You can find the mdBook here: [info.ihavea.cat](https://info.ihavea.cat).

## Local development

Install [mdBook](https://rust-lang.github.io/mdBook/guide/installation.html), then run:

```sh
mdbook serve --open
```

To create a static build in `book/`:

```sh
mdbook build
```

Alternatively, build and serve the book with Docker:

```sh
docker build -t ihaveacat-info .
docker run --rm -p 4000:4000 ihaveacat-info
```

The book will be available at <http://localhost:4000>.
