FROM hshar/webapp

# Install Apache (if not already installed)
RUN apt update && apt install -y apache2

# Remove existing web files
RUN rm -rf /var/www/html/*

# Ensure the directory exists
RUN mkdir -p /var/www/html

# Copy index.html into the container
COPY index.html /var/www/html/

# Expose Apache's default port
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
