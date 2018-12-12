FROM  cyberdojo/starter
LABEL maintainer=jon@jaggersoft.com

ARG    STARTER_HOME=/app
COPY . ${STARTER_HOME}

ARG SHA
RUN echo ${SHA} > ${STARTER_HOME}/sha.txt
