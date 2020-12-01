FROM nginx:latest
ADD . /usr/share/nginx/html
EXPOSE 8080
