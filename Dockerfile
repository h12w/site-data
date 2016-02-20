FROM golang
MAINTAINER Hǎiliàng Wáng <w@h12.me>

ENV SITE /go/src/site

COPY main.go $SITE/main.go
COPY public  $SITE/public

RUN cd $SITE        && \
    go get -v ./... && \
    go install

WORKDIR $SITE
ENTRYPOINT [ "site" ]
