# docker-memcached

A [Docker](https://docker.com/) container for [Memcached](http://memcached.org/).

## Run the container

Using the `docker` command:

    CONTAINER="memcached" && sudo docker run \
      --name "${CONTAINER}" \
      -h "${CONTAINER}" \
      -p 11211:11211 \
      -p 11211:11211/udp \
      -e CACHESIZE="512" \
      -e MAX_CONNECTIONS="1024" \
      -e THREADS="4" \
      -e MAX_ITEM_SIZE="16m" \
      -e VERBOSITY="v" \
      -d \
      viljaste/memcached:latest
      
Using the `docker-compose` command

    TMP="$(mktemp -d)" \
      && GIT_SSL_NO_VERIFY=true git clone https://git.beyondcloud.io/viljaste/docker-memcached.git "${TMP}" \
      && cd "${TMP}" \
      && sudo docker-compose up

## Build the image

    TMP="$(mktemp -d)" \
      && GIT_SSL_NO_VERIFY=true git clone https://git.beyondcloud.io/viljaste/docker-memcached.git "${TMP}" \
      && cd "${TMP}" \
      && sudo docker build -t viljaste/memcached:latest . \
      && cd -

## License

**MIT**
