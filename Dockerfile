FROM h12w/sited:latest
MAINTAINER Hǎiliàng Wáng <w@h12.me>

COPY public      $SITE/public
COPY config.yaml $SITE
