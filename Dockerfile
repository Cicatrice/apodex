ARG FOO_VERSION

################################################################################

FROM alpine AS build-foo5

RUN sleep 30
RUN echo this is version five | tee > /version

################################################################################

FROM alpine AS build-foo8

RUN echo this is version 8| tee > /version

################################################################################

FROM alpine AS build-foo13

RUN echo this is version XIII | tee > /version

################################################################################

ARG FOO_VERSION
ARG RC_VERSION="foo${FOO_VERSION}"
FROM build-${FOO_VERSION} AS test

RUN cat /version
