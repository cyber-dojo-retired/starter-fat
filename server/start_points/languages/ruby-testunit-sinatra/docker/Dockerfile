FROM  cyberdojofoundation/ubuntu-build-essential:18.04
LABEL maintainer=jon@jaggersoft.com

RUN apt-get update \
 && apt-get install --yes ruby

RUN echo 'gem: --no-document' > ~/.gemrc
RUN gem install sinatra

COPY cyber-dojo-init.sh /usr/local/bin
RUN chmod +x /usr/local/bin/cyber-dojo-init.sh

COPY red_amber_green.rb /usr/local/bin

