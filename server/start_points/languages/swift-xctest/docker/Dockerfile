FROM  cyberdojofoundation/swift
LABEL maintainer=byran@adgico.co.uk

RUN apt-get update \
 && apt install -y libcurl4-openssl-dev

COPY red_amber_green.rb /usr/local/bin
