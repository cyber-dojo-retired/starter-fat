FROM  cyberdojofoundation/visual-basic
LABEL maintainer=jon@jaggersoft.com

RUN apt-get update \
 && apt-get install --yes nunit-console

COPY red_amber_green.rb /usr/local/bin
