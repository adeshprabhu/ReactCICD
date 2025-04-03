FROM hshar/webapp

RUN rm -rf /var/www/html

COPY ./index.html /var/www/html

FROM hshar/webapp

# Remove existing HTML files but keep the directory
RUN rm -rf /var/www/html/*

# Ensure /var/www/html exists before copying
RUN mkdir -p /var/www/html

# Copy the index.html file into the directory
ADD ./index.html /var/www/html/
