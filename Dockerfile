FROM nginxinc/nginx-unprivileged:stable-alpine

ARG nginxfile nginx.dev.conf

RUN rm /etc/nginx/conf.d/default.conf
COPY $nginxfile /etc/nginx/conf.d
