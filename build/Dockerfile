FROM registry.access.redhat.com/ubi8/ubi-minimal:latest

ENV OPERATOR=/usr/local/bin/edp-component-operator \
    USER_UID=1001 \
    USER_NAME=edp-component-operator

# install operator binary
COPY build/_output/bin/edp-component-operator ${OPERATOR}

COPY build/bin /usr/local/bin
RUN  /usr/local/bin/user_setup

ENTRYPOINT ["/usr/local/bin/entrypoint"]

USER ${USER_UID}
