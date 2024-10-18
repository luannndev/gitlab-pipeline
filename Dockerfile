FROM ruby:3.2.2-bullseye

WORKDIR /gitlab_pipeline
COPY GemFile Gemfile.lock ./
RUN bundle install
COPY bin/ bin/
COPY lib/ lib/

ENV BUNDLE_GEMFILE=/gitlab_pipeline/Gemfile
ENTRYPOINT ["bundle", "exec", "ruby"]