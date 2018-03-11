FROM node:alpine

RUN apk update && apk add bash && apk add curl

HEALTHCHECK --interval=10s --timeout=30s --start-period=30s --retries=3 CMD curl -f react:3000

EXPOSE 3000

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
