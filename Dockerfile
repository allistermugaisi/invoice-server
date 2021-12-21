FROM node:16-slim

WORKDIR /usr/src/app

COPY ./package.json ./
COPY ./yarn.lock ./

RUN yarn global add html-pdf
RUN yarn link --link html-pdf
RUN yarn link --link phantomjs-prebuilt
RUN yarn install

COPY . .

EXPOSE 5000

CMD ["yarn","start"]