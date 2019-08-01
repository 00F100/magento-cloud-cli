FROM php:7.2-cli

COPY entrypoint.sh /usr/local/bin

ARG USER_ID=1000

RUN apt-get update && apt-get install -y \
    build-essential \
    locales \
    zip \
    unzip \
    git \
    curl \
    mcrypt \
    libmcrypt-dev \
    zlib1g-dev \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    jpegoptim optipng pngquant gifsicle \
    libxml2-dev \
    && mkdir -p /var/www/html \
    && apt-get clean && rm -rf /var/lib/apt/lists/* \
    && yes '' | pecl install -f mcrypt-1.0.2 \
    && docker-php-ext-enable mcrypt \
    && docker-php-ext-install bcmath dom intl json mbstring pdo_mysql xml zip \
    && docker-php-ext-configure gd --with-gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/ \
    && docker-php-ext-install gd \
    && useradd -d /var/www -m -u $USER_ID -s /bin/bash phpcli \
    && curl -sS https://accounts.magento.cloud/cli/installer | php \
    && mv /root/.bashrc /var/www/ \
    && sed -i 's/\/root/\/var\/www\//g' /var/www/.bashrc \
    && mv /root/.magento-cloud/ /var/www/.magento-cloud \
    && chown phpcli:phpcli -R /var/www \
    && chmod +x /usr/local/bin/entrypoint.sh

ENV PATH "/var/www/.magento-cloud/bin:$PATH"

WORKDIR /var/www/html

VOLUME /var/www/html

CMD ["entrypoint.sh"]