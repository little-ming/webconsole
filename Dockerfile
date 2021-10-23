FROM golang:1.8.3-alpine

MAINTAINER Eric Shi <shibingli@realclouds.org>
ADD . /go/
RUN cd /go/src/utils.club/utils/ && go install -v
RUN rm -Rf /go/src
EXPOSE 8080

CMD ["/go/bin/apibox","start"]