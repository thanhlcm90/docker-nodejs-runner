ARG VERSION=22.11.0
FROM  node:$VERSION-alpine
LABEL maintainer="Daniel Le <thanhlcm90@gmail.com>"

# Install dumb-init
ADD https://github.com/Yelp/dumb-init/releases/download/v1.1.1/dumb-init_1.1.1_amd64 /usr/local/bin/dumb-init

RUN chmod +x /usr/local/bin/dumb-init && \
    chown -R node:node /usr/local