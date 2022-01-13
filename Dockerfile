FROM wordpress:5.7.1-php7.3-apache

RUN set -x \
  && apt-get update \
  && apt-get install -y libldap2-dev \
  && rm -rf /var/lib/apt/lists/* \
  && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ \
  && docker-php-ext-install ldap
