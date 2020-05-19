FROM node:latest

HEALTHCHECK --interval=10s --timeout=30s --start-period=30s --retries=3 CMD curl -f localhost:3000

EXPOSE 3000

VOLUME /app

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
