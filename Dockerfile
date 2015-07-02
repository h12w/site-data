FROM golang
MAINTAINER Hǎiliàng Wáng <w@h12.me>

COPY . /site
RUN cd /site        && \
    go get ./...    && \
    go build -o run

ENTRYPOINT [ "/site/run" ]
