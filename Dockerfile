FROM sagebind/nginx


RUN apk --no-cache add nginx && \
    addgroup nginx srv && \
    mv /var/lib/nginx/html /srv/www && \
    chown -R nginx:srv /srv/www

COPY root /

WORKDIR /srv/www

EXPOSE 80 443
