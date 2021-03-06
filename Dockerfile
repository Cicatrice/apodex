ARG FOO_VERSION
ARG BAR_VERSION
ARG RC_VERSION="foo${FOO_VERSION}"

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

FROM build-${RC_VERSION} AS test
COPY ./scripts/install.sh /scripts/install.sh
RUN chmod +x /scripts/install.sh && /scripts/install.sh BAR ${BAR_VERSION}
RUN cat /version
