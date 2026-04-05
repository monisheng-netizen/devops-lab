
FROM nginx:stable-alpine
RUN apk update && apk upgrade
COPY index.html /usr/share/nginx/html/index.html

