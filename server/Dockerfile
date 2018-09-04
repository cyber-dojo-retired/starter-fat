FROM  cyberdojo/rack-base
LABEL maintainer=jon@jaggersoft.com

# - - - - - - - - - - - - - - -
# setup server
# - - - - - - - - - - - - - - -

ARG                            STARTER_HOME=/app
COPY .                       ${STARTER_HOME}
RUN  chown -R nobody:nogroup ${STARTER_HOME}
USER nobody

EXPOSE 4527
CMD [ "./up.sh" ]
