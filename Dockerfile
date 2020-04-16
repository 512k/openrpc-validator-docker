FROM node:10-alpine

LABEL \
    org.label-schema.name="openrpc-validator" \
    org.label-schema.description="CLI open-rpc validator" \
    org.label-schema.url="https://github.com/512k/openrpc-validator-docker" \
    org.label-schema.vcs-url="https://github.com/512k/openrpc-validator-docker" \
    org.label-schema.license="MIT" \
    org.label-schema.schema-version="1.0"

USER node:node
WORKDIR /home/node
COPY --chown=node ./package.json .
RUN npm install

COPY --chown=node ./openrpc-validator.js .
RUN /home/node/openrpc-validator.js --version

ENTRYPOINT ["/home/node/openrpc-validator.js"]
