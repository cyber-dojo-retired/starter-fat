FROM  cyberdojofoundation/ruby
LABEL maintainer=jon@jaggersoft.com

RUN gem install --no-rdoc --no-ri \
  rspec \
  shoulda \
  cucumber

COPY red_amber_green.rb /usr/local/bin
