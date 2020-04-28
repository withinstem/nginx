FROM nginx:1.17.10

WORKDIR /etc/nginx/

COPY conf/html/ /usr/share/nginx/html/
COPY conf/nginx.conf nginx.conf
COPY conf/conf.d/ conf.d/
COPY conf/sites-available/ sites-available/
COPY conf/.htpasswd .htpasswd
COPY conf/sites-enabled.conf sites-enabled.conf

VOLUME /var/www/
