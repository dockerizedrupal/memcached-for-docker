# docker-memcached

A Docker image for [Memcached](http://memcached.org/) that is used in the [Dockerized Drupal](https://dockerizedrupal.com/) project.

## Run the container

    CONTAINER="memcached" && sudo docker run \
      --name "${CONTAINER}" \
      -h "${CONTAINER}" \
      -p 11211:11211 \
      -p 11211:11211/udp \
      -e TIMEZONE="Etc/UTC" \
      -e CACHESIZE="512" \
      -e MAX_CONNECTIONS="1024" \
      -e THREADS="4" \
      -e MAX_ITEM_SIZE="16m" \
      -e VERBOSITY="" \
      -d \
      dockerizedrupal/memcached:1.1.0

## Build the image

    TMP="$(mktemp -d)" \
      && git clone https://github.com/dockerizedrupal/docker-memcached.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout 1.1.0 \
      && sudo docker build -t dockerizedrupal/memcached:1.1.0 . \
      && cd -

## Changing the container behaviour on runtime through environment variables

    // TODO

## License

**MIT**
