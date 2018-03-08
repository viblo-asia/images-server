FROM nginx:stable

RUN apt-get update && apt-get install -y libpq5

ENV WORKER_PROCESSES 2

COPY modules/ngx_postgres_module.so /etc/nginx/modules/ngx_postgres_module.so
COPY modules/ngx_http_eval_module.so /etc/nginx/modules/ngx_http_eval_module.so

COPY conf.templates /etc/nginx/conf.templates

COPY images.conf /etc/nginx/images.conf
COPY entrypoint.sh /entrypoint.sh

VOLUME [ "/var/www", "/data" ]

ENTRYPOINT [ "/entrypoint.sh" ]

EXPOSE 80
