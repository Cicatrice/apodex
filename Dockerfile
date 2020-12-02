################################################################################

FROM alpine AS build-foo5

RUN echo this is $FOO_VERSION | tee > /version

################################################################################

FROM alpine AS build-foo8

RUN echo this is $FOO_VERSION | tee > /version

################################################################################

FROM alpine AS build-foo13

RUN echo this is $FOO_VERSION | tee > /version

################################################################################

FROM build-foo${FOO_VERSION} AS test

RUN cat /version

