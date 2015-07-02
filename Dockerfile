FROM golang
MAINTAINER Hǎiliàng Wáng <w@h12.me>

ENV SITE /go/src/site
COPY . $SITE
RUN cd $SITE        && \
    go get ./...    && \
    go install

ENTRYPOINT [ "site" ]
