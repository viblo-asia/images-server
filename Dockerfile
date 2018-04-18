FROM nginx:alpine

ENV WORKER_PROCESSES 2
ENV IMAGINARY_HOST http://image-resizer

COPY conf.templates /etc/nginx/conf.templates

COPY entrypoint.sh /entrypoint.sh

VOLUME [ "/var/www", "/data" ]

ENTRYPOINT [ "/entrypoint.sh" ]

EXPOSE 80
