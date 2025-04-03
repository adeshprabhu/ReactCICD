FROM hshar/webapp

RUN rm /var/www/html

ADD ./index.html /var/www/html

