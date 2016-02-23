FROM ruby:latest

RUN gem install arachni

EXPOSE 9292
VOLUME ["/arachni/system/arachni-ui-web/db"]
CMD ["arachni"]