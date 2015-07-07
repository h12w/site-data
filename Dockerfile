FROM golang
MAINTAINER Hǎiliàng Wáng <w@h12.me>

ENV SITE /go/src/site
COPY . $SITE
RUN cd $SITE           && \
    go get -u -v ./... && \
    go install

WORKDIR $SITE
ENTRYPOINT [ "site" ]
