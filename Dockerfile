FROM nginxinc/nginx-unprivileged:stable-alpine

ENV NGINX_ENVSUBST_FILTER NADA_
ENV NGINX_ENVSUBST_OUTPUT_DIR=/tmp/nginx/conf.d
RUN mkdir -p /tmp/nginx/conf.d

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/templates/default.conf.template
