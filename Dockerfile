FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.4.0

RUN gem install bitpay-client --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bitpay"]
CMD ["--help"]
