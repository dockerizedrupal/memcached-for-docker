# memcached-for-docker

A Docker image for [Memcached](http://memcached.org/).

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
      dockerizedrupal/memcached:2.0.0

## Build the image

    TMP="$(mktemp -d)" \
      && git clone https://github.com/dockerizedrupal/memcached-for-docker.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout 2.0.0 \
      && sudo docker build -t dockerizedrupal/memcached:2.0.0 . \
      && cd -

## License

**MIT**
