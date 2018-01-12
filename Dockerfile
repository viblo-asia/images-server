FROM thangtd90/nginx-plus

RUN rm /etc/nginx/conf.d/default.conf \
    && rm -r /etc/nginx/sites-enabled \
    && rm /etc/nginx/conf.d/upstream.conf

ADD nginx.conf /etc/nginx/nginx.conf
ADD images.conf /etc/nginx/images.conf
ADD entrypoint.sh /entrypoint.sh

VOLUME [ "/var/www" ]

ENTRYPOINT [ "/entrypoint.sh" ]

EXPOSE 80
