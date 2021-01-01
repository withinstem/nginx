FROM nginx:1.19.6

ENV NGINX_CONF=/etc/nginx-default
ENV NGINX_CONF_LN=/var/nginx/conf
ENV NGINX_HTML=/usr/share/nginx/html-default
ENV NGINX_HTML_LN=/var/www/html

WORKDIR /etc/nginx

RUN apt-get update && \
    apt-get install --no-install-recommends -y openssl

RUN mkdir -p /var/nginx && \
    mkdir -p /var/www && \
    mv /etc/nginx ${NGINX_CONF} && \
    ln -s ${NGINX_CONF} ${NGINX_CONF_LN} && \
    ln -s ${NGINX_CONF_LN} /etc/nginx && \
    mv /usr/share/nginx/html ${NGINX_HTML} && \
    ln -s ${NGINX_HTML} ${NGINX_HTML_LN} && \
    ln -s ${NGINX_HTML_LN} /usr/share/nginx/html

COPY tools/ops-revision/ops-revision /usr/bin/ops-revision
COPY bin/ /usr/bin/
COPY nginx/ /etc/nginx-default/
COPY html/ /usr/share/nginx/html-default/

VOLUME /var/nginx
VOLUME /var/www

ENTRYPOINT ["docker-entrypoint"]

CMD ["nginx", "-g", "daemon off;"]
