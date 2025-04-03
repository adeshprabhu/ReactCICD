FROM hshar/webapp

RUN rm -rf /var/www/html

ADD ./index.html /var/www/html

