FROM golang
MAINTAINER Hǎiliàng Wáng <w@h12.me>

COPY . /
RUN go get github.com/hailiang/site/serve
RUN go build -o site

ENTRYPOINT [ "site" ]
