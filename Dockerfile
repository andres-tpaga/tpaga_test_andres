FROM ruby:2.4.10

RUN apt-get update -qq \
    && apt-get install -y \
      bzip2 \
      curl \
      postgresql \
      nodejs \
      vim

RUN mkdir /tpaga_test
WORKDIR /tpaga_test

COPY Gemfile /tpaga_test/Gemfile
COPY Gemfile.lock /tpaga_test/Gemfile.lock
RUN gem install bundler -v 2.1.4
RUN bundle install
COPY . /tpaga_test

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]