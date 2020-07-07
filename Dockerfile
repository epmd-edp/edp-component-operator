FROM alpine:3.11.6

ENV USER_UID=1001

RUN apk add --no-cache ca-certificates openssh-client

USER ${USER_UID}