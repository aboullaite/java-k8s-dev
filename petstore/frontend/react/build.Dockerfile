FROM node:12.2.0-alpine as build
WORKDIR /app
ENV PATH $PWD/node_modules/.bin:$PATH
COPY package.json /app/package.json
RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g --silent
COPY . /app
RUN npm run build

FROM nginx:1.16
EXPOSE 80
COPY --from=build $PWD/build /usr/share/nginx/html
COPY $PWD/.nginx-config /etc/nginx/conf.d/default.conf
