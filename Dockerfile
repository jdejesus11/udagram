FROM node:13-alpine as build
WORKDIR /app
COPY *.json /app/
RUN npm install -g ionic
RUN npm install
COPY ./ /app/
RUN npm run build

FROM nginx:alpine
COPY --from=build /app/www/ /usr/share/nginx/html/

