FROM node:7.8.0

ENV NPM_CONFIG_LOGLEVEL warn
COPY package.json package.json
COPY npm-shrinkwrap.json npm-shrinkwrap.json
RUN npm install
RUN mkdir /app
WORKDIR /app
CMD yarn dev
EXPOSE 5000

