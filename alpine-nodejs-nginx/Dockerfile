ARG NODEJS_VERSION
ARG IMAGE_VERSION

FROM mhart/alpine-node:${NODEJS_VERSION}


RUN apk update && \
    apk add --update nginx && \
    mkdir -p /run/nginx && \
    mkdir -p /etc/nginx/sites-available && \
    mkdir -p /etc/nginx/sites-enabled && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log && \
    mv /etc/nginx/conf.d/* /etc/nginx/sites-available/ && \
    sed -i -e "s|include /etc/nginx/conf\.d/.*|include /etc/nginx/sites-enabled/*.conf;|" /etc/nginx/nginx.conf && \
    echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80 443

ENTRYPOINT ["nginx"]
