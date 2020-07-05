FROM alpine

MAINTAINER 11@qq.com

RUN apk add --no-cache git

WORKDIR src 

ADD . .

RUN export git-branch = $(git rev-parse --short HEAD) 

CMD echo $git-branch
