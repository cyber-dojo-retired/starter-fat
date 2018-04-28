FROM  cyberdojofoundation/javascript-node_cucumber
LABEL maintainer=jon@jaggersoft.com

# reinstall npm. See https://github.com/npm/npm/issues/14232
# RUN rm -rf /usr/local/lib/node_modules/npm
# RUN n latest

# Jasmine is the default unit testing framework
RUN npm install --global jasmine

COPY red_amber_green.rb /usr/local/bin
