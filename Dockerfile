FROM alpine:latest

HEALTHCHECK --interval=2s --timeout=30s --start-period=5s --retries=3 CMD [ "curl -s -o /dev/null -w '%{http_code}' localhost:3000" ] || exit 1
