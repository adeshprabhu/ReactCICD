FROM hshar/webapp

RUN rm /var/www/html/index.html

APP ./index.html /var/www/html

