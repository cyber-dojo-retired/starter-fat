FROM  cyberdojo/rack-base
LABEL maintainer=jon@jaggersoft.com

# - - - - - - - - - - - - - - -
# setup server
# - - - - - - - - - - - - - - -

ARG CYBER_DOJO_HOME
COPY . ${CYBER_DOJO_HOME}
RUN  chown -R nobody:nogroup ${CYBER_DOJO_HOME}
USER nobody

ARG PORT
EXPOSE ${PORT}
ENV PORT=${PORT}

ARG CYBER_DOJO_START_POINTS_ROOT
ENV CYBER_DOJO_START_POINTS_ROOT=${CYBER_DOJO_START_POINTS_ROOT}

CMD [ "./up.sh" ]
