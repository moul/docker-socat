FROM ubuntu:precise
MAINTAINER Manfred Touron "m@42.am"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq -y && \
    apt-get install -qq -y socat && \
    apt-get clean

EXPOSE 4242
ENTRYPOINT ["socat"]
CMD ["-h"]
