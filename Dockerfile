FROM verdaccio/verdaccio:4

USER root
RUN npm i && npm install verdaccio-ldap

USER $VERDACCIO_USER_UID