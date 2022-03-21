FROM verdaccio/verdaccio:5

USER root
RUN npm i && npm install verdaccio-ldap

USER $VERDACCIO_USER_UID