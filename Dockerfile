FROM golang
MAINTAINER Hǎiliàng Wáng <w@h12.me>

RUN go get github.com/hailiang/site/serve
COPY . /site
RUN cd /site && \
    go build -o run

ENTRYPOINT [ "/site/run" ]
