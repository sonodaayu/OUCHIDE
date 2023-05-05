#!/usr/bin/env bash
# exit on error
set -o errexit

bundle config set force_ruby_platform true
bundle install
yarn install
yarn build
bundle exec rake assets:precompile
bundle exec rails db:migrate
bundle exec rails db:seed
bundle exec rails assets:precompile
