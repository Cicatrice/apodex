FROM alpine AS build-foo-$FOO_VERSION

RUN echo this is $FOO_VERSION

######

FROM build-foo-$FOO_VERSION AS test-$FOO_VERSION

RUN true

