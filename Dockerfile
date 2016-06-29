FROM fabianmartin/php7-cli

RUN apt-get update -yqq \
	&& apt-get install -yqq git curl \
	&& rm -rf /var/lib/apt/lists/* \
	&& curl -sS https://getcomposer.org/installer | php \
	&& mv composer.phar /usr/local/bin/composer \
	&& apt-get purge -yqq --auto-remove curl
