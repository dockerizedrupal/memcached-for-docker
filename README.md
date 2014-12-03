# docker-memcached

A [Docker](https://docker.com/) container for [Memcached](http://memcached.org/).

## Memcached (DEVELOPMENT BRANCH)

### Run the container

Using the `docker` command:

    CONTAINER="memcached" && sudo docker run \
      --name "${CONTAINER}" \
      -h "${CONTAINER}" \
      -p 11211:11211 \
      -p 11211:11211/udp \
      -e MEMORY="64" \
      -d \
      simpledrupalcloud/memcached:dev
      
Using the `fig` command

    TMP="$(mktemp -d)" \
      && git clone http://git.simpledrupalcloud.com/simpledrupalcloud/docker-memcached.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout dev \
      && sudo fig up

### Build the image

    TMP="$(mktemp -d)" \
      && git clone http://git.simpledrupalcloud.com/simpledrupalcloud/docker-memcached.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout dev \
      && sudo docker build -t simpledrupalcloud/memcached:dev . \
      && cd -

## License

**MIT**
