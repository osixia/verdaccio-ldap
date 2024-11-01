FROM verdaccio/verdaccio:5 as builder
USER root
ENV NODE_ENV=production

RUN apk add --no-cache alpine-sdk python3
RUN npm i --global-style verdaccio-ldap

FROM verdaccio/verdaccio:5
COPY --from=builder --chown=$VERDACCIO_USER_UID:root /opt/verdaccio/node_modules/verdaccio-ldap /verdaccio/plugins/verdaccio-ldap