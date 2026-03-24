
FROM nginx:stable
RUN apt-get update && apt-get upgrade -y && apt-get clean && rm -rf /var/lib/apt/lists/*
COPY index.html /usr/share/nginx/html/index.html

