# ----------------------------------
# Pterodactyl Statping-ng
# ----------------------------------
FROM adamboutcher/statping-ng

MAINTAINER GoudronViande24, <thomas@artivain.com>

RUN apk add --no-cache bash curl
ENV HOST 0.0.0.0
ENV STATPING_DIR /home/container

RUN adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
