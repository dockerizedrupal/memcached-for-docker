# docker-memcached

A [Docker](https://docker.com/) container for [Memcached](http://memcached.org/).

## Memcached (STABLE BRANCH)

### Run the container

Using the `docker` command:

    CONTAINER="memcached" && sudo docker run \
      --name "${CONTAINER}" \
      -h "${CONTAINER}" \
      -d \
      simpledrupalcloud/memcached:latest
      
Using the `fig` command

    TMP="$(mktemp -d)" \
      && git clone http://git.simpledrupalcloud.com/simpledrupalcloud/docker-memcached.git "${TMP}" \
      && cd "${TMP}" \
      && fig up

### Build the image

    TMP="$(mktemp -d)" \
      && git clone http://git.simpledrupalcloud.com/simpledrupalcloud/docker-memcached.git "${TMP}" \
      && cd "${TMP}" \
      && sudo docker build -t simpledrupalcloud/memcached:latest . \
      && cd -

## License

**MIT**
