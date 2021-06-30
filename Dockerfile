FROM node:16-alpine

RUN apk add --no-cache python3 \
  py3-pip

# We could upgrade npm to latest here, which will avoid any
# upgrade notices while using the npm command
#
# npm install -g npm
RUN mkdir /scripts

COPY ./docker/sync /opt/skillerwhale_sync/
COPY ./docker/lib /opt/skillerwhale_sync/lib

WORKDIR /exercises

ENV PATH="$PATH:/opt/skillerwhale_sync"

CMD ["python3", "/opt/skillerwhale_sync/sync"]
