ARG NODE_VERSION

FROM node:$NODE_VERSION-alpine

WORKDIR /var/www/html

RUN yarn global add netlify-cli
RUN export PATH="$(yarn global bin):$PATH"

CMD sh ./start.sh
