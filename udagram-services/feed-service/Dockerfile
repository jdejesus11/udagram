FROM node:13 AS base

ENV NODE_ENV=PROD
ENV POSTGRES_USERNAME=udagram
ENV POSTGRES_PASSWORD=Dragon1234
ENV POSTGRES_HOST=udagram.ck9glbuovftc.us-west-2.rds.amazonaws.com
ENV POSTGRES_DB=udagram
ENV AWS_BUCKET=udagram-396242104882-dev
ENV AWS_REGION=us-west-2
ENV AWS_PROFILE=default
ENV JWT_SECRET=#@.Dragon.#
ENV PORT=5000



WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

EXPOSE 5000
CMD ["npm","run", "start"]