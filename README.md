# docker-texlive-ja

## Docker Hub

[https://hub.docker.com/r/unicatflower/docker-texlive-ja]()

```sh
docker pull unicatflower/docker-texlive-ja:latest
```

## Quick Start

 Go to the directory where the `tex` file you want to compile is located.


```sh

# e.g.) example/example.tex

cd example

docker run --rm -w /work -v $(pwd):/work unicatflower/docker-texlive-ja:latest bash -c "ptex2pdf -l example.tex"

```

## Build Docker Image

```
git clone https://github.com/Chatyusha/docker-texlive-ja.git

cd docker-texlive-ja

docker build . -t texlive-ja:latest

```

