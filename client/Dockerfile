FROM  cyberdojo/rack-base
LABEL maintainer=jon@jaggersoft.com

# - - - - - - - - - - - - - - -
# setup client
# - - - - - - - - - - - - - - -

ARG CYBER_DOJO_HOME
COPY . ${CYBER_DOJO_HOME}
RUN  chown -R nobody:nogroup ${CYBER_DOJO_HOME}
USER nobody

ARG PORT
EXPOSE ${PORT}
ENV PORT=${PORT}

CMD [ "./up.sh" ]
