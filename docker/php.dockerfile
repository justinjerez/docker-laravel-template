FROM php:8.2.3-fpm

# Set working directory
WORKDIR /var/www/html

# Replace the user that this container uses to root
RUN sed -i "s/user = www-data/user = root/g" /usr/local/etc/php-fpm.d/www.conf
RUN sed -i "s/group = www-data/group = root/g" /usr/local/etc/php-fpm.d/www.conf
RUN echo "php_admin_flag[log_errors] = on" >> /usr/local/etc/php-fpm.d/www.conf

# Install extensions
RUN docker-php-ext-install pdo pdo_mysql

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Define username
USER root

# Start php-fpm server
CMD ["php-fpm", "-y", "/usr/local/etc/php-fpm.conf", "-R"]