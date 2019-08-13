FROM alpine:latest
MAINTAINER "Jason van Zyl" <jason@vanzyl.ca>

RUN addgroup -g 456 concord
RUN adduser -D concord -G concord

# We need the standard certs in order to connect over TLS with the world
RUN apk update
RUN apk add ca-certificates
RUN rm -rf /var/cache/apk/*

# Run as the concord user
USER concord
