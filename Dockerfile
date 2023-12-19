FROM node:14-alpine as build
WORKDIR /capstoneproject
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

#multi stage docker file:
FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY --from=build /capstoneproject/build .
EXPOSE 80
CMD ["nginx", "-g","daemon off;"]
