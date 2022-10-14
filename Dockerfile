FROM php:7.3-cli-alpine AS runtime

LABEL authors="DFAU Devs"

RUN apk add bash icu-dev && docker-php-ext-configure intl && docker-php-ext-install intl

FROM runtime AS vendor

WORKDIR /var/www/html

COPY composer.* ./
COPY --from=composer:2.4 /usr/bin/composer /usr/bin/composer

RUN composer install -a

FROM runtime

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/local/src/vendor/bin:/usr/sbin:/usr/bin:/sbin:/bin

COPY --from=vendor /var/www/html/vendor /usr/local/src/vendor
COPY wrappers/* /usr/local/bin/
COPY tools/typo3-typoscript-lint /usr/local/bin/
COPY ecs.php /usr/local/etc/
COPY phpstan.neon /usr/local/etc/