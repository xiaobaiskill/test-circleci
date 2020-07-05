FROM alpine

MAINTAINER 11@qq.com

RUN apk add --no-cache git

WORKDIR src 

ADD . .

CMD echo "$(git rev-parse --abbrev-ref HEAD)"