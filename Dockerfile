ARG VERSION=14.18.2
FROM  node:$VERSION-alpine
LABEL maintainer="Daniel Le <thanhlcm90@gmail.com>"

# Install dumb-init
ADD https://github.com/Yelp/dumb-init/releases/download/v1.1.1/dumb-init_1.1.1_amd64 /usr/local/bin/dumb-init

# Update latest npm
RUN npm install -g npm@7.20.1

RUN chmod +x /usr/local/bin/dumb-init && \
    chown -R node:node /usr/local