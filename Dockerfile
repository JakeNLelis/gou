FROM php:8.3-apache

ARG UNAME=www-data
ARG UGROUP=www-data
ARG UID=1000
ARG GID=1001
RUN usermod  --uid $UID $UNAME
RUN groupmod --gid $GID $UGROUP

# Modify the DirectoryIndex configuration
RUN echo "DirectoryIndex index.html index.php" >> /etc/apache2/apache2.conf

# Optional: enable .htaccess (if needed for your application)
RUN a2enmod rewrite
