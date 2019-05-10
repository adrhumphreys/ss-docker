FROM brettt89/php7.1-fpm:alpine
# RUN pecl install xdebug-2.7.2 \
#     && docker-php-ext-enable xdebug

# Fix permissions when using Windows / Mac file sync.
RUN apk --no-cache add shadow && \
  usermod -u 1000 www-data
#RUN usermod -u 1000 www-data && \
#  usermod -G staff www-data