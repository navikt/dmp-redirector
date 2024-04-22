FROM nginxinc/nginx-unprivileged:stable-alpine

ENV NGINX_ENVSUBST_FILTER NADA_

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/templates/default.conf.template
