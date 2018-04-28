FROM  cyberdojofoundation/javascript-node_assert
LABEL maintainer=jon@jaggersoft.com

# reinstall npm. See https://github.com/npm/npm/issues/14232
RUN rm -rf /usr/local/lib/node_modules/npm
RUN n latest

WORKDIR /usr/local/lib/node_modules
RUN npm install jsdom
RUN npm install jquery
ENV NODE_PATH /usr/local/lib/node_modules
