FROM node:16-alpine

RUN apk add --no-cache python3 \
  py3-pip

RUN npm install -g npm
RUN mkdir /session

COPY ./docker/sync /opt/skillerwhale_sync/
COPY ./docker/lib /opt/skillerwhale_sync/lib

WORKDIR /session/exercises
RUN ln -s /root/.ash_history /session/.command_history

ENV PATH="$PATH:/opt/skillerwhale_sync"

CMD > /root/.ash_history && python3 /opt/skillerwhale_sync/sync
