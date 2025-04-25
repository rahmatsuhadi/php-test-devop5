FROM php:8.0-apache

RUN docker-php-ext-install mysqli

# mod_rewrite untuk Apache
RUN a2enmod rewrite

# Salin file ke container
COPY db-test.php /var/www/html/

# Set permissions untuk folder html
RUN chown -R www-data:www-data /var/www/html
