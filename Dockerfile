FROM aiyara/alpine:3.2

MAINTAINER Chanwit Kaewkasi <chanwit@gmail.com> 

EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 53 53/udp

ADD consul /bin/consul
RUN mkdir /data && chmod +x /bin/consul

ENTRYPOINT ["/bin/consul"]

